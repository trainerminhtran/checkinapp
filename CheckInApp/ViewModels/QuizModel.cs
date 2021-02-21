using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Checkinapp.ViewModels
{
    public class JoinRoom
    {
        public string FullName { get; set; }
        public Guid RoomId { get; set; }
        public int UserId { get; set; }
    }

    public class QuizManagerView
    {
        public string TestName { get; set; }

        public Guid RoomId { get; set; }
    }
}