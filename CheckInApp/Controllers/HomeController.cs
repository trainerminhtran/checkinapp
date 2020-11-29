using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Services;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]
    [CustomAuthorize("Trainer")]

    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        
    }
}