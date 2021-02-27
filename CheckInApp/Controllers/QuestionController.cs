using CheckInApp.Helpers;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]
    public class QuestionController : Controller
    {
        private dbEntities db = new dbEntities();
        // GET: Question
        public ActionResult Index()
        {
            var qi = db.QuestionInfors.Where(x=>x.Status == true).ToList();
            List<QuestionViewModel> tvm = qi.Select(t => new QuestionViewModel()
            {
                ID = t.ID,
                QuestionContent = t.QuestionContent,
                Choose1 = t.Choose1,
                Choose2 = t.Choose2,
                Choose3 = t.Choose3,
                Choose4 = t.Choose4,
                TrueChoose = t.TrueChoose,
                Datetime = t.Datetime.GetValueOrDefault()
            }).ToList();
            return View(tvm);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View("create");
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CreateQuestionModel tcvm)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    if (tcvm.file != null)
                    {
                        BaseImporter baseImport = new BaseImporter();
                        List<QuestionImportModel> list = baseImport.ToList(UploadFileToServer(tcvm.file, true), true).ToList();
                        List<QuestionImportModel> ListDataExport = new List<QuestionImportModel>();
                        IList<QuestionInfor> QuestionList = new List<QuestionInfor>();
                        foreach (QuestionImportModel item in list)
                        {
                            QuestionList.Add(new QuestionInfor
                            {
                                CatID = 1,
                                LevelID = 1,
                                QuestionContent = item.QuestionContent,
                                TrueChoose = item.TrueChoose,
                                Choose1 = item.Choose1,
                                Choose2 = item.Choose2,
                                Choose3 = item.Choose3,
                                Choose4 = item.Choose4,
                                Datetime = DateTime.Today,
                                Status = true,
                            });
                        }
                        db.QuestionInfors.AddRange(QuestionList);
                        db.SaveChanges();
                    }
                    else
                    {
                        ModelState.AddModelError("message", "Tải file câu hỏi !!");
                        return View();
                    }

                }
                catch (Exception)
                {
                    ModelState.AddModelError("message", "Import câu hỏi thất bại !!");
                    return View();
                }
                ModelState.AddModelError("message", "Import câu hỏi thành công!!");

                TempData["Success"] = "Added Successfully!";
                return View();
            }
            return View();
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var t = db.QuestionInfors.Find(id);
            if (t == null)
            {
                return HttpNotFound();
            }
            return View(t);
        }

        // POST: Course/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            var ccrecord = db.QuestionInfors.FirstOrDefault(x => x.ID == id);
            db.QuestionInfors.Remove(ccrecord);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
        public ActionResult DownloadFileTemplates()
        {
            FileStream stream = new FileStream(HttpContext.Server.MapPath(@"~/Content/Template/TemplateImportQuestion.xlsx"), FileMode.Open, FileAccess.Read);
            return File(stream, "text/comma-separated-values", "Download.xlsx");
        }
        public static string UploadFileToServer(HttpPostedFileBase attachment, bool isDelete = false)
        {
            Stream sourceStream = attachment.InputStream;
            string filePath = System.Web.HttpContext.Current.Request.PhysicalApplicationPath + @"~\..\App_Data\FileUploads";
            filePath = filePath + "\\" + attachment.FileName;
            if (isDelete)
            {
                try
                {
                    if (System.IO.File.Exists(filePath))
                    {
                        System.IO.File.Delete(filePath);
                    }
                }
                catch
                {
                    filePath = Path.GetDirectoryName(filePath) + "\\" + Path.GetFileNameWithoutExtension(filePath) + "_" + Guid.NewGuid() + Path.GetExtension(filePath);
                }
            }
            using (FileStream targetStream = new FileStream(filePath, FileMode.Create, FileAccess.Write, FileShare.None))
            {
                const int bufferLen = 65000;
                byte[] buffer = new byte[bufferLen];
                int count;
                while ((count = sourceStream.Read(buffer, 0, bufferLen)) > 0)
                {
                    targetStream.Write(buffer, 0, count);
                }
                targetStream.Close();
                sourceStream.Close();
            }
            return filePath;
        }
    }
}