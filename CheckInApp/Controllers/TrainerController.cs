using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using Checkinapp.ViewModels;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]

    public class TrainerController : Controller
    {

        private InternalCheckinappEntities db = new InternalCheckinappEntities();
        // GET: Trainer
        public ActionResult Index()
        {
            var ti = db.TrainerInfors.Include(x=> x.ProvinceInfor).Include(y=>y.PositionInfor).ToList();
            var tvm = ti.Select(t => new TrainerViewModel()
                {
                    Id = t.ID,
                    Fullname = t.Fullname,
                    Tel = t.Tel,
                    Sts = t.Status,
                    TrainerProvince = new TrainerProvince() {Id = t.ProvinceID, Name = t.ProvinceInfor.NameVN},
                    TrainerPosition = new TrainerPosition() {Id = t.PositionID, Name = t.PositionInfor.Name}
                })
                .ToList();
            return View(tvm);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View("create");
        }
       

        // POST: Course/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(TrainerCreateViewModel tcvm)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    //insert course
                    var cou = new TrainerInfor();
                    cou.Fullname = tcvm.Name;
                    cou.Tel = tcvm.Tel;
                    cou.PositionID = tcvm.positionID;
                    cou.ProvinceID = tcvm.provinceID;
                    cou.Status = true;
                    db.TrainerInfors.Add(cou);

                    db.SaveChanges();

                }
                catch (Exception e)
                {
                    ModelState.AddModelError("message", "Tạo Trainer thất bại!!");
                    return View();
                }
                ModelState.AddModelError("message", "Tạo Trainer thành công!!");

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
            var t = db.TrainerInfors.Find(id);
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
            var ccrecord = db.TrainerInfors.FirstOrDefault(x => x.ID == id);
            db.TrainerInfors.Remove(ccrecord);
            db.SaveChanges();

            return RedirectToAction("Index");
        }


    }
}
