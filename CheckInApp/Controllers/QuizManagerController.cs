using Checkinapp.ViewModels;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]
    public class QuizManagerController : BaseController
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly UserService _us = new UserService();
        private DatetimeService ds = new DatetimeService();
        // GET: User
        public ActionResult Index(Guid RoomId)
        {
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            CourseTestRecord ct = _db.CourseTestRecords.FirstOrDefault(x => x.CourseID == ro.CourseID);
            if (ct == null)
            {
                return null;
            }
            TestInfor ti = _db.TestInfors.FirstOrDefault(x => x.ID == ct.TestID);
            if (ti == null)
            {
                return null;
            }
            QuizManagerView model = new QuizManagerView
            {
                TestName = ti.Name,
                RoomId = ro.Guid,
                TestId = ct.TestID,
                Process = (int)ProcessIDEnum.Create,
            };
            CourseQuestionProcess process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process == null)
            {
                model.Process = (int)ProcessIDEnum.Finish;
            }
            else
            {
                if (process.ProcessID == (int)ProcessIDEnum.Create)
                {
                    model.Process = (int)ProcessIDEnum.Create;
                }
                else
                {
                    model.Process = (int)ProcessIDEnum.Process;
                }
            }

            return View(model);
        }
        public ActionResult _ListQuiz(int TestId, Guid RoomId)
        {
            QuizManagerListView model = new QuizManagerListView();
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            List<TestQuestionRecord> listquestion = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            if (listquestion.Any())
            {
                model.Total = listquestion.Count();
            }
            TestInfor ti = _db.TestInfors.FirstOrDefault(x => x.ID == TestId);
            if (ti != null)
            {
                model.TestName = ti.Name;
            }
            CourseQuestionProcess process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.ProcessID != (int)ProcessIDEnum.Finish).OrderBy(x => x.QuestionOrder).FirstOrDefault();
            if (process != null)
            {
                if (process.ProcessID == (int)ProcessIDEnum.Process)
                {
                    QuestionInfor curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == process.QuestionID);
                    if (curentquestion != null)
                    {
                        long timenew = process.TimeEnd.GetValueOrDefault() - ds.ConvertToUnixTimestamp(DateTime.Now);
                        model.RoomId = ro.Guid;
                        model.TestId = TestId;
                        model.Time = timenew > 0 ? timenew : 0;
                        model.QuestionId = curentquestion.ID;
                        model.QuestionContent = curentquestion.QuestionContent;
                        model.Choose1 = curentquestion.Choose1;
                        model.Choose2 = curentquestion.Choose2;
                        model.Choose3 = curentquestion.Choose3;
                        model.Choose4 = curentquestion.Choose4;
                        model.ChooseTrue = curentquestion.TrueChoose;
                        model.OrderNumber = process.QuestionOrder;
                    }
                    return PartialView(model);
                }
                else
                {
                    QuestionInfor curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == process.QuestionID);
                    if (curentquestion != null)
                    {

                        model.RoomId = ro.Guid;
                        model.TestId = TestId;
                        model.Time = 20;
                        model.QuestionId = curentquestion.ID;
                        model.QuestionContent = curentquestion.QuestionContent;
                        model.Choose1 = curentquestion.Choose1;
                        model.Choose2 = curentquestion.Choose2;
                        model.Choose3 = curentquestion.Choose3;
                        model.Choose4 = curentquestion.Choose4;
                        model.ChooseTrue = curentquestion.TrueChoose;
                        model.OrderNumber = process.QuestionOrder;
                    }
                    return PartialView(model);
                }
            }

            return null;
        }
        [HttpPost]
        public JsonResult ResultTop(TopResult model)
        {
            if (!(Session["UserViewModel"] is UserViewModel u))
            {
                return null;
            }
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == model.RoomId);
            if (ro == null)
            {
                return null;
            }
            QuestionInfor curentquestion = _db.QuestionInfors.FirstOrDefault(x => x.ID == model.QuestionId);
            if (curentquestion == null)
            {
                return null;
            }
            CourseQuestionProcess process = _db.CourseQuestionProcesses.Where(x => x.RoomID == ro.ID && x.QuestionID == model.QuestionId).FirstOrDefault();
            if (process != null)
            {
                process.ProcessID = (int)ProcessIDEnum.Finish;
                _db.Entry(process).State = EntityState.Modified;
                _db.SaveChanges();
            }
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        public ActionResult _ListAns(int TestId, Guid RoomId)
        {
            List<TopResultView> model = new List<TopResultView>();
            RoomInfor ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == RoomId);
            if (ro == null)
            {
                return null;
            }
            var listData = _db.CheckinInfors.Where(x => x.RoomID == ro.ID).OrderByDescending(x => x.CountingScore).ToList();
            var tqp = _db.TestQuestionRecords.Where(x => x.TestID == TestId).ToList();
            var totalCount = tqp.Count;
            List<TopResultView> data = listData.Select(x => new TopResultView
            {
                Total = totalCount,
                TrueAns = x.AnswerRecords.Count(a => a.TimeScore > 0),
                FullName = x.UserInfor.EmployeeInfor.Fullname,
                Score = x.CountingScore.GetValueOrDefault()
            }).OrderByDescending(u=>u.Score).ToList();
            return PartialView(data);
        }
    }
}