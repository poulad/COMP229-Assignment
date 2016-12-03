using System;
using System.Web.Security;
using System.Web.UI;

namespace COMP229_assignment01
{
	public partial class Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Roles.RoleExists("Users"))
				Roles.CreateRole("Users");
			if (!Roles.RoleExists("Administrators"))
				Roles.CreateRole("Administrators");

			if (User.Identity.IsAuthenticated && !(User.IsInRole("Users") || User.IsInRole("Administrators")))
			{
				Roles.AddUserToRole(User.Identity.Name, "Users");
			}
			if (User.Identity.Name == "admin" && !Roles.IsUserInRole("Administrators"))
				Roles.AddUserToRole("admin", "Administrators");
		}

	}
}