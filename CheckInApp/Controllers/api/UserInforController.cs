using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CheckInApp.Models;
using CheckInApp.Services;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers.api
{
    public class UserInforController : ApiController
    {
        private readonly dbEntities _db = new dbEntities();

        [HttpGet]
        public IHttpActionResult GetAllPosition()
        { 
            var pos = _db.PositionInfors.Where(x=>x.Name !="Khác").Select(x=> new {Id = x.ID, Name = x.Name}).ToList();
            if (pos.Count == 0)
            {
                return BadRequest();
            }

            return Ok(pos);
        }
        public IHttpActionResult GetTrainers()
        {
            var trs = _db.UserInfors.Where(x=>x.PermissionID == (int)PermissionEnum.Trainer).Select(x=> new {Id = x.ID, Name = x.EmployeeInfor.Fullname});
            if (trs.Count() == 0)
            {
                return BadRequest();
            }

            return Ok(trs);
        }

        public IHttpActionResult GetAllEmployees(string id)
        {
            var ees = _db.EmployeeInfors.Where(o => o.MNV.Contains(id)).Select(x => new { Id = x.ID, MNV = x.MNV,Name= x.Fullname, StoreId = x.StoreID, StoreName = x.StoreInfor.Name }).ToList();
            if (ees.Count == 0)
            {
                return BadRequest();
            }

            return Ok(ees);
        }
        [HttpPost]
        public bool TrainerStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var t = _db.UserInfors.FirstOrDefault(x => x.ID == ucs.id);
                t.Status = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        
         [HttpPost]
        public bool UpdateMotivationGiftStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var t = _db.CheckinInfors.FirstOrDefault(x => x.ID == ucs.id);
                t.IsMotivationGift = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        

    }
}
