using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class ExportViewModel
    {
        [Display(Name = "MNV")]
        public string MNV { get; set; }
        [Display(Name = "Full Name")]
        public string Fullname { get; set; }
        [Display(Name = "Account Name")]
        public string AccountName { get; set; }
        [Display(Name = "MCS Code")]
        public string MSC { get; set; }
        [Display(Name = "Checkin Day")]
        public int Day { get; set; }
        [Display(Name = "Checkin Month")]
        public int Month { get; set; }
        [Display(Name = "Checkin Year")]
        public int Yeah { get; set; }
        [Display(Name = "Class Name")]
        public string ClassName { get; set; }
        [Display(Name = "Course Name")]
        public string CourseName { get; set; }
        [Display(Name = "Trainer Name")]
        public string TrainerName { get; set; }
        [Display(Name = "Venue Name")]
        public string VenueName { get; set; }     
        [Display(Name = "Venue Province")]
        public string VenueProvince { get; set; }
    }
}