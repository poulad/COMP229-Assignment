using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;

namespace COMP229_assignment01.Admins
{
	public partial class Users : System.Web.UI.Page
	{
		public ICollection GetUsers()
		{
			var dataSource = new List<object>();
			foreach (var u in Db.Context.aspnet_Users)
			{
				var roles = "";
				foreach (var r in u.aspnet_Roles)
					roles += $"{r.RoleName}, ";
				roles = roles.Substring(0, roles.Length - 2);
				dataSource.Add(new
				{
					u.UserName,
					RoleName = roles,
					u.aspnet_Membership.Email,
					u.LastActivityDate
				});
			}
			return dataSource;
		}


		public ICollection GetUserNames()
		{
			var user = Db.Context.aspnet_Users.First(u => u.LoweredUserName == User.Identity.Name.ToLower());
			var dataSource = new List<object>()
			{
				new
				{
					user.UserName,
					user.UserId
				}
			};

			foreach (var u in Db.Context.aspnet_Users.Where(aspnetUser => aspnetUser.UserId != user.UserId))
			{
				dataSource.Add(new
				{
					u.UserName,
					u.UserId
				});
			}
			return dataSource;
		}

		protected void ButtonAssignRole_OnClick(object sender, EventArgs e)
		{
			if (Roles.RoleExists(TextBoxRole.Text))
			{
				var userId = Guid.Parse(DropDownUser.SelectedValue);
				var user = Db.Context.aspnet_Users.First(u => u.UserId == userId);
				if (Roles.IsUserInRole(user.UserName, TextBoxRole.Text))
				{
					LabelRoleMessage.Text = $"User already in \"{TextBoxRole.Text.ToLower()}\" role";
				}
				else
				{
					Roles.AddUserToRole(user.UserName, TextBoxRole.Text);
					LabelRoleMessage.Text = "Role assigned";
					UsersDataSource.DataBind();
				}
				LabelRoleMessage.CssClass = "alert alert-info";
			}
			else
			{
				LabelRoleMessage.Text = "Role doesn't exists";
				LabelRoleMessage.CssClass = "alert alert-warning";
			}
			LabelRoleMessage.Visible = true;
		}
	}
}