using CheckInApp.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Globalization;
using System.IO;
using System.Text;
using System.Xml;
using System.Xml.Serialization;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace CheckInApp.Helpers
{
    public class BaseImporter 
    {
        public static DataSet ImportExcelXLS(string fileName, bool hasHeaders)
        {
            FileInfo file = new FileInfo(fileName);
            string hdr = hasHeaders ? "Yes" : "No";
            string strConn;
            if (file.Extension.ToLower() == ".csv")
                strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\"" + file.DirectoryName +
                    "\";OLE DB Services=-4;Extended Properties=\"text;HDR=" + hdr + ";FMT=Delimited(,);CharacterSet=65001;IMEX=1\"";
            else if (file.Extension.ToLower() == ".xlsx")
                strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";OLE DB Services=-4;Extended Properties=\"Excel 12.0;HDR=" +
                    hdr + ";IMEX=1\"";
            else
                strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";OLE DB Services=-4;Extended Properties=\"Excel 8.0;HDR=" +
                    hdr + ";IMEX=1\"";

            DataSet output = new DataSet();

            using (OleDbConnection conn = new OleDbConnection(strConn))
            {
                conn.Open();

                if (file.Extension.ToLower() == ".csv")
                {
                    DataTable tbl = new DataTable("TABLE_NAME");
                    OleDbCommand cmd = new OleDbCommand(string.Format
                        ("SELECT * FROM [{0}]", file.Name),
                        conn);
                    cmd.CommandType = CommandType.Text;
                    new OleDbDataAdapter(cmd).Fill(tbl);
                    output.Tables.Add(tbl);
                }
                else
                {
                    DataTable schemaTable = conn.GetOleDbSchemaTable(
                        OleDbSchemaGuid.Tables, new object[] { null, null, null, "TABLE" });
                    string sheet = schemaTable.Rows[0]["TABLE_NAME"].ToString();

                    if (!sheet.EndsWith("_"))
                    {
                        try
                        {
                            OleDbCommand cmd = new OleDbCommand("SELECT * FROM [" + sheet + "]", conn);
                            cmd.CommandType = CommandType.Text;
                            DataTable outputTable = new DataTable(sheet);
                            output.Tables.Add(outputTable);
                            new OleDbDataAdapter(cmd).Fill(outputTable);
                        }
                        catch (Exception ex)
                        {
                            throw new Exception(ex.Message + string.Format("Sheet:{0}.File:F{1}", sheet, fileName), ex);
                        }
                    }
                }
            }

            return output;
        }

        public List<QuestionImportModel> ToList(string fileName, bool hasHeaders)
        {
            if (!File.Exists(fileName))
                throw new Exception("=>Không tìm thấy file upload.");
            var ds = ImportExcelXLS(fileName, hasHeaders);
            return ds == null ? new List<QuestionImportModel>() : Convert(ds);
        }

        public static DataTable ConvertDataTable(string fileName, bool hasHeaders)
        {
            try
            {
                var ds = ImportExcelXLS(fileName, hasHeaders);
                return ds.Tables[0];
            }
            catch (Exception ex)
            {

                return null;
            }
        }

        public List<QuestionImportModel> Convert(DataSet ds)
        {
            var listData = new List<QuestionImportModel>();
            foreach (DataRow item in ds.Tables[0].Rows)
            {
                var itemObject = new QuestionImportModel();
                itemObject.QuestionContent = item[0].ToString();
                itemObject.Choose1 = item[1].ToString();
                itemObject.Choose2 = item[2].ToString();
                itemObject.Choose3 = item[3].ToString();
                itemObject.Choose4 = item[4].ToString();
                itemObject.TrueChoose = item[5].ToString();
                itemObject.QuestionCode = item[6].ToString();
                listData.Add(itemObject);
            }
            return listData;
        }

        public static int IntParse(string s)
        {
            int i;
            int.TryParse(s, out i);

            return i;
        }

        public static decimal DecimalParse(string s)
        {
            decimal d;
            decimal.TryParse(s, out d);

            return d;
        }

        public static decimal DecimalParseAndReplace(string s)
        {
            s = s.Replace('.', ',');

            return DecimalParse(s);
        }

        public static DateTime TryParseDateTime(string s)
        {
            DateTime dt;

            s = s.ToUpper().Replace("SA", "AM").Replace("CH", "PM");
            try
            {
                try
                {
                    //DateTime.TryParse(s, out dt);
                    dt = DateTime.ParseExact(s, "dd/MM/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);
                    //var sFormats = new string[] { "dd/MM/yyyy hh:mm:ss tt", "MM/dd/yyyy hh:mm:ss tt" };
                    //dt = DateTime.ParseExact(s, sFormats, System.Globalization.CultureInfo.CurrentCulture, System.Globalization.DateTimeStyles.None);
                }
                catch (Exception)
                {
                    var sFormats = new string[] { "dd/MM/yyyy hh:mm:ss tt", "MM/dd/yyyy hh:mm:ss tt" };
                    dt = DateTime.ParseExact(s, sFormats, System.Globalization.CultureInfo.CurrentCulture, System.Globalization.DateTimeStyles.None);
                }
            }
            catch
            {
                throw new Exception("=>Định dạng ngày tháng {0} không hợp lệ.");
            }


            return dt;
        }

        public class DataObject
        {
            public string CUstID { get; set; }
            public string JOINDATE { get; set; }
            public string mobiles { get; set; }
            public string FLLNAM { get; set; }
        }
        public static MemoryStream Transform<T>(List<T> arr, string sxltPath)
        {
            var xmlStream = SerializeToStream(arr);
            //Load xmlstream to xml reader
            var reader = new XmlTextReader(xmlStream);
            //Load xPathdoc from file
            var xPathDoc = new XPathDocument(reader);
            //Init xsltransform
            var xslTransform = new XslCompiledTransform();
            xslTransform.Load(sxltPath);

            var stream = new MemoryStream();
            //Transform xPathdoc to stream with encode UTF8
            xslTransform.Transform(xPathDoc, null, new StreamWriter(stream, Encoding.UTF8));

            //Set seek of stream from 0
            stream.Position = 0;
            return stream;
        }
        private static Stream SerializeToStream<T>(List<T> arr)
        {
            var stream = new MemoryStream();

            var serializer = new XmlSerializer(arr.GetType());
            serializer.Serialize(stream, arr);

            //Set seek of stream from 0
            stream.Position = 0;
            return stream;
        }
    }
}
