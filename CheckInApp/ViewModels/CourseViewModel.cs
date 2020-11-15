﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;

namespace Checkinapp.ViewModels
{
    public class CourseViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Datetime { get; set; }
        public int platformID { get; set; }
        public List<int> contentIDs { get; set; }
    }

    public class ContentOfCourseViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    
}