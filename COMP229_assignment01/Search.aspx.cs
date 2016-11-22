using System;
using System.Linq;


namespace COMP229_assignment01
{
	public partial class Search : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void ButtonSearch_OnClick(object sender, EventArgs e)
		{
			/*
			var searchResults =
				from r in Db.Context.Recipes
				where
					
					//r.IsPrivate == CheckBoxPrivate.Checked &&
					r.CuisineId == cuisineId &&
					r.Category.Name.ToUpper().Contains((category ?? r.Category.Name).ToUpper()) &&
					r.Name.ToUpper().Contains((recipeName ?? r.Name).ToUpper())
				select new
				{
					r.Name,
					r.Author,
					Category = r.Category.Name,
					r.CookingTime,
					Cuisine = r.Cuisine.Name,
					r.Description,
				};

			GridViewResults.DataSource = searchResults.ToList();
			GridViewResults.DataBind();
			GridViewResults.Enabled = true;
			*/
		}
	}
}