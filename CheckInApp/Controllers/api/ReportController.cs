using System;
using System.Linq;
using System.Web.Http;
using CheckInApp.Models;
using CheckInApp.Services;

namespace CheckInApp.Controllers.api
{
    public class ReportController : ApiController
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly QRCodeService _qr = new QRCodeService();
        private readonly UserService _userService = new UserService();
        private readonly DatetimeService _dt = new DatetimeService();

        //Method get report by ROOM ID
        public void ReportByAccountByRoomID(Guid roomId)
        {

            
        }
    }
}
