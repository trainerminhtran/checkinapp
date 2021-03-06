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
    
    public partial class StoreInfor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StoreInfor()
        {
            this.EmployeeInfors = new HashSet<EmployeeInfor>();
            this.RoomInfors = new HashSet<RoomInfor>();
        }
    
        public int ID { get; set; }
        public int AccountID { get; set; }
        public int DistrictID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string MCScode { get; set; }
        public string DealeCode { get; set; }
        public Nullable<bool> Status { get; set; }
        public string ContactName { get; set; }
        public string ContactTel { get; set; }
        public int PlatformID { get; set; }
    
        public virtual AccountInfor AccountInfor { get; set; }
        public virtual DistrictInfor DistrictInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeInfor> EmployeeInfors { get; set; }
        public virtual PlatformInfor PlatformInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoomInfor> RoomInfors { get; set; }
    }
}
