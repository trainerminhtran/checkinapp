using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CheckInApp.ViewModels;

namespace CheckInApp.Services
{
    public class UserService
    {
        public ReturnUrlModel ReturnUrlModelService(string url)
        {
            var res = new ReturnUrlModel();
            try
            {
                var strAr = url.Split('/');
                res.Controller = strAr[1];
                res.Action = strAr[2];
                res.Guid = strAr.Length > 3 ? strAr[3] : "";
                return res;

            }
            catch (Exception e)
            {
                res.Action = "Index";
                res.Controller = "Room";
                return res;
            }
        }

        public string GetTrainerString(IEnumerable<string> trs)
        {
            return string.Join(" | ", trs);
        }
    }

}