using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http.Filters;
using System.Web.Mvc;
using System.Web.Mvc.Filters;
using System.Web.Routing;
using CheckInApp.Models;
using ActionFilterAttribute = System.Web.Mvc.ActionFilterAttribute;
using IAuthenticationFilter = System.Web.Http.Filters.IAuthenticationFilter;

namespace CheckInApp.Services
{
    public class CustomSercurity
    {
    }

    public class CustomAuthenticationFilter : ActionFilterAttribute, IAuthenticationFilter
    {
        public void OnAuthentication(AuthenticationContext filterContext)
        {
            if (string.IsNullOrEmpty(Convert.ToString(filterContext.HttpContext.Session["UserTel"])))
            {
                filterContext.Result = new HttpUnauthorizedResult();
            }
        }
        public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
        {
            if (filterContext.Result == null || filterContext.Result is HttpUnauthorizedResult)
            {
                //Redirecting the user to the Login View of Account Controller  
                filterContext.Result = new RedirectToRouteResult(
                    new RouteValueDictionary
                    {
                        { "controller", "Account" },
                        { "action", "Login" }
                    });
            }
        }

        public Task AuthenticateAsync(HttpAuthenticationContext context, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }

        public Task ChallengeAsync(HttpAuthenticationChallengeContext context, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }
    }

    public class CustomAuthorizeAttribute : AuthorizeAttribute
    {
        private readonly dbEntities _db = new dbEntities();
        private readonly string[] allowedroles;
        public CustomAuthorizeAttribute(params string[] roles)
        {
            this.allowedroles = roles;
        }
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            const bool authorize = false;
            var userTel = Convert.ToString(httpContext.Session["UserTel"]);
            if (string.IsNullOrEmpty(userTel)) return authorize;


            var user = _db.UserInfors.FirstOrDefault(x => x.Tel == userTel);
            var permission = _db.PermissionInfors.FirstOrDefault(x => x.ID == user.PermissionID);
            return allowedroles.Any(r => r == permission.Name) || authorize;
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            filterContext.Result = new RedirectToRouteResult(
                new RouteValueDictionary
                {
                    { "controller", "User" },
                    { "action", "Login" },
                    {"returnUrl" , filterContext.HttpContext.Request.Url.GetComponents(UriComponents.PathAndQuery, UriFormat.SafeUnescaped)}
                });
        }
    }
}