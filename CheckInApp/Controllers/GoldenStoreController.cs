using System;
using System.Web.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExcelDataReader;
using System.Data;
using System.IO;
using CheckInApp.Services;
using CheckInApp.Models;
using CheckInApp.ViewModels;
namespace CheckInApp.Controllers
{
    public class GoldenStoreController : Controller
    {
        private readonly dbEntities _db = new dbEntities();
        private static string path = "";

        // GET: DearlerFSM
        public ActionResult Index()
        {
            path = Server.MapPath("~/Uploads/Data.csv");
            if (!Directory.Exists(Server.MapPath("~/ Uploads")))
            {
                Directory.CreateDirectory(Server.MapPath("~/Uploads"));
            }
            if (!System.IO.File.Exists(path))
            {

                string[] title = new string[] {
                     "SPlusCode",
                     "Fullname",
                     "Store",
                     "Region",
                     "ActivityCode",
                     "IsLearned",
                     "SecondTest",
                     "Score"
                };
                // Write sample data to CSV file
                using (CsvFileWriter writer = new CsvFileWriter(path))
                {
                    //Add data to row
                    CsvRow row = new CsvRow();
                    for (int j = 0; j < title.Length; j++)
                        row.Add(title[j]);

                    //add row to file
                    writer.WriteRow(row);
                }
            }

            return View();
        }
        public void ReaderCSV(string path, out int learned, out int tested)
        {
            // Read sample data from CSV file
            using (CsvFileReader reade = new CsvFileReader(path))
            {
                var l = -1;//trừ dòng đầu tiên
                var t = 0;
                CsvRow row = new CsvRow();
                while (reade.ReadRow(row))
                {
                    if (!string.IsNullOrEmpty(row[5]))
                    {
                        l++;
                    }
                    var score = 0;
                    Int32.TryParse(row[6], out score);
                    if (score > 0)
                    {
                        t++;
                    }
                }
                learned = l;
                tested = t;
            }

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateDearler(FormCollection collection, HttpPostedFileBase file)
        {
            try
            {
                #region Variable Declaration  
                string message = "";
                DataSet dsexcelRecords = new DataSet();
                IExcelDataReader reader = null;
                Stream FileStream = null;
                #endregion

                #region Save DealerFSM Detail From Excel  

                if (file.ContentLength > 0)
                {
                    FileStream = file.InputStream;

                    if (FileStream != null)
                    {
                        if (file.FileName.EndsWith(".xls"))
                            reader = ExcelReaderFactory.CreateBinaryReader(FileStream);
                        else if (file.FileName.EndsWith(".xlsx"))
                            reader = ExcelReaderFactory.CreateOpenXmlReader(FileStream);
                        else
                            message = "The file format is not supported.";

                        dsexcelRecords = reader.AsDataSet();
                        reader.Close();

                        var datas = _db.DearlerFSMUploads;
                        if (dsexcelRecords != null && dsexcelRecords.Tables.Count > 0)
                        {
                            DataTable dtStudentRecords = dsexcelRecords.Tables[0];
                            for (int i = 1; i < dtStudentRecords.Rows.Count; i++)
                            {
                                DearlerFSMUpload objStudent = new DearlerFSMUpload();
                                objStudent.MNV = Convert.ToString(dtStudentRecords.Rows[i][1]);
                                objStudent.SPlusCode = Convert.ToString(dtStudentRecords.Rows[i][2]);
                                objStudent.Fullname = Convert.ToString(dtStudentRecords.Rows[i][3]);

                                objStudent.Store = Convert.ToString(dtStudentRecords.Rows[i][4]);

                                objStudent.Region = Convert.ToString(dtStudentRecords.Rows[i][5]);
                                var user = datas.Where(x => x.SPlusCode == objStudent.SPlusCode).FirstOrDefault();
                                if (user != null)
                                {
                                    _db.DearlerFSMUploads.Remove(user);
                                }
                                _db.DearlerFSMUploads.Add(objStudent);
                            }
                        }

                        int output = _db.SaveChanges();
                        if (output > 0)
                            message = "Successfully uploaded.";
                        else
                            message = "Have no anyone uploaded.";
                    }
                    else
                        message = "Selected file is empty.";
                }
                else
                    message = "Invalid File.";
                ModelState.AddModelError("message", message);

                TempData["DSuccess"] = message;
                return View("Index");
                #endregion
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}