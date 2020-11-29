using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class UserSessionData
    {
        public string UserTel { get; set; }
        public string returnUrl { get; set; }
    }

    public class UserViewModel
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string UserTel { get; set; }
        public string StoreName { get; set; }
        public string StoreAddress { get; set; }
        public string PositionName { get; set; }
        public string returnUrl { get; set; }
    }

    public class UserCreateViewModel
    {
        public int StoreId { get; set; }
        public string MNV { get; set; }
        public string Name { get; set; }
        public string Tel { get; set; }
        public int PositionId { get; set; }
        public string returnUrl { get; set; }

    }
}