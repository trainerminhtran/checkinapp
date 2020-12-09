using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]

    public class ContentTController : Controller
    {
        private dbEntities db = new dbEntities();
        private Config cf = new Config();

        // GET: Content
        public ActionResult Index()
        {
            return View(db.ContentInfors.ToList());
        }

        // GET: Content/Create
        public ActionResult Create()
        {

            return View();
        }

        // POST: Content/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(UploadContentViewModel uploadContentView, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                string _path = string.Empty;
                string _FileName = string.Empty;
                try
                {
                    if (file.ContentLength > 0)
                    {
                        _FileName = Path.GetFileName(file.FileName);
                        _path = Path.Combine(Server.MapPath(cf.getUploadPath()), _FileName);
                        file.SaveAs(_path);
                    }

                    //save content
                    var content = new ContentInfor
                    {
                        Name = _FileName,
                        FileUrl = cf.getUploadPath() + _FileName,
                        Datetime = DateTime.Today,
                        Status = true
                    };
                    db.ContentInfors.Add(content);

                    //save contentmodeldb
                    var contentmodel = new ContentModelRecord();
                    foreach (var id in uploadContentView.modelIds)
                    {
                        contentmodel.ContentID = content.ID;
                        contentmodel.ModelID = id;
                        db.ContentModelRecords.Add(contentmodel);
                    }
                    db.SaveChanges();
                }
                catch
                {
                    ModelState.AddModelError("message", "File upload failed!!");
                    return View();
                }
                TempData["Success"] = "Added Successfully!";
                ModelState.AddModelError("message", "File upload success!!");
                return View();
            }

            return View();
        }
        // GET: Content/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ContentInfor contentInfor = db.ContentInfors.Find(id);
            if (contentInfor == null)
            {
                return HttpNotFound();
            }
            return View(contentInfor);
        }

        // POST: Content/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                var cms = db.ContentModelRecords.Where(x => x.ContentID == id);
                db.ContentModelRecords.RemoveRange(cms);

                ContentInfor contentInfor = db.ContentInfors.Find(id);
                db.ContentInfors.Remove(contentInfor);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                ContentInfor contentInfor = db.ContentInfors.Find(id);
                ModelState.AddModelError("message", "Có lỗi sảy ra, không thể xóa nội dung này, vui lòng liên lạc với Admin.");
                return View(contentInfor);
            }

        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}