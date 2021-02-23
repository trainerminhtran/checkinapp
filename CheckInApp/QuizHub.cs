using System;
using Checkinapp.ViewModels;
using CheckInApp.Models;
using CheckInApp.Services;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using Newtonsoft.Json;
using System.Data.Entity;
using System.Linq;

namespace CheckInApp
{
    [HubName("quizHub")]
    public class QuizHub : Hub
    {
        private readonly dbEntities _db = new dbEntities();
        private DatetimeService ds = new DatetimeService();
        public void Hello()
        {
            Clients.All.hello();
        }
        public void Send(string name, string message)
        {
            Clients.All.addNewMessageToGroup(name, message);
        }
        public void Group(string nameGroup, string message)
        {
            if (nameGroup == "Start")
            {
                var objeStart = JsonConvert.DeserializeObject<StartRoom>(message);
                var ro = _db.RoomInfors.FirstOrDefault(x => x.Guid == objeStart.RoomId);
                var process = _db.CourseQuestionProcesses
                    .Where(x => x.RoomID == ro.ID && x.ProcessID == (int) ProcessIDEnum.Create)
                    .OrderBy(x => x.QuestionOrder).FirstOrDefault();
                if (process != null)
                {
                    process.ProcessID = (int) ProcessIDEnum.Process;
                    process.TimeEnd = ds.ConvertToUnixTimestamp(DateTime.Now) + 20;
                    _db.Entry(process).State = EntityState.Modified;
                    _db.SaveChanges();
                }
            }

            Clients.Group(nameGroup).addNewMessageToGroup(message);
            Clients.All.addNewMessageToGroup(nameGroup, message);
        }
    }
}