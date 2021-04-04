using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
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
        private readonly dbEntities _db = new dbEntities();
        private readonly QRCodeService _qr = new QRCodeService();
        private readonly DatetimeService _dt = new DatetimeService();
        private readonly UserService _userService = new UserService();
        // GET: Room
        public ActionResult Index()
        {
            var rvm = new List<RoomViewModel>();

            var room = _db.RoomInfors.Where(x=>x.IsDisable!= true);

            foreach (var r in room)
            {
                var rv = new RoomViewModel
                {
                    Id = r.ID,
                    Datetime = _dt.GetVNDateString(r.Datetime),
                    Name = r.Name,
                    QRCode = _qr.QRCodeView(_qr.GetQRCode(_qr.GetUrlByRoomurl(r.RoomUrl))),
                    TrainerName = _userService.GetTrainerString(r.TrainerRoomRecords.Select(x => x.UserInfor.EmployeeInfor.Fullname)),
                    RoomUrl = _qr.GetUrlByRoomurl(r.RoomUrl),
                    RoomGuid = r.Guid,
                };

                var sto = _db.StoreInfors.FirstOrDefault(x => x.ID == r.VenueID);
                if (sto != null)
                {
                    rv.VenueName = sto.Name;
                    rv.VenueAddress = sto.Address;
                }

                var ctr = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == r.CourseID);
                if (ctr != null)
                {
                    rv.TypeTest = ctr.TestTypeID.GetValueOrDefault();
                }

                rv.Status = r.Status.GetValueOrDefault();
                rvm.Add(rv);
            }

            rvm = rvm.OrderByDescending(x => x.Id).ToList();
            return View(rvm);
        }


        [HttpGet]
        public ActionResult Create()
        {
            return View();
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
                var cour = _db.CourseInfors.FirstOrDefault(x => x.ID == tcvm.CourseID);
                //insert course
                var ro = new RoomInfor
                {
                    Name = cour.Name + "."+ tcvm.Name,
                    CourseID = tcvm.CourseID == 0 ? 0 : tcvm.CourseID,
                    VenueID = tcvm.VenueID == 0 ? 0 : tcvm.VenueID,
                    Datetime = new DatetimeService().CreateEnDateTimeFromVNdate(tcvm.Datetime),
                    Status = false,
                    Guid = guid,
                    RoomUrl = _qr.GetRoomPath(guid),
                    QRCodeImage = _qr.GetQRCode(rurl),
                    RoomFee = tcvm.RoomFee ?? 0,
                    TeabreakFee = tcvm.TeabreakFee ?? 0,
                };
                _db.RoomInfors.Add(ro);
                var trr = tcvm.TrainerID.Select(tc => new TrainerRoomRecord { RoomID = ro.ID, TrainerID = tc }).ToList();
                _db.TrainerRoomRecords.AddRange(trr);
                _db.SaveChanges();

                #region gen sắn bộ test
                var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == cour.ID && x.TestTypeID ==  (int)TestType.RealTime);
                if (ct != null)
                {
                    var tqr = _db.TestQuestionRecords.Where(x => x.TestID == ct.TestID).ToList();
                    var listQP = tqr.Select(x => new CourseQuestionProcess
                    {
                        ProcessID = (int)ProcessIDEnum.Create,
                        QuestionID = x.QuestionID,
                        QuestionOrder = x.OrderNumber.GetValueOrDefault(),
                        RoomID = ro.ID,
                        TimeEnd = 0,
                    }).ToList();

                    _db.CourseQuestionProcesses.AddRange(listQP);
                    _db.SaveChanges();
                }
                #endregion
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("message", "Tạo lớp thất bại!!" + ex);
                return View();
            }
            ModelState.AddModelError("message", "Tạo lớp thành công!!");

            TempData["Success"] = "Added Successfully!";
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id)
        {
            var roomInfors = _db.RoomInfors.Include(x => x.TrainerRoomRecords).FirstOrDefault(x => x.ID == id);
            if (roomInfors == null) return RedirectToAction("Index");
            try
            {
                //var checkinroom = _db.CheckinInfors.Where(x => x.RoomID == id);
                //var trainerroomrecord = _db.TrainerRoomRecords.Where(x => x.RoomID == id);
                //_db.CheckinInfors.RemoveRange(checkinroom);
                //_db.TrainerRoomRecords.RemoveRange(trainerroomrecord);
                _db.RoomInfors.Remove(roomInfors);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                Console.Write(e);
                return RedirectToAction("Index");
            }
           
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var model = _db.RoomInfors.Include(x => x.TrainerRoomRecords).FirstOrDefault(x => x.ID == id);
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, RoomCreateViewModel tcvm)
        {
            if (!ModelState.IsValid) return View();
            try
            {
                var guid = Guid.NewGuid();
                var rurl = _qr.GetBaseUrl(guid.ToString());
                //insert course
                var GetRoomById = _db.RoomInfors.FirstOrDefault(x => x.ID == id);
                if (GetRoomById == null)
                {
                    //TODO
                }

                GetRoomById.Name = tcvm.Name;
                GetRoomById.CourseID = tcvm.CourseID == 0 ? 0 : tcvm.CourseID;
                GetRoomById.VenueID = tcvm.VenueID == 0 ? 0 : tcvm.VenueID;
                GetRoomById.Datetime = new DatetimeService().CreateEnDateTimeFromVNdate(tcvm.Datetime);
                GetRoomById.Status = false;
                GetRoomById.Guid = guid;
                GetRoomById.RoomUrl = _qr.GetRoomPath(guid);
                GetRoomById.QRCodeImage = _qr.GetQRCode(rurl);
                GetRoomById.RoomFee = tcvm.RoomFee ?? 0;
                GetRoomById.TeabreakFee = tcvm.TeabreakFee ?? 0;
                _db.RoomInfors.AddOrUpdate(GetRoomById);

                var trainers = _db.TrainerRoomRecords.Where(x => x.RoomID == id);
                var trainersIds = trainers.Select(x => x.ID).ToArray();

                var set = new HashSet<int>(tcvm.TrainerID);
                bool allThere = trainersIds.All(set.Contains);
                if (allThere)
                {
                    _db.TrainerRoomRecords.RemoveRange(trainers);
                    var trr = tcvm.TrainerID.Select(tc => new TrainerRoomRecord { RoomID = id, TrainerID = tc }).ToList();
                    _db.TrainerRoomRecords.AddRange(trr);
                }

                _db.SaveChanges();

                #region gen sắn bộ test
                _db.CourseQuestionProcesses.RemoveRange(_db.CourseQuestionProcesses.Where(x=>x.RoomID == GetRoomById.ID));
                var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == tcvm.CourseID);
                var tqr = _db.TestQuestionRecords.Where(x => x.TestID == ct.TestID).ToList();
                var listQP = tqr.Select(x => new CourseQuestionProcess
                {
                    ProcessID = (int)ProcessIDEnum.Create,
                    QuestionID = x.QuestionID,
                    QuestionOrder = x.OrderNumber.GetValueOrDefault(),
                    RoomID = GetRoomById.ID,
                    TimeEnd = 0,
                }).ToList();

                _db.CourseQuestionProcesses.AddRange(listQP);
                _db.SaveChanges();
                #endregion

            }
            catch (Exception ex)
            {
                ModelState.AddModelError("message", "Tạo lớp thất bại!!" + ex);
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

            printvm.RoomName = ro.Name;
            printvm.TrainerName = _userService.GetTrainerString(ro.TrainerRoomRecords.Select(x => x.UserInfor.EmployeeInfor.Fullname));

            var cour = _db.CourseInfors.FirstOrDefault(x => x.ID == ro.CourseID);

            printvm.CourseName = cour.Name;

            var ve = _db.StoreInfors.FirstOrDefault(x => x.ID == ro.VenueID);
            printvm.VenueName = ve.Name;

            printvm.DatetimeEnString = new DatetimeService().GetEnDateString(ro.Datetime);
            var ck = _db.CheckinInfors.Where(x => x.RoomID == id).ToList();
            var atts = ck.Select(x => new Attendence
            {
                Name = x.UserInfor.EmployeeInfor.Fullname,
                Id = x.UserInfor.ID,
                PositionName = x.UserInfor.PositionInfor.Name,
                Signature = _qr.QRCodeView(x.Signature),
                StoreName = x.UserInfor.EmployeeInfor.StoreInfor.Name,
                MNV = x.UserInfor.EmployeeInfor.MNV,
                Tel = x.UserInfor.Tel
            })
                .ToList();

            printvm.Attendences = atts;

            return View(printvm);
        }

        [AllowAnonymous]
        public ActionResult SearchPointByGuide(Guid id)
        {
            var ListPoint = new ShowSearchPoint();
            var gui = new Guid("8cb25801-496c-4e79-a9b7-eae37fb20d82");
            var ro = new List<SearchPointByRoomGuideViewModel>();
            if (id == gui)
            {
                ro = _db.SeachPointByRoomGuide(id).Select(x => new SearchPointByRoomGuideViewModel
                {
                    CourseName = x.Name,
                    UserFullname = x.Fullname,
                    CountingScore = x.CountingScore.GetValueOrDefault(),
                    Store = x.Store,
                    MNV = x.MNV,
                    Tel = x.Tel,
                }).OrderByDescending(x => x.CountingScore).ToList();
            }
            else
            {
                ro = _db.SeachPointByRoomGuideOTher(id).Select(x => new SearchPointByRoomGuideViewModel
                {
                    CourseName = x.Name,
                    UserFullname = x.Fullname,
                    CountingScore = x.CountingScore.GetValueOrDefault(),
                    Store = x.Store,
                    MNV = x.MNV,
                    Tel = x.Tel,
                }).OrderByDescending(x => x.CountingScore).ToList();
            }
           
            if (ro == null)
            {
                return null;
            }

            var gr = ro.GroupBy(x => x.Store).Select(x => new ShowSearchPointGroup
            {
                Store = x.Key,
                TotalMemberTested =  x.Count(),
                AvePoint = Math.Round(x.Average(i=>i.CountingScore),2,MidpointRounding.AwayFromZero),
                TotalPoint = x.Sum(i => i.CountingScore)
            }).OrderByDescending(x => x.AvePoint).ThenByDescending(x=>x.TotalMemberTested).ThenByDescending(x=>x.TotalPoint).ToList();
            for (int i = 0; i < gr.Count(); i++)
            {
                gr[i].win = i+1;
            }

            ListPoint.CourseName = ro.First().CourseName;
            ListPoint.ListPoint = ro;
            ListPoint.Group = gr;

            return View(ListPoint);
        }

        public ActionResult Detailprint(int id)
        {
            var printvm = new RoomToPrintViewModel();
            var ro = _db.RoomInfors.FirstOrDefault(x => x.ID == id);
            if (ro == null)
            {
                return null;
            }


            printvm.RoomName = ro.Name;
            printvm.TrainerName = _userService.GetTrainerString(ro.TrainerRoomRecords.Select(x => x.UserInfor.EmployeeInfor.Fullname));

            var cour = _db.CourseInfors.FirstOrDefault(x => x.ID == ro.CourseID);

            printvm.CourseName = cour.Name;

            printvm.VenueName = ro.StoreInfor.Name;

            printvm.DatetimeEnString = new DatetimeService().GetEnDateString(ro.Datetime);
            var ck = _db.CheckinInfors.Where(x => x.RoomID == id).ToList();
            var atts = ck.Select(x => new Attendence
            {
                Name = x.UserInfor.EmployeeInfor.Fullname,
                Id = x.UserInfor.ID,
                PositionName = x.UserInfor.PositionInfor.Name,
                Signature = _qr.QRCodeView(x.Signature),
                StoreName = x.RoomInfor.StoreInfor.Name,
                MNV = x.UserInfor.EmployeeInfor.MNV,
                Tel = x.UserInfor.Tel
            })
                .ToList();

            printvm.Attendences = atts;

            return View(printvm);
        }
    }
}