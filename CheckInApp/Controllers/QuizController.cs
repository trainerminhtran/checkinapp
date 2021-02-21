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

            var JoinRoom = new JoinRoom
            {
                FullName = u.FullName,
                RoomId = ro.Guid,
                UserId = u.Id,
            };
            var context = GlobalHost.ConnectionManager.GetHubContext<QuizHub>();

            context.Clients.All.addNewMessageToGroup("JoinRoom", JsonConvert.SerializeObject(JoinRoom));
            return View();
        }
    }
}