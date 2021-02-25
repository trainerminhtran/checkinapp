using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;
using System;
using System.Linq;
using System.Net;
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

            var ti = db.StoreInfors.Where(x => x.PlatformID != (int)RoomEnum.Onsite);
            var tvm = ti.Select(t => new VenueViewModel()
            {
                Id = t.ID,
                Name = t.Name,
                Address = t.Address,
                Sts = t.Status.Value,
                ContactTel = t.ContactTel,
                ContactName = t.ContactName,
                Province = new TrainerProvince() { Id = t.DistrictInfor.ProvinceID, Name = t.DistrictInfor.ProvinceInfor.NameVN },
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
                    var cou = new StoreInfor();
                    cou.PlatformID = tcvm.platformID;

                    cou.Name = ((RoomEnum)tcvm.platformID).ToString() + "-" + tcvm.Name;
                    cou.AccountID = 1;
                    cou.Address = tcvm.Address;
                    cou.ContactName = tcvm.ContactName;
                    cou.ContactTel = tcvm.ContactTel;
                    cou.DistrictID = tcvm.districtID;
                    cou.Status = true;
                    db.StoreInfors.Add(cou);

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
            var t = db.StoreInfors.Find(id);
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
            var ccrecord = db.StoreInfors.FirstOrDefault(x => x.ID == id);
            db.StoreInfors.Remove(ccrecord);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}