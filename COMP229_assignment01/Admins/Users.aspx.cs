using System.Collections;
using System.Collections.Generic;

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
	}
}