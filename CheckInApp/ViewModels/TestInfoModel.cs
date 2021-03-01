using CheckInApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class TestInfoCreateModel
    {
        public List<QuestionInfor> DataQuestion { get; set; }
        public string IdQuestion { get; set; }
    }
    public class TestInfoCreateRequestModel
    {
        public string Name { get; set; }
        public string IdQuestion { get; set; }
    }
    public class TestInfoListModel
    {
        public string Name { get; set; }
        public int CountQuestion { get; set; }
        public int ID { get; set; }
    }
}