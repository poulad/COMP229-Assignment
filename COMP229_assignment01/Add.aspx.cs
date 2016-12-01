using System;
using System.Linq;

namespace COMP229_assignment01
{
	public partial class Add : System.Web.UI.Page
	{
		protected void ButtonSubmit_OnClick(object sender, EventArgs e)
		{
			int? cookingTime;
			if (string.IsNullOrEmpty(TextBoxCookingTime.Text))
				cookingTime = null;
			else
				cookingTime = int.Parse(TextBoxCookingTime.Text);

			Db.Context.Recipes.Add(new Recipe()
			{
				Name = TextBoxRecipeName.Text,
				CategoryId = int.Parse(DropDownCategory.SelectedValue),
				CuisineId = int.Parse(DropDownCuisine.SelectedValue),
				CookingTime = cookingTime,
				IsPrivate = CheckBoxIsPrivate.Checked,
				Description = TextBoxDescription.Text,
				User_Id = Db.Context.aspnet_Users.First(u => User.Identity.Name.ToLower() == u.LoweredUserName).UserId
			});

			Db.Context.SaveChanges();

			LabelMessage.CssClass = "alert alert-success";
			LabelMessage.Text = $"Recipe \"{TextBoxRecipeName.Text}\" Added";
		}
	}
}