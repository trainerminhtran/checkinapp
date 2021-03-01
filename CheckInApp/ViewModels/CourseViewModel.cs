using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;

namespace Checkinapp.ViewModels
{
    public class CreateCourseViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Datetime { get; set; }
        public int platformID { get; set; }
        public int TestId { get; set; }
        public List<int> contentIDs { get; set; }
    }

    public class PlatformSelectedViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
    public class ContentOfCourseViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    
}