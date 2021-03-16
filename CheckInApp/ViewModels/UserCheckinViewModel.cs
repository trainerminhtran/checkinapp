using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class UserCheckinViewModel
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string UserTel { get; set; }
        public string StoreName { get; set; }
        public string StoreAddress { get; set; }
        public string PositionName { get; set; }
        public int RoomId { get; set; }
        public string CourseName { get; set; }
        public string TrainerName { get; set; }
        public string Venue { get; set; }
        public string message { get; set; }
        public bool IsMotivationGift { get; set; }
        public long checkinId { get; set; }
        public string Date { get; set; }
        public byte[] Signature{ get; set; }
        public Guid RoomGuid { get; set; }
        public int TrueAns { get; set; }
        public int TotalAns { get; set; }
        public bool DoTest { get; set; }
        public int TypeTest { get; set; }
        public bool DoTestAgain { get; set; }
        public int Score { get; set; }
    } 
}