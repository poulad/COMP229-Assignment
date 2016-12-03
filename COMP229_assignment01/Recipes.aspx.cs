using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Security;

namespace COMP229_assignment01
{
	public partial class Recipes : System.Web.UI.Page
	{
		public ICollection GetRecipes()
		{
			var list = new List<object>();
			IQueryable<Recipe> results;

			//if (!User.Identity.IsAuthenticated) // Guest users - Only public recipes
			//	results = Db.Context.Recipes.Where(r => !r.IsPrivate); else

			if (User.IsInRole("Administrators")) // Admins see all recipes
				results = Db.Context.Recipes;
			else // Users see only public recipes and their own private recipes
			{
				var username = User.Identity.Name.ToLower();
				results = Db.Context.Recipes.Where(r => !r.IsPrivate || (r.aspnet_Users.LoweredUserName == username && r.IsPrivate));
			}

			results = results.Include("Cuisine").Include("Category").Include("aspnet_Users");

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