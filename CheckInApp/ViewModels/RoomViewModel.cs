using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class RoomViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Datetime { get; set; }
        public string TrainerName { get; set; }
        public string VenueName { get; set; }
        public string VenueAddress { get; set; }
        public bool Status { get; set; }
        public string QRCode{ get; set; }
        public string RoomUrl{ get; set; }
        public Guid RoomGuid { get; set; }
        public bool IsDisable { get; set; }
        public int TypeTest { get; set; }
    }


    public class RoomCreateViewModel
    {
        public string Name { get; set; }
        public string Datetime { get; set; }
        public decimal? RoomFee { get; set; }
        public decimal? TeabreakFee { get; set; }
        public int CourseID { get; set; }
        public int[] TrainerID { get; set; }
        public int VenueID { get; set; }
        public int NoDaysGetGift { get; set; }
        public int IsStore { get; set; }

    }

    public class RoomToPrintViewModel
    {
        public int RoomId { get; set; }
        public string CourseName { get; set; }
        public string VenueName { get; set; }
        public string RoomName { get; set; }
        public string TrainerName { get; set; }
        public string DatetimeEnString { get; set; }
        public List<Attendence> Attendences { get; set; }

    }

    public class Attendence
    {
        public int Id { get; set; }
        public string MNV { get; set; }
        public string Name { get; set; }
        [Display(Name="Position")]
        public string PositionName { get; set; }
        public string Tel { get; set; }
        public string StoreName { get; set; }
        public string Signature { get; set; }
    }
}