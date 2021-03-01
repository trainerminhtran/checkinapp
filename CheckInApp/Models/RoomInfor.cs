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
    
    public partial class RoomInfor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RoomInfor()
        {
            this.TrainerRoomRecords = new HashSet<TrainerRoomRecord>();
            this.CheckinInfors = new HashSet<CheckinInfor>();
        }
    
        public int ID { get; set; }
        public int CourseID { get; set; }
        public int VenueID { get; set; }
        public string Name { get; set; }
        public string RoomUrl { get; set; }
        public byte[] QRCodeImage { get; set; }
        public Nullable<decimal> RoomFee { get; set; }
        public Nullable<decimal> TeabreakFee { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> NoDaysGetGift { get; set; }
        public System.DateTime Datetime { get; set; }
        public System.Guid Guid { get; set; }
    
        public virtual CourseInfor CourseInfor { get; set; }
        public virtual StoreInfor StoreInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainerRoomRecord> TrainerRoomRecords { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CheckinInfor> CheckinInfors { get; set; }
    }
}
