using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.Services
{
    public enum RoomEnum
    {
        Hoitruong =1,
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
}