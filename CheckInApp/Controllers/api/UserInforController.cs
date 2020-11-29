using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CheckInApp.Models;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers.api
{
    public class UserInforController : ApiController
    {
        private readonly InternalCheckinappEntities _db = new InternalCheckinappEntities();

        [HttpGet]
        public IHttpActionResult GetAllPosition()
        {
            var pos = _db.PositionInfors.Select(x=> new {Id = x.ID, Name = x.Name}).ToList();
            if (pos.Count == 0)
            {
                return BadRequest();
            }

            return Ok(pos);
        }
        public IHttpActionResult GetTrainers()
        {
            var trs = _db.TrainerInfors.Select(x=> new {Id = x.ID, Name = x.Fullname}).ToList();
            if (trs.Count == 0)
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
                var t = _db.TrainerInfors.FirstOrDefault(x => x.ID == ucs.id);
                t.Status = ucs.sts;
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
