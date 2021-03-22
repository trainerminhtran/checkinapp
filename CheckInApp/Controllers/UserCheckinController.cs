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
        private readonly dbEntities _db = new dbEntities();
        private readonly QRCodeService _qr = new QRCodeService();
        private readonly UserService _userService = new UserService();
        private readonly DatetimeService _dt = new DatetimeService();
        // GET: UserCheckin
        [CustomAuthorize("User", "Trainer")]

        public ActionResult Index(Guid id, string message, string checkinId)
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
            var venueName = ro.StoreInfor.Name;
            long.TryParse(checkinId, out var temcheck);
            var uvm = new UserCheckinViewModel
            {
                Id = u.Id,
                FullName = u.FullName,
                PositionName = u.PositionName,
                UserTel = u.UserTel,
                RoomId = ro.ID,
                TrainerName = _userService.GetTrainerString(ro.TrainerRoomRecords.Select(x => x.UserInfor.EmployeeInfor.Fullname)),
                CourseName = ro.CourseInfor.Name,
                Venue = venueName,
                message = message,
                checkinId = temcheck,
                Date = _dt.GetVNDateString(ro.Datetime),
                IsMotivationGift = false,
                RoomGuid = ro.Guid,
                DoTest = false,
                TypeTest = (int)TestType.RealTime,
                DoTestAgain = false
            };
            
            var ischeckin = _db.CheckinInfors.FirstOrDefault(x => x.RoomInfor.Guid == id && x.UserInfor.ID == u.Id);
            if (ischeckin != null)
            {
                ViewBag.isCheckin = true;
                uvm.checkinId = ischeckin.ID;
                uvm.IsMotivationGift = ischeckin.IsMotivationGift.GetValueOrDefault();
                var ans = _db.AnswerRecords.Where(x => x.CheckinInforID == ischeckin.ID).ToList();
                var testInfo = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID);
                if (testInfo != null)
                {
                    if (testInfo.TestTypeID == (int) TestType.NonRealTime)
                    {
                        uvm.TypeTest = (int) TestType.NonRealTime;
                    }
                }
                if (ans.Any())
                {
                    uvm.DoTest = true;
                    uvm.TrueAns = ans.Count(x => x.TimeScore > 0);
                    uvm.TotalAns = ans.Count;
                    uvm.Score = ischeckin.CountingScore.GetValueOrDefault();
                    uvm.DoTestAgain = ans.FirstOrDefault()?.CountAnswer.GetValueOrDefault() < 3;
                }
            }
            else
            {
                ViewBag.isCheckin = false;
            }

            return View(uvm);
        }
        [HttpPost]
        public ActionResult Index(UpdateSignatureCheckin us)
        {
            if (!ModelState.IsValid) { ModelState.AddModelError("message", "Cập nhật chữ ký thất bại!!"); return View(); }

            var ro = _db.RoomInfors.FirstOrDefault(x => x.ID == us.RoomId);
            if (ro != null)
            {
                var cou = _db.CourseInfors.Find(ro.CourseID);
                if (cou != null && (!ro.Status.GetValueOrDefault() || !cou.Status.GetValueOrDefault()))
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
                return RedirectToAction("Index", new { ro.Guid, message = "Thành công", checkinId = ck.ID.ToString() });

            }
            else
            {
                ModelState.AddModelError("message", "Cập nhật chữ ký thất bại!!"); return View();
            }

        }
        public ActionResult DoCheckin(Guid id)
        {

            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == id);

            var preCheckin = new PreCheckinViewModel();
            if (ro == null) return View(preCheckin);
            preCheckin.url = ro.RoomUrl;
            preCheckin.TrainerName =
                _userService.GetTrainerString(ro.TrainerRoomRecords.Select(x => x.UserInfor.EmployeeInfor.Fullname));
            preCheckin.QRCode = _qr.QRCodeView(ro.QRCodeImage);

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

        public ActionResult DownloadFile(Guid RoomId)
        {
            var courseID = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId).CourseID;
            var cc = _db.ContentCourseRecords.FirstOrDefault(x => x.CourseID == courseID);
            
                byte[] fileBytes = System.IO.File.ReadAllBytes(AppDomain.CurrentDomain.BaseDirectory + cc.ContentInfor.FileUrl);
            string fileName = cc.ContentInfor.FileUrl.Split('/')[2];
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, fileName);
        }
    }
}