using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.DynamicData;
using System.Web.Mvc;
using Checkinapp.ViewModels;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]
    public class QuizManagerController : BaseController
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly UserService _us = new UserService();
        // GET: User
        public ActionResult Index(Guid RoomId)
        {
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
            var model = new QuizManagerView
            {
                TestName = ti.Name,
                RoomId = ro.Guid,
                TestId = ct.TestID,
            };
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
            var listquestion = _db.TestQuestionRecords.Where(x=>x.TestID == TestId).ToList();
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
    }
}