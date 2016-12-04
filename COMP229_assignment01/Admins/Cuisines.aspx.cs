using System;
using System.Linq;

namespace COMP229_assignment01.Admins
{
	public partial class Cuisines : System.Web.UI.Page
	{
		protected void ButtonCreateNewCuisine_OnClick(object sender, EventArgs e)
		{
			var cuisineName = TextBoxNewCuisine.Text.ToLower();
			if (Db.Context.Cuisines.Any(c => c.Name.ToLower() == cuisineName))
			{
				LabelCreateCuisineMessage.Text = $"Cuisine \"{TextBoxNewCuisine.Text}\" already exists";
				LabelCreateCuisineMessage.CssClass = "alert alert-warning";
				return;
			}

			Db.Context.Cuisines.Add(new Cuisine() { Name = TextBoxNewCuisine.Text });
			Db.Context.SaveChanges();
			LabelCreateCuisineMessage.Text = $"Cuisine \"{TextBoxNewCuisine.Text}\" added";
			LabelCreateCuisineMessage.CssClass = "alert alert-info";
		}
	}
}