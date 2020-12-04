using System;
using System.Collections.Generic;
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

    public class UserController : BaseController
    {
        private readonly InternalCheckinappEntities db = new InternalCheckinappEntities();
        private readonly UserService _us = new UserService();
        // GET: User
        public ActionResult Index()
        {
            return View();
        }

        // GET: User
        [AllowAnonymous]
        public ActionResult UnAuthorized(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }




        [AllowAnonymous]

        public ActionResult Login(string returnUrl)
        {
            //if (Session["UserTel"] != null)
            //{
            //    return RedirectToAction("index", "room");
            //}
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        public ActionResult Logout()
        {
            Session.RemoveAll();
            Session.Abandon();
            return RedirectToAction("Login");
        }

        [HttpPost]
        public ActionResult Login(UserSessionData usd)
        {
            this.Session.Timeout = 4000;
            Session["UserTel"] = usd.UserTel;

            var returnUrl = usd.returnUrl;
            var ur = db.UserInfors.FirstOrDefault(x => x.Tel == usd.UserTel);
            var trainer = db.TrainerInfors.FirstOrDefault(x => x.Tel == usd.UserTel);
            if (ur == null && trainer == null)
            {
                return RedirectToAction("Create", "User", new { returnUrl = returnUrl });
            }
            else if (trainer != null)
            {
                Session["UserTel"] = usd.UserTel;

                return RedirectToAction("index", "room");
            }
            else
            {
            

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

                var rum = _us.ReturnUrlModelService(returnUrl);
                //ViewBag.xxx = rum;
                //return View();
                return RedirectToAction(rum.Action, rum.Controller, new { id = rum.Guid });
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(UserCreateViewModel usd)
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
            var guidId = string.Empty;
            var nur = db.UserInfors.Include("PositionInfor").Include("StoreInfor").FirstOrDefault(x => x.ID == ur.ID);
            try
            {
                var strAr = usd.returnUrl.Split('/');
                guidId = strAr.Length == 4 ? strAr[3] : string.Empty;
                var uvm = new UserViewModel
                {
                    FullName = nur.Fullname,
                    UserTel = nur.Tel,
                    Id = nur.ID,
                    PositionName = nur.PositionInfor.Name,
                    StoreAddress = nur.StoreInfor.Address,
                    StoreName = nur.StoreInfor.Name
                };
                Session["UserViewModel"] = uvm;
                return RedirectToAction(strAr[2], strAr[1], new { id = guidId });
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                TempData["Success"] = "Added Successfully!";

                ModelState.AddModelError("message", "Tạo lớp thất bại!!");
                return View();
            }



        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Create(string returnUrl)
        {
            var us = new UserViewModel();
            us.returnUrl = returnUrl;
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

        [AllowAnonymous]
        [HttpGet]
        public ActionResult ReCheck(UserViewModel uvm)
        {
            ViewBag.ReturnUrl = uvm.returnUrl;

            return View(uvm);
        }
    }
}