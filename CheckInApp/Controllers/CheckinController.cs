using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    public class CheckinController : BaseController
    {
        // GET: Checkin
        public ActionResult Index()
        {
            return View();
        }

       
    }
}