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
			foreach (var u in Db.Context.aspnet_Users.Include("aspnet_Roles").Include("aspnet_Membership"))
			{
				dataSource.Add(new
				{
					u.UserName,
					RoleName = string.Join(", ", Roles.GetRolesForUser(u.UserName)),
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
					RepeaterUsers.DataBind();
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


		protected void ButtonRemoveRole_OnClick(object sender, EventArgs e)
		{
			if (Roles.RoleExists(TextBoxRole.Text))
			{
				var userId = Guid.Parse(DropDownUser.SelectedValue);
				var user = Db.Context.aspnet_Users.First(u => u.UserId == userId);
				if (Roles.IsUserInRole(user.UserName, TextBoxRole.Text))
				{
					Roles.RemoveUserFromRole(user.UserName, TextBoxRole.Text);
					LabelRoleMessage.Text = $"User removed from \"{TextBoxRole.Text.ToLower()}\" role";
					if (user.UserName == User.Identity.Name)
						Response.Redirect(Request.RawUrl);
					RepeaterUsers.DataBind();
					UsersDataSource.DataBind();
				}
				else
				{
					LabelRoleMessage.Text = $"User is not in \"{TextBoxRole.Text.ToLower()}\" role";
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


		protected void ButtonCreateUser_OnClick(object sender, EventArgs e)
		{
			MembershipCreateStatus status;
			var user = Membership.CreateUser(TextBoxNewUserName.Text, TextBoxNewPassword.Text, TextBoxNewEmail.Text, TextBoxNewSecurityQuestion.Text, TextBoxNewSecurityAnswer.Text, true, out status);

			if (status == MembershipCreateStatus.Success && user != null)
			{
				Roles.AddUserToRole(user.UserName, "Users");
				LabelNewUserMessage.CssClass = "alert alert-success";
			}
			else
				LabelNewUserMessage.CssClass = "alert alert-danger";

			switch (status)
			{
				case MembershipCreateStatus.Success:
					LabelNewUserMessage.Text = "User successfully created";
					DropDownUser.DataBind();
					RepeaterUsers.DataBind();
					break;
				case MembershipCreateStatus.DuplicateUserName:
					LabelNewUserMessage.Text = "User name already taken";
					break;
				case MembershipCreateStatus.InvalidPassword:
					LabelNewUserMessage.Text = "Password is not valid";
					break;
				default:
					LabelNewUserMessage.Text = $"Failed to create the user. {status}";
					break;
			}
		}


		protected void ButtonCreateNewRole_OnClick(object sender, EventArgs e)
		{
			if (Roles.RoleExists(TextBoxRole.Text))
			{
				LabelCreateRoleMessage.Text = "Role already exists";
				LabelCreateRoleMessage.CssClass = "alert alert-danger";
				return;
			}

			Roles.CreateRole(TextBoxNewRoleName.Text);
			LabelCreateRoleMessage.Text = $"Role \"{TextBoxNewRoleName.Text}\" created";
			LabelCreateRoleMessage.CssClass = "alert alert-danger";


		}
	}
}