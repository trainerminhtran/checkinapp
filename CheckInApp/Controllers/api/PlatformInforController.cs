using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using CheckInApp.Models;
using Checkinapp.ViewModels;

namespace CheckInApp.Controllers.api
{
    public class PlatformInforController : ApiController
    {
        private dbEntities db = new dbEntities();

        // GET: api/PlatformInfors
        public IHttpActionResult GetPlatformInfors()
        {
            var pts = new List<PlatformSelectedViewModel>();
            var data = db.PlatformInfors.ToList();
            foreach (var d in data)
            {
                pts.Add(new PlatformSelectedViewModel
                {
                        Id = d.ID,
                        Name = d.Name
                    }
                );
            }
            return Ok(pts);
        }

        // GET: api/PlatformInfors/5
        [ResponseType(typeof(PlatformInfor))]
        public IHttpActionResult GetPlatformInfor(int id)
        {
            PlatformInfor platformInfor = db.PlatformInfors.Find(id);
            if (platformInfor == null)
            {
                return NotFound();
            }

            return Ok(platformInfor);
        }

        // PUT: api/PlatformInfors/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPlatformInfor(int id, PlatformInfor platformInfor)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != platformInfor.ID)
            {
                return BadRequest();
            }

            db.Entry(platformInfor).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PlatformInforExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/PlatformInfors
        [ResponseType(typeof(PlatformInfor))]
        public IHttpActionResult PostPlatformInfor(PlatformInfor platformInfor)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.PlatformInfors.Add(platformInfor);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = platformInfor.ID }, platformInfor);
        }

        // DELETE: api/PlatformInfors/5
        [ResponseType(typeof(PlatformInfor))]
        public IHttpActionResult DeletePlatformInfor(int id)
        {
            PlatformInfor platformInfor = db.PlatformInfors.Find(id);
            if (platformInfor == null)
            {
                return NotFound();
            }

            db.PlatformInfors.Remove(platformInfor);
            db.SaveChanges();

            return Ok(platformInfor);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PlatformInforExists(int id)
        {
            return db.PlatformInfors.Count(e => e.ID == id) > 0;
        }
    }
}