using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using CheckInApp.Services;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    [CustomAuthenticationFilter]

    public class UserController : BaseController
    {
        private readonly InternalCheckinappEntities db = new InternalCheckinappEntities();
        // GET: User
        public ActionResult Index()
        { 
            return View();
        } 
        
        // GET: User
        [AllowAnonymous]
        public ActionResult UnAuthorized(string returnUrl)
        {
            ViewBag.ReturnUrl = HttpUtility.UrlEncode(returnUrl);
            return View();
        }


       

        [AllowAnonymous]

        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        [HttpPost]
        public ActionResult InputTel(UserSessionData usd)
        {
            Session["UserTel"] = usd.UserTel;
            this.Session.Timeout = 4000;
            var UserTel = Session["UserTel"].ToString();
            var returnUrl = usd.returnUrl;
            var ur = db.UserInfors.FirstOrDefault(x => x.Tel == usd.UserTel);

            if (ur == null) return RedirectToAction("Create", returnUrl);
            var uvm = new UserViewModel
            {
                FullName = ur.Fullname,
                UserTel = ur.Tel,
                Id = ur.ID,
                PositionName = ur.PositionInfor.Name,
                StoreAddress = ur.StoreInfor.Address,
                StoreName = ur.StoreInfor.Name,
                returnUrl = returnUrl
            };
            Session["UserViewModel"] = uvm;
            return RedirectToAction("ReCheck", uvm);
        }

        [HttpPost]
        public ActionResult CreateUser(UserCreateViewModel usd)
        {
            var ur = new UserInfor
            {
                Fullname = usd.Name,
                MNV = usd.MNV,
                PositionID = usd.PositionId,
                StoreID = usd.StoreId,
                Status = true,
                Tel = usd.Tel
            };
            db.UserInfors.Add(ur);
            db.SaveChanges();
            ViewBag.ReturnUrl = HttpUtility.UrlEncode(usd.returnUrl);

            var uvm = new UserViewModel
            {
                FullName = ur.Fullname,
                UserTel = ur.Tel,
                Id = ur.ID,
                PositionName = ur.PositionInfor.Name,
                StoreAddress = ur.StoreInfor.Address,
                StoreName = ur.StoreInfor.Name
            };
            Session["UserViewModel"] = uvm;
            return RedirectToAction("Index","UserCheckin");
        }

        [CustomAuthorize("Learner")]
        [HttpGet]
        public ActionResult Create(string returnUrl)
        {
            var us = new UserViewModel();
            ViewBag.ReturnUrl = HttpUtility.UrlEncode(returnUrl);

            try
            {
                us.UserTel = Session["UserTel"].ToString();

            }
            catch (Exception e)
            {
               Console.Write(e.Message);
               Console.Write(e.InnerException);
            }
            return View(us);
        }
        [HttpGet]
        public ActionResult ReCheck(UserViewModel uvm)
        {
            ViewBag.ReturnUrl = uvm.returnUrl;

            return View(uvm);
        }
    }
}