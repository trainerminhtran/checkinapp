using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
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

        private dbEntities _db = new dbEntities();
        private readonly UserService _us = new UserService();

        // GET: Trainer
        public ActionResult Index()
        {

            var ti = _db.UserInfors.Where(x => x.PermissionID == (int)PermissionEnum.Trainer && x.IsDeleted != true).Select(t => new TrainerViewModel()
            {
                Id = t.ID,
                Fullname = t.EmployeeInfor.Fullname,
                Tel = t.Tel,
                Sts = t.Status,
                TrainerProvince = new TrainerProvince() { Id = t.EmployeeInfor.StoreInfor.DistrictInfor.ProvinceID, Name = t.EmployeeInfor.StoreInfor.DistrictInfor.ProvinceInfor.NameVN },
                TrainerPosition = new TrainerPosition() { Id = t.PositionID, Name = t.PositionInfor.Name }
            }).ToList();

            return View(ti);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View("create");
        }


        //POST: Course/Create
        //To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(TrainerCreateViewModel tcvm)
        {
            if (ModelState.IsValid)
            {
                var urf = _db.UserInfors.FirstOrDefault(x => x.Tel == tcvm.Tel);
                if (urf != null) return View();
                var emp = _db.EmployeeInfors.FirstOrDefault(x => x.MNV == tcvm.MNV);
                if (emp == null)
                {
                    emp = new EmployeeInfor();
                    emp.Fullname = tcvm.Name;
                    emp.MNV = tcvm.MNV;
                    emp.StoreID = tcvm.StoreID;
                    _db.EmployeeInfors.Add(emp);
                    _db.SaveChanges();
                }

                urf = new UserInfor
                {
                    EmployeeID = emp.ID,
                    PositionID = tcvm.positionID,
                    PermissionID = (int) PermissionEnum.Trainer,
                    Status = true,
                    Tel = tcvm.Tel
                };
                _db.UserInfors.Add(urf);
                _db.SaveChanges();
                TempData["Success"] = "Added Successfully!";


                ModelState.AddModelError("message", "Tạo trainer thành công!!");

                return View();

            }
            else
            {
                ModelState.AddModelError("message", "Tạo trainer thất bại!!");
                return View();
            }
        }
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var t = _db.UserInfors.Find(id);
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
            try
            {
                var ccrecord = _db.UserInfors.FirstOrDefault(x => x.ID == id);
                ccrecord.IsDeleted = true;
                _db.SaveChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

            return RedirectToAction("Index");
        }


    }
}
