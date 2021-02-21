using System;
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
            };
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
            var curentquestion = _db.QuestionInfors.FirstOrDefault();
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
            }
            return PartialView(model);
        }
        [HttpPost]
        public JsonResult Ansewr(Ansewr model)
        {
            var ck = new AnswerRecord()
            {
                //RoomID = us.RoomId,
                //UserID = us.UserId,
                //Signature = us.Signature,
                //Datetime = new DatetimeService().GetDateTimeNow()
            };
            _db.CheckinInfors.Add(ck);
            _db.SaveChanges();
            return new JsonResult() { Data = model, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}