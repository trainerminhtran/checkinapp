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
    
    public partial class CheckinInfor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CheckinInfor()
        {
            this.AnswerInfors = new HashSet<AnswerInfor>();
            this.CheckinImageRecords = new HashSet<CheckinImageRecord>();
            this.AnswerRecords = new HashSet<AnswerRecord>();
        }
    
        public long ID { get; set; }
        public int UserID { get; set; }
        public int RoomID { get; set; }
        public byte[] Signature { get; set; }
        public Nullable<bool> IsMotivationGift { get; set; }
        public Nullable<bool> IsMotivationActive { get; set; }
        public Nullable<bool> IsDoorGift { get; set; }
        public Nullable<bool> IsRecheckAnswer { get; set; }
        public System.DateTime Datetime { get; set; }
        public Nullable<int> CountingScore { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnswerInfor> AnswerInfors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CheckinImageRecord> CheckinImageRecords { get; set; }
        public virtual RoomInfor RoomInfor { get; set; }
        public virtual UserInfor UserInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnswerRecord> AnswerRecords { get; set; }
    }
}
