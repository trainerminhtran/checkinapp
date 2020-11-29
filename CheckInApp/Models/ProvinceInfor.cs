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
    
    public partial class ProvinceInfor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProvinceInfor()
        {
            this.DistrictInfors = new HashSet<DistrictInfor>();
            this.VenueInfors = new HashSet<VenueInfor>();
            this.TrainerInfors = new HashSet<TrainerInfor>();
        }
    
        public int ID { get; set; }
        public string NameVN { get; set; }
        public string NameEN { get; set; }
        public int RegionID { get; set; }
        public Nullable<int> CityRuralID { get; set; }
    
        public virtual CityRuralInfor CityRuralInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DistrictInfor> DistrictInfors { get; set; }
        public virtual RegionInfor RegionInfor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VenueInfor> VenueInfors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainerInfor> TrainerInfors { get; set; }
    }
}
