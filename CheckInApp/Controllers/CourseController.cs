using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers
{
    public class CourseController : Controller
    {
        private checkinappEntities db = new checkinappEntities();

        // GET: Course
        public ActionResult Index()
        {
            return View(db.CourseInfors.ToList());
        }

        // GET: Course/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseInfor courseInfor = db.CourseInfors.Find(id);
            if (courseInfor == null)
            {
                return HttpNotFound();
            }
            return View(courseInfor);
        }

        // GET: Course/Create
        public ActionResult Create()
        {
            return View(new CourseViewModel());
        }

        // POST: Course/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CourseViewModel courseInfor)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    //insert course
                    var cou = new CourseInfor();
                    cou.Name = courseInfor.Name;
                    cou.PlatformID = courseInfor.platformID;
                    cou.Datetime = new DatetimeService().CreateEnDateTimeFromVNdate(courseInfor.Datetime);
                    cou.Status = true;
                    db.CourseInfors.Add(cou);
                    db.SaveChanges();

                    var course = new ContentCourseRecord();
                    foreach (var c in courseInfor.contentIDs)
                    {
                        course.ContentID = c;
                        course.CourseID = cou.ID;
                        course.Datetime = new DatetimeService().GetDateTimeNow();
                        db.ContentCourseRecords.Add(course);
                    }

                    db.SaveChanges();
                }
                catch (Exception e)
                {
                    ModelState.AddModelError("message", "File upload failed!!");
                    return View();
                }
                ModelState.AddModelError("message", "File upload sussess!!");

                TempData["Success"] = "Added Successfully!";
                return View();
            }
            return View();
        }

        // GET: Course/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseInfor courseInfor = db.CourseInfors.Find(id);
            if (courseInfor == null)
            {
                return HttpNotFound();
            }
            return View(courseInfor);
        }

        // POST: Course/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Datetime,Status")] CourseInfor courseInfor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(courseInfor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(courseInfor);
        }

        // GET: Course/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseInfor courseInfor = db.CourseInfors.Find(id);
            if (courseInfor == null)
            {
                return HttpNotFound();
            }
            return View(courseInfor);
        }

        // POST: Course/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CourseInfor courseInfor = db.CourseInfors.Find(id);
            db.CourseInfors.Remove(courseInfor);
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
