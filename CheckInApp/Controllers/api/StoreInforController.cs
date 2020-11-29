using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CheckInApp.Models;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers.api
{
    public class StoreInforController : ApiController
    {
        private readonly InternalCheckinappEntities _db = new InternalCheckinappEntities();

        [HttpGet]
        public IHttpActionResult GetAllProvince()
        {
            var pro = _db.ProvinceInfors.ToList();
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new ProvinceCreateViewModel {Id = p.ID, Name = p.NameVN}).ToList();

            return Ok(pcv);
        }
        [HttpGet]
        public IHttpActionResult GetAllStore(int provinceId)
        {
            var pro = _db.StoreInfors.Where(x=>x.DistrictInfor.ProvinceID == provinceId).ToList();
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new VenueforRoomViewModel() { Id = p.ID, Name = p.Name }).ToList();

            return Ok(pcv);
        }
         [HttpGet]
        public IHttpActionResult GetAllAccount()
        {
            var pro = _db.AccountInfors.ToList();
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new { Id = p.ID, Name = p.Shortname }).ToList();

            return Ok(pcv);
        }
        [HttpGet]
        public IHttpActionResult GetAllVenue(int provinceId)
        {
            var pro = new List<VenueInfor>();
            try
            {
                pro = _db.VenueInfors.Where(x => x.ProvinceID == provinceId).ToList();

            }
            catch (Exception e)
            {
                Console.Write(e.Message);
                Console.Write(e.InnerException);
            }
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new VenueforRoomViewModel() { Id = p.ID, Name = p.Name }).ToList();

            return Ok(pcv);
        }
    }
}
 