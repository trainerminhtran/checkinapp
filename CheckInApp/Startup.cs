using Owin;
using Microsoft.Owin;
[assembly: OwinStartup(typeof(CheckInApp.Startup))]

namespace CheckInApp
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }
    }
}