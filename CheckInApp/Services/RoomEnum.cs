using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.Services
{
    public enum RoomEnum
    {
        Inclass =1,
        Onsite,
        Livestream,
        Webtraining,
        Event
    }

    public enum PermissionEnum
    {
        User =1,
        Trainer
    }
    public enum ProcessIDEnum
    {
        Create = 1,
        Process = 2,
        Finish = 3,
        NextQuestion = 4,
    }

    public enum TestType
    {
        RealTime =1,
        NonRealTime = 2,
    }
}