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
    }
}