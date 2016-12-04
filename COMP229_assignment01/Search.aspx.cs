using System;
using System.Data.Entity;
using System.Linq;


namespace COMP229_assignment01
{
	public partial class Search : System.Web.UI.Page
	{
		protected void ButtonSearch_OnClick(object sender, EventArgs e)
		{
			string recipeName = TextBoxRecipeName.Text;
			if (string.IsNullOrWhiteSpace(recipeName))
				recipeName = null;

			string author = TextBoxAuthor.Text;
			if (string.IsNullOrWhiteSpace(author))
				author = null;

			bool? onlyPrivate = null;
			if (RadioButtonPublic.Checked)
				onlyPrivate = false;
			else if (RadioButtonPrivate.Checked)
				onlyPrivate = true;

			IQueryable<Recipe> accessibleRecipes;
			if (User.IsInRole("Administrators")) // Admins see all recipes
				accessibleRecipes = Db.Context.Recipes;
			else // Users see only public recipes and their own private recipes
			{
				var username = User.Identity.Name.ToLower();
				accessibleRecipes = Db.Context.Recipes.Where(r => !r.IsPrivate || (r.aspnet_Users.LoweredUserName == username && r.IsPrivate));
			}
			accessibleRecipes = accessibleRecipes.Include("Cuisine").Include("Category").Include("aspnet_Users");

			var searchResults =
				from r in accessibleRecipes
				where
					r.IsPrivate == (onlyPrivate ?? r.IsPrivate) &&
					r.Name.ToUpper().Contains((recipeName ?? r.Name).ToUpper()) &&
					r.aspnet_Users.UserName.ToUpper().Contains((author ?? r.aspnet_Users.UserName).ToUpper())
				select new
				{
					r.Name,
					Author = r.aspnet_Users.UserName,
					Category = r.Category.Name,
					r.CookingTime,
					Cuisine = r.Cuisine.Name,
					r.Description,
					IsPrivate = r.IsPrivate ? "Private" : "Public",
				};

			GridViewResults.DataSource = searchResults.ToList();
			GridViewResults.DataBind();
			LabelMessage.Text = $"{searchResults.Count()} recipes found";
			LabelMessage.Visible = GridViewResults.Visible = true;
		}
	}
}