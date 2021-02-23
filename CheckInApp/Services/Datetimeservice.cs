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

        public string GetVNDateString(DateTime dt)
        {
            return dt.Day + "/" + dt.Month + "/" + dt.Year;
        }
        public string GetEnDateString(DateTime dt)
        {
            return dt.Month + "/" + dt.Day + "/" + dt.Year;
        }
        public DateTime ConvertFromUnixTimestamp(double timestamp)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            return origin.AddSeconds(timestamp);
        }

        public long ConvertToUnixTimestamp(DateTime date)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            TimeSpan diff = date.ToUniversalTime() - origin;
            return Convert.ToInt64(Math.Floor(diff.TotalSeconds));
        }
    }
}