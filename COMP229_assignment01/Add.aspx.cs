using System;
using System.Data.SqlClient;

namespace COMP229_assignment01
{
   public partial class Add : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

	   protected void ButtonSubmit_OnClick(object sender, EventArgs e)
	   {
		   int cuisineId = int.Parse(DropDownCuisine.SelectedValue);
		   int? cookingTime;
			if (string.IsNullOrEmpty(TextBoxCookingTime.Text))
				cookingTime = null;
			else
				cookingTime = int.Parse(TextBoxCookingTime.Text);

			Db.AddRecipe(TextBoxRecipeName.Text, TextBoxAuthor.Text, TextBoxCategory.Text, cookingTime, cuisineId, CheckBoxIsPrivate.Checked, TextBoxDescription.Text);

		   LabelMessage.CssClass = "alert alert-success";
		   LabelMessage.Text = $"Recipe \"{TextBoxRecipeName.Text}\" Added";
	   }
   }
}