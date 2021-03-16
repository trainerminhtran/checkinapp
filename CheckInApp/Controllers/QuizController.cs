using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web.Mvc;
using Checkinapp.ViewModels;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;
using Microsoft.AspNet.SignalR;
using Newtonsoft.Json;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    public class QuizController : BaseController
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly UserService _us = new UserService();
        private DatetimeService ds = new DatetimeService();
        private readonly QRCodeService _qr = new QRCodeService();

        #region RealTime
        public ActionResult Index(Guid RoomId)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);

            if (ro == null)
            {
                return null;
            }
            var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID);
            if (ct == null)
            {
                return null;
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == ct.TestID);
            if (ti == null)
            {
                return null;
            }
            var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (ci == null)
            {
                return null;
            }

            var model = new QuizView
            {
                TestName = ti.Name,
                RoomId = ro.Guid,
                TestId = ct.TestID,
                Process = (int)ProcessIDEnum.Create,
            };
            var process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int)ProcessIDEnum.Create && process.QuestionOrder == 1)
                {
                    var JoinRoom = new JoinRoom
                    {
                        FullName = u.FullName,
                        RoomId = ro.Guid,
                        UserId = u.Id,
                    };
                    var context = GlobalHost.ConnectionManager.GetHubContext<QuizHub>();
                    context.Clients.All.addNewMessageToGroup("JoinRoom", JsonConvert.SerializeObject(JoinRoom));
                    return View(model);
                }
                else if (process.ProcessID == (int)ProcessIDEnum.Create)
                {
                    model.Process = (int)ProcessIDEnum.NextQuestion;
                    return View(model);
                }
                else
                {
                    model.Process = (int)ProcessIDEnum.Process;
                }
            }
            else
            {
                model.Process = (int)ProcessIDEnum.Finish;
                return View(model);
            }
            return View(model);
        }
        public ActionResult _ListQuiz(int TestId, Guid RoomId)
        {
            var model = new QuizManagerListView();
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            var listquestion = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            if (listquestion.Any())
            {
                model.Total = listquestion.Count();
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti != null)
            {
                model.TestName = ti.Name;
            }
            var process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int)ProcessIDEnum.Process)
                {
                    var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == process.QuestionID);
                    if (curentquestion != null)
                    {
                        var timenew = process.TimeEnd.GetValueOrDefault() - ds.ConvertToUnixTimestamp(DateTime.Now);
                        model.RoomId = ro.Guid;
                        model.TestId = TestId;
                        model.Time = timenew > 0 ? timenew : 0;
                        model.QuestionId = curentquestion.ID;
                        model.QuestionContent = curentquestion.QuestionContent;
                        model.Choose1 = curentquestion.Choose1;
                        model.Choose2 = curentquestion.Choose2;
                        model.Choose3 = curentquestion.Choose3;
                        model.Choose4 = curentquestion.Choose4;
                        model.OrderNumber = process.QuestionOrder;
                    }
                    return PartialView(model);
                }
                else
                {
                    if (process.QuestionOrder == 1)
                    {
                        return null;
                    }
                    else // load lai bang danh sach
                    {
                    }
                }
            }

            return null;
        }
        [HttpPost]
        public JsonResult Ansewr(Ansewr model)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == model.RoomId);
            if (ro == null)
            {
                return null;
            }

            var checkinfo = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (checkinfo == null)
            {
                return null;
            }
            var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == model.QuestionId);
            if (curentquestion == null)
            {
                return null;
            }
            var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID && x.TestTypeID == (int)TestType.RealTime);
            if (ct == null)
            {
                return null;
            }
            if (curentquestion.TrueChoose != model.Choose.ToString() || model.Choose == 0)
            {
                model.TimeAns = 0;
            }
            else
            {
                model.TimeAns = model.TimeAns * 5;
            }

            var asr = _db.AnswerRecords.FirstOrDefault(x =>
                x.QuesionID == model.QuestionId && x.CheckinInforID == checkinfo.ID && x.RoomID == ro.ID && x.CourseId == ct.CourseID);
            if (asr == null)
            {
                var ar = new AnswerRecord()
                {
                    QuesionID = model.QuestionId,
                    CheckinInforID = checkinfo.ID,
                    AnswerOption = model.Choose.ToString(),
                    TimeScore = model.TimeAns,
                    RoomID = ro.ID,
                    Datetime = DateTime.Today,
                    CourseId = ct.CourseID,
                    CountAnswer = 1,
                };
                _db.AnswerRecords.Add(ar);
                _db.SaveChanges();
                if (model.TimeAns > 0)
                {
                    var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
                    if (ci != null)
                    {
                        ci.CountingScore = ci.CountingScore.GetValueOrDefault() + model.TimeAns;
                        _db.Entry(ci).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                }
            }
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        public ActionResult _ListAns(int TestId, Guid RoomId)
        {
            var model = new TopResultUseView
            {
                Data = new List<TopResultView>(),
                FinishTest = false,
            };
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            var checkin = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id); ;
            if (checkin == null)
            {
                return null;
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti == null)
            {
                return null;
            }
            model.TestName = ti.Name;
            model.FullName = u.FullName;
            var ordernum = 0;
            var listData = _db.CheckinInfors.Where(x => x.RoomID == ro.ID).OrderByDescending(x => x.CountingScore).ToList();
            foreach (var item in listData)
            {
                if (item.UserID == u.Id)
                {
                    break;
                }
                ordernum++;
            }
            model.OrderNumber = ordernum + 1;
            var tqp = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            var totalCount = tqp.Count;
            var at = _db.AnswerRecords.Where(x => x.CheckinInforID == checkin.ID).ToList();
            var timeansdata = at.OrderByDescending(x => x.ID).FirstOrDefault();
            model.AnsTime = timeansdata == null ? 0 : timeansdata.TimeScore;
            model.Data = listData.Select(x => new TopResultView
            {
                Total = totalCount,
                TrueAns = x.AnswerRecords.Count(a => a.TimeScore > 0),
                FullName = x.UserInfor.EmployeeInfor.Fullname,
                Score = x.CountingScore.GetValueOrDefault()
            }).OrderByDescending(e => e.Score).Take(10).ToList();

            var lP = _db.CourseQuestionProcesses
                .Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).ToList();
            if (!lP.Any())
            {
                model.FinishTest = true;
                model.CheckinUrl = _qr.GetRoomPath(RoomId);
            }
            return PartialView(model);
        }
        #endregion

        #region Non-RealTime
        public ActionResult QuizOffline(Guid RoomId)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);

            if (ro == null)
            {
                return null;
            }
            var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID && x.TestTypeID == (int)TestType.NonRealTime);
            if (ct == null)
            {
                return null;
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == ct.TestID);
            if (ti == null)
            {
                return null;
            }
            var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (ci == null)
            {
                return null;
            }
            var checkTest = _db.CourseQuestionUserProcesses.FirstOrDefault(x => x.CheckinInforId == ci.ID);
            if (checkTest == null)
            {
                var tqr = _db.TestQuestionRecords.Where(x => x.TestID == ct.TestID).ToList();
                tqr = tqr.OrderBy(x => Guid.NewGuid()).ToList();
                var listQP = tqr.Select((x, NumberRow) => new CourseQuestionUserProcess
                {
                    ProcessID = (int)ProcessIDEnum.Create,
                    QuestionID = x.QuestionID,
                    QuestionOrder = NumberRow + 1,
                    RoomID = ro.ID,
                    TimeEnd = 0,
                    CheckinInforId = ci.ID,
                }).ToList();
                _db.CourseQuestionUserProcesses.AddRange(listQP);
                _db.SaveChanges();
            }
            var model = new QuizView
            {
                TestName = ti.Name,
                RoomId = ro.Guid,
                TestId = ct.TestID,
                Process = (int)ProcessIDEnum.Create,
            };
            var listquestion = _db.TestQuestionRecords.Where(x => x.TestID == ct.TestID).ToList();
            if (listquestion.Any())
            {
                model.Total = listquestion.Count();
            }
            var process = _db.CourseQuestionUserProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish && x.CheckinInforId == ci.ID).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int)ProcessIDEnum.Create && process.QuestionOrder == 1)
                {
                    return View(model);
                }
                else if (process.ProcessID == (int)ProcessIDEnum.Create)
                {
                    model.Process = (int)ProcessIDEnum.NextQuestion;
                    return View(model);
                }
                else
                {
                    model.Process = (int)ProcessIDEnum.Process;
                }
            }
            else
            {
                model.Process = (int)ProcessIDEnum.Finish;
                return View(model);
            }
            return View(model);
        }
        public ActionResult _ListQuizNon(int TestId, Guid RoomId)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var model = new QuizManagerListView();
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            var listquestion = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            if (listquestion.Any())
            {
                model.Total = listquestion.Count();
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti != null)
            {
                model.TestName = ti.Name;
            }
            var checkinfo = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (checkinfo == null)
            {
                return null;
            }
            var process = _db.CourseQuestionUserProcesses.Where(x => x.RoomID == ro.ID && x.CheckinInforId == checkinfo.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int)ProcessIDEnum.Process)
                {
                    var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == process.QuestionID);
                    if (curentquestion != null)
                    {
                        var timenew = process.TimeEnd.GetValueOrDefault() - ds.ConvertToUnixTimestamp(DateTime.Now);
                        model.RoomId = ro.Guid;
                        model.TestId = TestId;
                        model.Time = timenew > 0 ? timenew : 0;
                        model.QuestionId = curentquestion.ID;
                        model.QuestionContent = curentquestion.QuestionContent;
                        model.Choose1 = curentquestion.Choose1;
                        model.Choose2 = curentquestion.Choose2;
                        model.Choose3 = curentquestion.Choose3;
                        model.Choose4 = curentquestion.Choose4;
                        model.OrderNumber = process.QuestionOrder;
                        if (timenew <= 0)
                        {
                            process.ProcessID = (int)ProcessIDEnum.Finish;
                            _db.Entry(process).State = EntityState.Modified;
                            _db.SaveChanges();
                        }
                    }
                    return PartialView(model);
                }
                else
                {
                    process.ProcessID = (int)ProcessIDEnum.Process;
                    process.TimeEnd = ds.ConvertToUnixTimestamp(DateTime.Now) + 20;
                    _db.Entry(process).State = EntityState.Modified;
                    _db.SaveChanges();
                    var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == process.QuestionID);
                    if (curentquestion != null)
                    {
                        var timenew = process.TimeEnd.GetValueOrDefault() - ds.ConvertToUnixTimestamp(DateTime.Now);
                        model.RoomId = ro.Guid;
                        model.TestId = TestId;
                        model.Time = timenew > 0 ? timenew : 0;
                        model.QuestionId = curentquestion.ID;
                        model.QuestionContent = curentquestion.QuestionContent;
                        model.Choose1 = curentquestion.Choose1;
                        model.Choose2 = curentquestion.Choose2;
                        model.Choose3 = curentquestion.Choose3;
                        model.Choose4 = curentquestion.Choose4;
                        model.OrderNumber = process.QuestionOrder;
                    }
                    return PartialView(model);
                }
            }
            return null;
        }
        [HttpPost]
        public JsonResult AnsewrNon(Ansewr model)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == model.RoomId);
            if (ro == null)
            {
                return null;
            }

            var checkinfo = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (checkinfo == null)
            {
                return null;
            }
            var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == model.QuestionId);
            if (curentquestion == null)
            {
                return null;
            }
            var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID && x.TestTypeID == (int)TestType.NonRealTime);
            if (ct == null)
            {
                return null;
            }
            if (curentquestion.TrueChoose != model.Choose.ToString() || model.Choose == 0)
            {
                model.TimeAns = 0;
            }
            else
            {
                model.TimeAns = model.TimeAns * 5;
            }
            var process = _db.CourseQuestionUserProcesses.Where(x => x.RoomID == ro.ID && x.QuestionID == model.QuestionId && x.CheckinInforId == checkinfo.ID).FirstOrDefault();
            if (process != null)
            {
                process.ProcessID = (int)ProcessIDEnum.Finish;
                _db.Entry(process).State = EntityState.Modified;
                _db.SaveChanges();
            }
            var asr = _db.AnswerRecords.FirstOrDefault(x =>
                x.QuesionID == model.QuestionId && x.CheckinInforID == checkinfo.ID && x.RoomID == ro.ID && x.CourseId == ct.CourseID);
            if (asr == null)
            {
                var ar = new AnswerRecord()
                {
                    QuesionID = model.QuestionId,
                    CheckinInforID = checkinfo.ID,
                    AnswerOption = model.Choose.ToString(),
                    TimeScore = model.TimeAns,
                    RoomID = ro.ID,
                    Datetime = DateTime.Today,
                    CourseId = ct.CourseID,
                    CountAnswer = 1,
                };
                _db.AnswerRecords.Add(ar);
                _db.SaveChanges();
                if (model.TimeAns > 0)
                {
                    var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
                    if (ci != null)
                    {
                        ci.CountingScore = ci.CountingScore.GetValueOrDefault() + model.TimeAns;
                        _db.Entry(ci).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                }
            }
            else
            {
                var hightAns = model.TimeAns - asr.TimeScore;
                if (hightAns > 0)
                {
                    asr.TimeScore = model.TimeAns;
                    _db.Entry(asr).State = EntityState.Modified;
                    _db.SaveChanges();
                    var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
                    if (ci != null)
                    {
                        ci.CountingScore = ci.CountingScore.GetValueOrDefault() + hightAns;
                        _db.Entry(ci).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                }
                else
                {
                    asr.CountAnswer = asr.CountAnswer + 1;
                    _db.Entry(asr).State = EntityState.Modified;
                    _db.SaveChanges();
                }
            }
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        [HttpPost]
        public JsonResult DoAgain(Ansewr model)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == model.RoomId);
            if (ro == null)
            {
                return null;
            }
            var checkinfo = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (checkinfo == null)
            {
                return null;
            }
            var ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID && x.TestTypeID == (int)TestType.NonRealTime);
            if (ct == null)
            {
                return null;
            }
            var update = _db.CourseQuestionUserProcesses.Where(x => x.RoomID == ro.ID && x.CheckinInforId == checkinfo.ID).ToList().Select(x => new CourseQuestionUserProcess
            {
                ID = x.ID,
                QuestionOrder = x.QuestionOrder,
                ProcessID = (int)ProcessIDEnum.Create,
                RoomID = x.RoomID,
                QuestionID = x.QuestionID,
                TimeEnd = 0,
                CheckinInforId = x.CheckinInforId,
            }).ToList();
            foreach (var item in update)
            {
                _db.CourseQuestionUserProcesses.AddOrUpdate(item);
            }
            _db.SaveChanges();
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        public ActionResult _ListAnsNon(int TestId, Guid RoomId)
        {
            var model = new TopResultUseView
            {
                Data = new List<TopResultView>(),
                FinishTest = false,
            };
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            var checkin = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
            if (checkin == null)
            {
                return null;
            }
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti == null)
            {
                return null;
            }
            model.TestName = ti.Name;
            model.FullName = u.FullName;
            var ordernum = 0;
            var listData = _db.CheckinInfors.Where(x => x.RoomID == ro.ID).OrderByDescending(x => x.CountingScore).ToList();
            foreach (var item in listData)
            {
                if (item.UserID == u.Id)
                {
                    break;
                }
                ordernum++;
            }
            model.OrderNumber = ordernum + 1;
            var tqp = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            var totalCount = tqp.Count;
            var at = _db.AnswerRecords.Where(x => x.CheckinInforID == checkin.ID).ToList();
            model.AnsTime = at.OrderByDescending(x => x.ID).FirstOrDefault().TimeScore;
            model.Data = listData.Select(x => new TopResultView
            {
                Total = totalCount,
                TrueAns = x.AnswerRecords.Count(a => a.TimeScore > 0),
                FullName = x.UserInfor.EmployeeInfor.Fullname,
                Score = x.CountingScore.GetValueOrDefault()
            }).OrderByDescending(e => e.Score).Take(10).ToList();

            var lP = _db.CourseQuestionUserProcesses
                .Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish && x.CheckinInforId == checkin.ID).ToList();
            if (!lP.Any())
            {
                model.FinishTest = true;
                model.CheckinUrl = _qr.GetRoomPath(RoomId);
            }
            return PartialView(model);
        }
        #endregion
    }
}