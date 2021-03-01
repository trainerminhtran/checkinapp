using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class CreateQuestionModel
    {
        public HttpPostedFileBase file { get; set; }
    }
    public class QuestionImportModel
    {
        public string QuestionContent { get; set; }
        public string TrueChoose { get; set; }
        public string Choose1 { get; set; }
        public string Choose2 { get; set; }
        public string Choose3 { get; set; }
        public string Choose4 { get; set; }
    }

    public class QuestionViewModel
    {
        public string QuestionContent { get; set; }
        public string TrueChoose { get; set; }
        public string Choose1 { get; set; }
        public string Choose2 { get; set; }
        public string Choose3 { get; set; }
        public string Choose4 { get; set; }
        public DateTime Datetime { get; set; }
        public bool Status { get; set; }
        public int ID { get; set; }
    }
}