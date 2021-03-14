using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class JoinRoom
    {
        public string FullName { get; set; }
        public Guid RoomId { get; set; }
        public int UserId { get; set; }
    }
    public class StartRoom
    {
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
    }

    public class QuizManagerView
    {
        public string TestName { get; set; }
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int Process { get; set; }
    }
    public class QuizView
    {
        public string TestName { get; set; }
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int Process { get; set; }
        public int Total { get; set; }
    }

    public class QuizManagerListView
    {
        public string TestName { get; set; }
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public long Time { get; set; }
        public int Total { get; set; }
        public int QuestionId { get; set; }
        public string QuestionContent { get; set; }
        public string Choose1 { get; set; }
        public string Choose2 { get; set; }
        public string Choose3 { get; set; }
        public string Choose4 { get; set; }
        public string ChooseTrue { get; set; }
        public int AnsTime { get; set; }
        public int OrderNumber { get; set; }
    }
    public class Ansewr
    {
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int QuestionId { get; set; }
        public int Choose { get; set; }
        public int TimeAns { get; set; }
    }
    public class TopResult
    {
        public Guid RoomId { get; set; }
        public int TestId { get; set; }
        public int QuestionId { get; set; }
    }
    public class TopResultView
    {
        public int Top { get; set; }
        public string FullName { get; set; }
        public int TrueAns { get; set; }
        public int Total { get; set; }
        public int Score { get; set; }
    }

    public class ListAnsManager
    {
        public List<TopResultView> Data { get; set;}
        public int EndProcess { get; set; }
    }

    public class TopResultUseView
    {
        public List<TopResultView> Data { get; set; }
        public string TestName { get; set; }
        public string FullName { get; set; }
        public int AnsTime { get; set; }
        public int OrderNumber { get; set; }
        public bool FinishTest { get; set; }
        public string CheckinUrl { get; set; }
    }
}