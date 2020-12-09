using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class VenueCreateViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }

        public string ContactName { get; set; }
        public string ContactTel { get; set; }
        public int provinceID { get; set; }
        public int districtID { get; set; }
        public int platformID { get; set; }
        public bool Status { get; set; }

    }
    public class VenueViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string ContactName { get; set; }
        public string ContactTel { get; set; }
        public TrainerProvince Province { get; set; }
        public bool Sts { get; set; }
    }

    public class VenueforRoomViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}