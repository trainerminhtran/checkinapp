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
    
    public partial class QuestionInfor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public QuestionInfor()
        {
            this.TestQuestionRecords = new HashSet<TestQuestionRecord>();
            this.AnswerRecords = new HashSet<AnswerRecord>();
        }
    
        public int ID { get; set; }
        public int CatID { get; set; }
        public int LevelID { get; set; }
        public string QuestionContent { get; set; }
        public string TrueChoose { get; set; }
        public string Choose1 { get; set; }
        public string Choose2 { get; set; }
        public string Choose3 { get; set; }
        public string Choose4 { get; set; }
        public Nullable<System.DateTime> Datetime { get; set; }
        public Nullable<bool> Status { get; set; }
        public string QuestionCode { get; set; }
    
        public virtual CatInfor CatInfor { get; set; }
        public virtual LevelInfor LevelInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TestQuestionRecord> TestQuestionRecords { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnswerRecord> AnswerRecords { get; set; }
    }
}
