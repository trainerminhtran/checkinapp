using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]

    public class RoomController : Controller
    {
        private readonly InternalCheckinappEntities _db = new InternalCheckinappEntities();
        private readonly QRCodeService _qr = new QRCodeService();
        private readonly DatetimeService _dt = new DatetimeService();
        // GET: Room
        public ActionResult Index()
        {
            var rvm = new List<RoomViewModel>();

            var room = _db.RoomInfors.ToList();

            foreach (var r in room)
            {
                var rv = new RoomViewModel
                {
                    Id = r.ID,
                    Datetime = _dt.GetDateString(r.Datetime),
                    Name = r.Name,
                    QRCode = _qr.QRCodeView(_qr.GetQRCode(_qr.GetUrlByRoomurl(r.RoomUrl))),
                    TrainerName = r.TrainerInfor.Fullname
                };
                if (r.IsStore == (int)RoomIsOnsite.Hoitruong)
                {
                    var ve = _db.VenueInfors.FirstOrDefault( x=> x.ID == r.VenueID);
                    if (ve != null)
                    {
                        rv.VenueName = ve.Name;
                        rv.VenueAddress = ve.Address;
                    }
                }
                else
                {
                    var sto = _db.StoreInfors.FirstOrDefault(x => x.ID == r.VenueID);
                    if (sto != null)
                    {
                        rv.VenueName = sto.Name;
                        rv.VenueAddress = sto.Address;
                    }
                }

                rv.Status = r.Status.GetValueOrDefault();
                rvm.Add(rv);
            }
            return View(rvm);
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
        public ActionResult Create(RoomCreateViewModel tcvm)
        {
            if (!ModelState.IsValid) return View();
            try
             {
                 var guid = Guid.NewGuid();
                 var rurl = _qr.GetBaseUrl(guid.ToString());
                 //insert course
                 var ro = new RoomInfor
                 {
                     Name = tcvm.Name,
                     TrainerID = tcvm.TrainerID[1] == 0 ? 0 : tcvm.TrainerID[1],
                     CourseID = tcvm.CourseID == 0 ? 0 : tcvm.CourseID,
                     VenueID = tcvm.VenueID == 0 ? 0 : tcvm.VenueID,
                     Datetime = new DatetimeService().CreateEnDateTimeFromVNdate(tcvm.Datetime),
                     Status = false,
                     Guid = guid,
                     RoomUrl = _qr.GetRoomPath(guid),
                     QRCodeImage = _qr.GetQRCode(rurl),
                     RoomFee = tcvm.RoomFee == 0 ? 0 : tcvm.RoomFee,
                     TeabreakFee = tcvm.TeabreakFee == 0 ? 0 : tcvm.TeabreakFee
                 };
                 _db.RoomInfors.Add(ro);
                 var trr = tcvm.TrainerID.Select(tc => new TrainerRoomRecord {RoomID = ro.ID, TrainerID = tc}).ToList();

                 _db.TrainerRoomRecords.AddRange(trr);
                 _db.SaveChanges();

             }
             catch (Exception)
             {
                 ModelState.AddModelError("message", "Tạo lớp thất bại!!");
                 return View();
             }
             ModelState.AddModelError("message", "Tạo lớp thành công!!");

             TempData["Success"] = "Added Successfully!";
             return View();
        }

        public ActionResult Details(int id)
        {
            var printvm = new RoomToPrintViewModel();
            var ro = _db.RoomInfors.FirstOrDefault(x => x.ID == id);
            if (ro == null)
            {
                return null;
            }

            printvm.RoomId = id;
            var trainerstring = string.Empty;
            var trainers = _db.TrainerRoomRecords.Where(x => x.RoomID == id).ToList();
            for (var i = trainers.Count - 1; i >= 0; i--)
            {
                if (i>0)
                {
                    trainerstring += " | ";
                }   
                trainerstring += trainers[i].TrainerInfor.Fullname;
            }

            printvm.RoomName = ro.Name;
            printvm.TrainerName = trainerstring;

            var cour = _db.CourseInfors.FirstOrDefault(x => x.ID == ro.CourseID);

            printvm.CourseName = cour.Name;
            if (ro.IsStore == 0 | ro.IsStore == null)
            {
                var ve = _db.VenueInfors.FirstOrDefault(x => x.ID == ro.VenueID);
                printvm.VenueName = ve.Name;
            }
            else if (ro.IsStore == 1)
            {
                var ve = _db.StoreInfors.FirstOrDefault(x => x.ID == ro.VenueID);
                printvm.VenueName = ve.Name;
            }
            
            printvm.DatetimeEnString = new DatetimeService().GetEnDateString(ro.Datetime);
            var ck = _db.CheckinInfors.Where(x => x.RoomID == id).ToList();
            var atts = ck.Select(x => new Attendence
                {
                    Name = x.UserInfor.Fullname,
                    Id = x.UserInfor.ID,
                    PositionName = x.UserInfor.PositionInfor.Name,
                    Signature = _qr.QRCodeView(x.Signature),
                    StoreName = x.UserInfor.StoreInfor.Name,
                    MNV = x.UserInfor.MNV,
                    Tel = x.UserInfor.Tel
                })
                .ToList();

            printvm.Attendences = atts;

            return View(printvm);
        }
        
        public ActionResult Detailprint(int id)
        {
            var printvm = new RoomToPrintViewModel();
            var ro = _db.RoomInfors.FirstOrDefault(x => x.ID == id);
            if (ro == null)
            {
                return null;
            }

            var trainerstring = string.Empty;
            var trainers = _db.TrainerRoomRecords.Where(x => x.RoomID == id).ToList();
            for (var i = trainers.Count - 1; i >= 0; i--)
            {
                if (i>0)
                {
                    trainerstring += " | ";
                }   
                trainerstring += trainers[i].TrainerInfor.Fullname;
            }

            printvm.RoomName = ro.Name;
            printvm.TrainerName = trainerstring;

            var cour = _db.CourseInfors.FirstOrDefault(x => x.ID == ro.CourseID);

            printvm.CourseName = cour.Name;
            if (ro.IsStore == 0 | ro.IsStore == null)
            {
                var ve = _db.VenueInfors.FirstOrDefault(x => x.ID == ro.VenueID);
                printvm.VenueName = ve.Name;
            }
            else if (ro.IsStore == 1)
            {
                var ve = _db.StoreInfors.FirstOrDefault(x => x.ID == ro.VenueID);
                printvm.VenueName = ve.Name;
            }
            
            printvm.DatetimeEnString = new DatetimeService().GetEnDateString(ro.Datetime);
            var ck = _db.CheckinInfors.Where(x => x.RoomID == id).ToList();
            var atts = ck.Select(x => new Attendence
                {
                    Name = x.UserInfor.Fullname,
                    Id = x.UserInfor.ID,
                    PositionName = x.UserInfor.PositionInfor.Name,
                    Signature = _qr.QRCodeView(x.Signature),
                    StoreName = x.UserInfor.StoreInfor.Name,
                    MNV = x.UserInfor.MNV,
                    Tel = x.UserInfor.Tel
                })
                .ToList();

            printvm.Attendences = atts;

            return View(printvm);
        }
    }
}