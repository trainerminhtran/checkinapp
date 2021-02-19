using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.DynamicData;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]

    public class QuizController : BaseController
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly UserService _us = new UserService();
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
    }
}