using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_assignment01
{
   public partial class Recipes : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

	   public ICollection GetRecipes()
	   {
		   var list = new List<object>();

		   foreach (var recipe in Db.Context.Recipes)
		   {
			   list.Add(new
			   {
				   recipe.Name,
					recipe.Author,
					Category = recipe.Category.Name,
					CookingTime = recipe.CookingTime == TimeSpan.Zero ? null : recipe.CookingTime.ToString(),
					Cuisine = recipe.Cuisine.Name,
					recipe.Description,
			   });
		   }

		   return list;
	   }

   }
}