using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace COMP229_assignment01
{
   public class Global : System.Web.HttpApplication
   {

      protected void Application_Start(object sender, EventArgs e)
      {

      }

      protected void Session_Start(object sender, EventArgs e)
      {

      }

      protected void Application_BeginRequest(object sender, EventArgs e)
      {

      }

      protected void Application_AuthenticateRequest(object sender, EventArgs e)
      {

      }

      protected void Application_Error(object sender, EventArgs e)
      {

      }

      protected void Session_End(object sender, EventArgs e)
      {

      }

      protected void Application_End(object sender, EventArgs e)
      {

      }

      protected void Application_PostMapRequestHandler(object sender, EventArgs e)
      {
         Page activePage = HttpContext.Current.Handler as Page;
         if (activePage == null)
         {
            return;
         }
         activePage.PreInit += (s, ea) =>
         {
            string selectedTheme = HttpContext.Current.Session["theme"] as string;
            if (selectedTheme != null)
            {
               activePage.Theme = selectedTheme;
            }
         };
      }
   }
}