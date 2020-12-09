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
        private readonly dbEntities _db = new dbEntities();

        [HttpGet]
        public IHttpActionResult GetAllProvince()
        {
            var pro = _db.ProvinceInfors.Where(x => x.ID != 1).ToList();
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new ProvinceCreateViewModel {Id = p.ID, Name = p.NameVN}).ToList();

            return Ok(pcv);
        }
        [HttpGet]
        public IHttpActionResult GetAllDistrict(int provinceId)
        {
            var pro = _db.DistrictInfors.Where(x=>x.ProvinceID==provinceId).ToList();
            if (pro.Count == 0)
            {
                return BadRequest();
            }
            var pcv = pro.Select(p => new ProvinceCreateViewModel { Id = p.ID, Name = p.Name }).ToList();

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
            var pro = _db.AccountInfors.Where(x => x.ID != 1).ToList();
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
          
                var  pro = _db.StoreInfors.Where(x => x.DistrictInfor.ProvinceID == provinceId).Select(p => new VenueforRoomViewModel() { Id = p.ID, Name = p.Name });
                if (pro.Count() == 0)
                {
                    return BadRequest();
                }

                return Ok(pro.ToList());
            
        }
    }
}
 