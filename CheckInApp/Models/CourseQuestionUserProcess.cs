//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CheckInApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CourseQuestionUserProcess
    {
        public int ID { get; set; }
        public int QuestionID { get; set; }
        public int ProcessID { get; set; }
        public int RoomID { get; set; }
        public int QuestionOrder { get; set; }
        public Nullable<long> TimeEnd { get; set; }
        public Nullable<long> CheckinInforId { get; set; }
    }
}
