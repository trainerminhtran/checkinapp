using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace CheckInApp
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
            config.Routes.MapHttpRoute(
                name: "DefaultApi1",
                routeTemplate: "api/{controller}/{action}/{id}/{sts}",
                defaults: new { controller = "Course", action = "UpdateContentStatus", Id = RouteParameter.Optional, sts = RouteParameter.Optional }
            );
            config.Routes.MapHttpRoute(
                name: "DefaultApi2",
                routeTemplate: "api/{controller}/{action}"
            );
        }
    }
}
