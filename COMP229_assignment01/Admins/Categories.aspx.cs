using System;
using System.Linq;

namespace COMP229_assignment01.Admins
{
	public partial class Categories : System.Web.UI.Page
	{
		protected void ButtonCreateNewCategory_OnClick(object sender, EventArgs e)
		{
			var categoryName = TextBoxNewCategory.Text.ToLower();
			if (Db.Context.Categories.Any(c => c.Name.ToLower() == categoryName))
			{
				LabelCreateCategoryMessage.Text = $"Category \"{TextBoxNewCategory.Text}\" already exists";
				LabelCreateCategoryMessage.CssClass = "alert alert-warning";
				return;
			}

			Db.Context.Categories.Add(new Category() { Name = TextBoxNewCategory.Text });
			Db.Context.SaveChanges();
			LabelCreateCategoryMessage.Text = $"Category \"{TextBoxNewCategory.Text}\" added";
			LabelCreateCategoryMessage.CssClass = "alert alert-info";
		}
	}
}