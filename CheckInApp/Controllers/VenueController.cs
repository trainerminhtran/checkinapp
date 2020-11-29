using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    public class VenueController : Controller
    {
        private InternalCheckinappEntities db = new InternalCheckinappEntities();

        // GET: VenueInfor
        public ActionResult Index()
        {

            var ti = db.VenueInfors.Include(x=>x.ProvinceInfor).ToList();
            var tvm = ti.Select(t => new VenueViewModel()
                {
                    Id = t.ID,
                    Name = t.Name,
                    Address = t.Address,
                    Sts = t.Status.Value,
                    ContactTel = t.ContactTel,
                    ContactName = t.ContactName,
                    TrainerProvince = new TrainerProvince() { Id = t.ProvinceInfor.ID, Name = t.ProvinceInfor.NameVN },
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
        public ActionResult Create(VenueCreateViewModel tcvm)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    //insert course
                    var cou = new VenueInfor();
                    cou.Name = tcvm.Name;
                    cou.Address = tcvm.Address;
                    cou.ContactName = tcvm.ContactName;
                    cou.ContactTel = tcvm.ContactTel;
                    cou.ProvinceID = tcvm.provinceID;
                    cou.Status = true;
                    db.VenueInfors.Add(cou);

                    db.SaveChanges();

                }
                catch (Exception e)
                {
                    ModelState.AddModelError("message", "Tạo Venue thất bại!!");
                    return View();
                }
                ModelState.AddModelError("message", "Tạo Venue thành công!!");

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
            var t = db.VenueInfors.Find(id);
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
            var ccrecord = db.VenueInfors.FirstOrDefault(x => x.ID == id);
            db.VenueInfors.Remove(ccrecord);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}