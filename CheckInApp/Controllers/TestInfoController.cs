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
    public class TestInfoController : Controller
    {
        private dbEntities db = new dbEntities();
        // GET: Question
        public ActionResult Index()
        {
            var qi = db.TestInfors.ToList();
            List<TestInfoListModel> tvm = qi.Select(t => new TestInfoListModel()
            {
                ID = t.ID,
                Name = t.Name,
                CountQuestion = t.TestQuestionRecords.Count(),
            }).ToList();
            return View(tvm);
        }
        [HttpGet]
        public ActionResult Create()
        {
            var model = new TestInfoCreateModel();
            var qi = db.QuestionInfors.Where(x => x.Status == true).ToList();
            model.DataQuestion = qi;
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(TestInfoCreateRequestModel tcvm)
        {
            var model = new TestInfoCreateModel();
            var qi = db.QuestionInfors.Where(x => x.Status == true).ToList();
            model.DataQuestion = qi;
            if (ModelState.IsValid)
            {
                try
                {
                    var ti = new TestInfor
                    {
                        Name = tcvm.Name,
                        Score = 100,
                        datetime = DateTime.Today
                    };
                    db.TestInfors.Add(ti);
                    db.SaveChanges();
                    var questionIds = tcvm.IdQuestion.Remove(tcvm.IdQuestion.Length - 1, 1).Split(',').Select(Int32.Parse).ToList();
                    var ltqr = new List<TestQuestionRecord>();
                    var orderIndex = 1;
                    foreach (var item in questionIds)
                    {
                        ltqr.Add(new TestQuestionRecord
                        {
                            QuestionID = item,
                            TestID = ti.ID,
                            Status = true,
                            OrderNumber = orderIndex,
                        });
                        orderIndex++;
                    }
                    if (ltqr.Any())
                    {
                        db.TestQuestionRecords.AddRange(ltqr);
                        db.SaveChanges();
                    }
                }
                catch (Exception e)
                {
                    ModelState.AddModelError("message", "Thêm bài test thất bại !!");
                    return View();
                }
                ModelState.AddModelError("message", "Thêm bài test thành công!!");

                TempData["Success"] = "Added Successfully!";
                return View(model);
            }
            return View(model);
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var t = db.TestInfors.Find(id);
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
            db.TestQuestionRecords.RemoveRange(db.TestQuestionRecords.Where(x => x.TestID == id));
            db.SaveChanges();
            var ccrecord = db.TestInfors.FirstOrDefault(x => x.ID == id);
            db.TestInfors.Remove(ccrecord);
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