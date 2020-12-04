using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Results;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.ViewModels;
using CheckInApp.Services;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    public class UserCheckinController : Controller
    {
        private readonly InternalCheckinappEntities _db = new InternalCheckinappEntities();
        private readonly QRCodeService qr = new QRCodeService();
        // GET: UserCheckin
        [CustomAuthorize("Learner","Trainer")]

        public ActionResult Index(Guid id,string message)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == id);
            
            if (ro == null)
            {
                return null;
            }

            var course = _db.CourseInfors.FirstOrDefault(x => x.ID == ro.CourseID);
            if (course== null)
            {
                return null;
            }

            var venueName = ro.IsStore == (int)RoomIsOnsite.Hoitruong ? _db.VenueInfors.FirstOrDefault(x => x.ID == ro.VenueID)?.Name : _db.StoreInfors.FirstOrDefault(x => x.ID == ro.VenueID)?.Name;
            var uvm = new UserCheckinViewModel
            {
                Id = u.Id,
                FullName = u.FullName,
                PositionName = u.PositionName,
                UserTel = u.UserTel,
                RoomId = ro.ID,
                TrainerName = ro.TrainerInfor.Fullname,
                CourseName = course.Name,
                Venue = venueName,
                message = message
            };
            return View(uvm);
        }
        [HttpPost]
        public ActionResult Index(UpdateSignatureCheckin us)
        {
            if (!ModelState.IsValid) { ModelState.AddModelError("message", "Cập nhật chữ ký thất bại!!"); return View(); }

            var ro = _db.RoomInfors.FirstOrDefault(x => x.ID == us.RoomId);
            try
            {
                if (!ro.Status.GetValueOrDefault())
                {
                    ModelState.AddModelError("message", "Đã hết thời gian điểm danh!!");
                    return RedirectToAction("Index", new { ro.Guid, message = "Đã hết thời gian điểm danh!!" });
                }

                var ck = new CheckinInfor
                {
                    RoomID = us.RoomId,
                    UserID = us.UserId,
                    Signature = us.Signature,
                    Datetime = new DatetimeService().GetDateTimeNow()
                };
                _db.CheckinInfors.Add(ck);
                _db.SaveChanges();

            }
            catch (Exception)
            {
                return RedirectToAction("Index",new {ro.Guid, message ="Thất bại, thử lại."});
            }

            return RedirectToAction("Index", new { ro.Guid, message = "Thành công" });

        }
        public ActionResult DoCheckin(Guid id)
        {

            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == id);

            var preCheckin = new PreCheckinViewModel();
            if (ro == null) return View(preCheckin);
            preCheckin.url = ro.RoomUrl;
            preCheckin.TrainerName = ro.TrainerInfor.Fullname;
            preCheckin.QRCode = qr.QRCodeView(ro.QRCodeImage);

            return View(preCheckin);
        }
        [HttpPost]
        public ActionResult DoCheckin(UpdateSignatureCheckin us)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var uvm = Session["UserViewModel"] as UserViewModel;
                }
                catch (Exception)
                {
                    ModelState.AddModelError("message", "Cập nhật chữ ký thất bại!!");
                    return View();
                }
                ModelState.AddModelError("message", "Cập nhật chữ ký  thành công!!");

                TempData["Success"] = "Added Successfully!";
                return View();
            }
            return View();
        }
    }
}