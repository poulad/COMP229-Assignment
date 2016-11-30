using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_assignment01
{
	public partial class SignOut : System.Web.UI.Page
	{
		protected void Page_PreInit(object sender, EventArgs e)
		{
			FormsAuthentication.SignOut();
			Response.Redirect("Default.aspx", true);
		}
	}
}