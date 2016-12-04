using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace COMP229_assignment01
{
	public partial class ViewRecipes : System.Web.UI.Page
	{
		public ICollection GetMyRecipes()
		{
			var list = new List<object>();
			var username = User.Identity.Name.ToLower();
			var results = Db.Context.Recipes.Where(r => r.aspnet_Users.LoweredUserName == username).OrderByDescending(r => r.Id).Include("Cuisine").Include("Category").Include("aspnet_Users");

			foreach (var recipe in results)
			{
				list.Add(new
				{
					recipe.Name,
					recipe.CookingTime,
					recipe.Description,
					IsPrivate = recipe.IsPrivate ? "Private" : "Public",
					Author = recipe.aspnet_Users.UserName,
					Category = recipe.Category.Name,
					Cuisine = recipe.Cuisine.Name,
				});
			}

			return list;
		}
	}
}