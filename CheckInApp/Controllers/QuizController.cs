using System;
using System.Collections.Generic;
using System.Data.Entity;
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
        // GET: User
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
            var model = new QuizView
            {
                TestName = ti.Name,
                RoomId = ro.Guid,
                TestId = ct.TestID,
                Process = false
            };
            var process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x=>x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int) ProcessIDEnum.Create && process.QuestionOrder == 1)
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
                else
                {
                    model.Process = true;
                    return View(model);
                }
            }
            else
            {
                model.Process = true;
                return View(model);
            }
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
                if (process.ProcessID == (int) ProcessIDEnum.Process)
                {
                    var curentquestion = _db.QuestionInfors.FirstOrDefault(x=>x.ID == process.QuestionID);
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
            var curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == model.QuestionId);
            if (curentquestion == null)
            {
                return null;
            }

            if (curentquestion.TrueChoose != model.Choose.ToString() || model.Choose == 0)
            {
                model.TimeAns = 0;
            }
            var ar = new AnswerRecord()
            {
                QuesionID = model.QuestionId,
                CheckinInforID = u.Id,
                AnswerOption = model.Choose.ToString(),
                TimeScore = model.TimeAns,
                RoomID = ro.ID,
            };
            _db.AnswerRecords.Add(ar);
            _db.SaveChanges();
            if (model.TimeAns > 0)
            {
                var ci = _db.CheckinInfors.FirstOrDefault(x => x.RoomID == ro.ID && x.UserID == u.Id);
                if (ci != null)
                {
                    ci.CountingScore = ci.CountingScore + model.TimeAns;
                    _db.Entry(ci).State = EntityState.Modified;
                    _db.SaveChanges();
                }
            }
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        public ActionResult _ListAns(int TestId, Guid RoomId)
        {
            var model = new TopResultUseView
            {
                Data = new List<TopResultView>()
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
            var ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti == null)
            {
                return null;
            }

            model.TestName = ti.Name;
            model.FullName = u.FullName;

            List<CheckinInfor> listData = _db.CheckinInfors.Where(x => x.RoomID == ro.ID).OrderBy(x => x.CountingScore).ToList();
            model.Data = listData.Select(x => new TopResultView
            {
                FalseAns = x.AnswerRecords.Count(a => a.TimeScore == 0),
                TrueAns = x.AnswerRecords.Count(a => a.TimeScore > 0),
                FullName = x.UserInfor.EmployeeInfor.Fullname,
                Score = x.CountingScore.GetValueOrDefault()
            }).OrderByDescending(e => e.Score).ToList();
            return PartialView(model);
        }
    }
}