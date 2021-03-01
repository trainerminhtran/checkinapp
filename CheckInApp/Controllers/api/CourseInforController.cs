using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography.X509Certificates;
using System.Web.DynamicData;
using System.Web.Http;
using CheckInApp.Models;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers
{
    public class CourseInforController : ApiController
    {
        private dbEntities _db = new dbEntities();

        [HttpGet]
        //Get Model by CatID
        public IHttpActionResult GetModelByCatId(int catID)
        {
            List<ModelInfor> models = _db.ModelInfors.Where(u => u.CatID == catID).ToList();

            if (models.Count() == 0)
            {
                return BadRequest();
            }

            var listModel = new List<ModelViewModel>();

            foreach (var m in models)
            {
                listModel.Add(new ModelViewModel
                {
                    Id = m.ID,
                    Name = m.Modelcode
                });
            }

            return Ok(listModel);
        }
        [HttpGet]
        //Get Model by CatID
        public IHttpActionResult GetTestInfo()
        {
            var models = _db.TestInfors.ToList();
            if (models.Count() == 0)
            {
                return BadRequest();
            }

            var listModel = new List<ModelViewModel>();

            foreach (var m in models)
            {
                listModel.Add(new ModelViewModel
                {
                    Id = m.ID,
                    Name = m.Name
                });
            }

            return Ok(listModel);
        }

        [HttpGet]
        public IHttpActionResult GetCatId()
        {
            List<CatInfor> catInfors = _db.CatInfors.ToList();
            if (catInfors.Count == 0)
            {
                return BadRequest();
            }

            var listCat = new List<CatViewModel>();
            foreach (var cat in catInfors)
            {
                listCat.Add(new CatViewModel
                {
                    Id = cat.ID,
                    Name = cat.Name
                });
            }

            return Ok(listCat);
        }
        

        [HttpGet]
        public IHttpActionResult GetCourses()
        {
           var cou = _db.CourseInfors.Where(x=>x.IsDisable != true).Select(x=> new {Id = x.ID, Name = x.Name}).ToList();
            if (cou.Count == 0)
            {
                return BadRequest();
            }
            return Ok(cou);
        }
        [HttpGet]
        public IHttpActionResult GetAllContent()
        {
            var allcontent = _db.ContentInfors.Include(x => x.ContentModelRecords.Select(i => i.ModelInfor)).ToList();
            if (allcontent.Count == 0)
            {
                return BadRequest();
            }

            var result = new List<GetAllContentModel>();
            foreach (var a in allcontent)
            {
                var models = new List<ModelViewModel>();
                foreach (var b in a.ContentModelRecords)
                {
                    models.Add(new ModelViewModel
                    {
                        Id = b.ModelInfor.ID,
                        Name = b.ModelInfor.Modelcode
                    });
                }

                result.Add(new GetAllContentModel
                {
                    Id = a.ID,
                    Name = a.Name,
                    FileUrl = a.FileUrl,
                    Datetime = a.Datetime,
                    Status = a.Status,
                    Models = models

                });
            }

            return Ok(result);
        }


        [HttpPost]
        [ActionName("content")]
        public bool UpdateContentStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var content = _db.ContentInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                content.Status = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        [HttpPost]
        [ActionName("course")]
        public bool UpdateCourseStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var content = _db.CourseInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                content.Status = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        [HttpPost]
        [ActionName("courseDisable")]
        public bool UpdateCourseDisable([FromBody] UpdateStatus ucs)
        {
            try
            {
                var content = _db.CourseInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                content.IsDisable = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        [HttpPost]
        public bool VenueStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var content = _db.StoreInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                content.Status = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        
        [HttpPost]
        public bool RoomStatus([FromBody] UpdateStatus ucs)
        {
            try
            {
                var room = _db.RoomInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                room.Status = ucs.sts;
                _db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        [HttpPost]
        public bool RoomDisable([FromBody] UpdateStatus ucs)
        {
            try
            {
                var room = _db.RoomInfors.Where(x => x.ID == ucs.id).FirstOrDefault();
                room.IsDisable = ucs.sts;
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

