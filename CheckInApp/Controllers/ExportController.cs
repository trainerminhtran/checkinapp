using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;
using Checkinapp.ViewModels;
using OfficeOpenXml;
using System.IO;
using OfficeOpenXml.Table;
using System.Data;
using System.Drawing;
using System.Web.Http.Routing.Constraints;
using System.Web.UI;
using System.Web.UI.WebControls;
using CheckInApp.Services;
using CheckInApp.ViewModels;

namespace CheckInApp.Controllers
{
    public class ExportController : Controller
    {
        private dbEntities _db = new dbEntities();
        private Config cf = new Config();
        private DatetimeService ds = new DatetimeService();

        private UserService _userService = new UserService();
        // GET: Export
        [HttpPost]
        public ActionResult Index()
        {
            var checkins = _db.CheckinInfors.Select(x => new ExportViewModel
            {
                Fullname = x.UserInfor.EmployeeInfor.Fullname,
                AccountName = x.UserInfor.EmployeeInfor.StoreInfor.AccountInfor.Fullname,
                VenueName = x.RoomInfor.StoreInfor.Name,
                VenueProvince = x.RoomInfor.StoreInfor.DistrictInfor.ProvinceInfor.NameEN,
                MSC = x.UserInfor.EmployeeInfor.StoreInfor.MCScode,
                Day = x.Datetime.Day,
                Month = x.Datetime.Month,
                Yeah = x.Datetime.Year,
                ClassName = x.RoomInfor.Name,
                CourseName = x.RoomInfor.CourseInfor.Name,
                MNV = x.UserInfor.EmployeeInfor.MNV,
                TrainerName = x.RoomInfor.TrainerRoomRecords.FirstOrDefault().UserInfor.EmployeeInfor.Fullname
            }).ToList();
            //var _modelDK = (from dk in db.DangKies
            //    where ckb_ID.Contains(dk.Id)
            //    orderby (dk.MaPin)
            //    select new { Ho_Ten = dk.HoTen, Dia_Chi = dk.DiaChi, So_Dien_Thoai = "'" + dk.DienThoai, Noi_Dung = dk.NgonNgu + " - " + dk.PhienBan, Thu_Ho = CMSHelper.LoadSetting("price-" + dk.PhienBan).field_1, Bill = dk.MaPin }).ToList();
            GridView gv = new GridView();
            gv.DataSource = checkins;
            gv.DataBind();
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment; filename=DanhSach.xls");
            Response.ContentType = "application/ms-excel";
            Response.Charset = "";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            htw.WriteLine("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">");
            gv.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

            return RedirectToAction("index","Room");
        }
        [HttpPost]
        public ActionResult RoomExport(int RoomId)
        {
            var checkins = _db.CheckinInfors.Where(x=>x.RoomID == RoomId).Select(x => new ExportViewModel
            {
                MSC = x.UserInfor.EmployeeInfor.StoreInfor.MCScode,
                Fullname = x.UserInfor.EmployeeInfor.Fullname,
                AccountName = x.UserInfor.EmployeeInfor.StoreInfor.AccountInfor.Fullname,
                VenueName = x.RoomInfor.StoreInfor.Name,
                VenueProvince = x.RoomInfor.StoreInfor.DistrictInfor.ProvinceInfor.NameEN,
                CourseName = x.RoomInfor.CourseInfor.Name,
                MNV = x.UserInfor.EmployeeInfor.MNV,
                TrainerName = x.RoomInfor.TrainerRoomRecords.FirstOrDefault().UserInfor.EmployeeInfor.Fullname
            }).ToList();
            GridView gv = new GridView();
            gv.DataSource = checkins;
            gv.DataBind();
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment; filename=DanhSachDiemDanh."+ checkins.First().Day + ".xls");
            Response.ContentType = "application/ms-excel";
            Response.Charset = "";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            htw.WriteLine("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">");
            gv.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

            return RedirectToAction("index", "Room");
        }
    }
}