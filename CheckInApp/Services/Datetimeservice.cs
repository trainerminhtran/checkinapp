using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace CheckInApp.Services
{
    public class DatetimeService
    {
        public DateTime CreateEnDateTimeFromVNdate(string date)
        {
            return DateTime.Parse(date, new CultureInfo("vi-VN", false));
        }

        public DateTime GetDateTimeNow()
        {
            return DateTime.Parse(DateTime.Today.Day + "/" + DateTime.Today.Month + "/" + DateTime.Today.Year, new CultureInfo("vi-VN", false));
        }

        public string GetDateString(DateTime dt)
        {
            return dt.Day + "/" + dt.Month + "/" + dt.Year;
        }
        public string GetEnDateString(DateTime dt)
        {
            return dt.Day + "/" + dt.Day + "/" + dt.Year;
        }
        //public DateTime ConvertToVNDate(DateTime date)
        //{
        //    return date
        //}
    }
}