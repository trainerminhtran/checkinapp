using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers
{
    public class ContentController : Controller
    {
        private checkinappEntities db = new checkinappEntities();

        // GET: Content
        public ActionResult Index()
        {
            return View(db.ContentInfors.ToList());
        }

        // GET: Content/Details/5
        public ActionResult Details(int? id)
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
                        _path = Path.Combine(Server.MapPath(Config.ContentFilePath), _FileName);
                        file.SaveAs(_path);
                    }

                    //save content
                    var content = new ContentInfor
                    {
                        Name = _FileName,
                        FileUrl = Config.ContentFilePath+ _FileName,
                        Datetime = DateTime.Today,
                        Status = true
                    };
                    db.ContentInfors.Add(content);
                    db.SaveChanges();

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
                    ModelState.AddModelError("message","File upload failed!!");
                    return View();
                }
                TempData["Success"] = "Added Successfully!";
                ModelState.AddModelError("message", "File upload success!!");
                return View();
            }

            return View();
        }

        // GET: Content/Edit/5
        public ActionResult Edit(int? id)
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

        // POST: Content/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,FileUrl,Datetime,Status")] ContentInfor contentInfor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(contentInfor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(contentInfor);
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
            ContentInfor contentInfor = db.ContentInfors.Find(id);
            db.ContentInfors.Remove(contentInfor);
            db.SaveChanges();
            return RedirectToAction("Index");
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
