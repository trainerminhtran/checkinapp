using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class PreCheckinViewModel
    {
        public string url { get; set; }
        public int RoomId { get; set; }
        public string RoomName { get; set; }
        public string TrainerName { get; set; }
        public string QRCode { get; set; }
    }

    public class UpdateSignatureCheckin
    {

        public int RoomId { get; set; }
        public int UserId { get; set; }
        public byte[] Signature { get; set; }
    }
}