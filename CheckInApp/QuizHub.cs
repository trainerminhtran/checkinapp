using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;

namespace CheckInApp
{
    [HubName("quizHub")]
    public class QuizHub : Hub
    {
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
            Clients.Group(nameGroup).addNewMessageToGroup(message);
            Clients.All.addNewMessageToGroup(nameGroup, message);
        }
    }
}