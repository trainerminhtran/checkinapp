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

    public class UserController : BaseController
    {
        private readonly dbEntities _db = new dbEntities();
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
            this.Session.Timeout = 400;
            Session["UserTel"] = usd.UserTel;

            var returnUrl = usd.returnUrl;
            var ur = _db.UserInfors.FirstOrDefault(x => x.Tel == usd.UserTel);
            if (ur == null)
            {
                return RedirectToAction("Create", "User", new { returnUrl = returnUrl });
            }
            else
            {
                var uvm = new UserViewModel
                {
                    FullName = ur.EmployeeInfor.Fullname,
                    UserTel = ur.Tel,
                    Id = ur.ID,
                    PositionName = ur.PositionInfor.Name,
                    StoreAddress = ur.EmployeeInfor.StoreInfor.Address,
                    StoreName = ur.EmployeeInfor.StoreInfor.Name,
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
            if (ModelState.IsValid)
            {
                var urf = _db.UserInfors.FirstOrDefault(x => x.Tel == usd.Tel);
                if(urf != null) return View();
                var ur = new UserInfor();
                var emp = _db.EmployeeInfors.FirstOrDefault(x => x.MNV == usd.MNV);
                if (emp == null)
                {
                    emp = new EmployeeInfor();
                    emp.Fullname = usd.Name;
                    emp.MNV = usd.MNV;
                    emp.StoreID = usd.StoreId;
                    _db.EmployeeInfors.AddOrUpdate(emp);
                    _db.SaveChanges();
                }
                ur.EmployeeID = emp.ID;
                ur.PositionID = usd.PositionId;
                ur.PermissionID = (int)PermissionEnum.User;
                ur.Status = true;
                ur.Tel = usd.Tel;
                _db.UserInfors.Add(ur);
                _db.SaveChanges();

                var store = _db.StoreInfors.FirstOrDefault(x => x.ID == usd.StoreId);
                var uvm = new UserViewModel
                {
                    FullName = ur.EmployeeInfor.Fullname,
                    UserTel = ur.Tel,
                    Id = ur.ID,
                    StoreAddress = store.Address,
                    StoreName = store.Name
                };
                Session["UserViewModel"] = uvm;
              

                var rum = _us.ReturnUrlModelService(usd.returnUrl);
                //ViewBag.xxx = rum;
                //return View();
                return RedirectToAction(rum.Action, rum.Controller, new { id = rum.Guid });

            }
            else
            {
                ModelState.AddModelError("message", "Tạo người dùng thất bại!!");
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
                return RedirectToAction("Login",new {returnUrl });
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