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
    
    public partial class CheckinImageRecord
    {
        public long ID { get; set; }
        public long CheckinID { get; set; }
        public Nullable<long> ImageID { get; set; }
    
        public virtual ImageInfor ImageInfor { get; set; }
        public virtual CheckinInfor CheckinInfor { get; set; }
    }
}
