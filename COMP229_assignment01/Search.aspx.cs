using System;
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

			var searchResults =
				from r in Db.Context.Recipes
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
					r.IsPrivate,
				};

			GridViewResults.DataSource = searchResults.ToList();
			GridViewResults.DataBind();
			LabelMessage.Text = $"{searchResults.Count()} records found";
			LabelMessage.Visible = GridViewResults.Visible = true;
		}
	}
}