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

        public int TestId { get; set; }
    }
    public class QuizView
    {
        public string TestName { get; set; }

        public Guid RoomId { get; set; }

        public int TestId { get; set; }
    }

    public class QuizManagerListView
    {
        public string TestName { get; set; }
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int Time { get; set; }
        public int Total { get; set; }
        public int QuestionId { get; set; }
        public string QuestionContent { get; set; }
        public string Choose1 { get; set; }
        public string Choose2 { get; set; }
        public string Choose3 { get; set; }
        public string Choose4 { get; set; }
    }
    public class Ansewr
    {
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int QuestionId { get; set; }
        public int Choose { get; set; }
    }
}