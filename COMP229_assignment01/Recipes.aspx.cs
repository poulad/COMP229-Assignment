using System.Collections;
using System.Collections.Generic;

namespace COMP229_assignment01
{
   public partial class Recipes : System.Web.UI.Page
   {
	   public ICollection GetRecipes()
	   {
		   var list = new List<object>();

		   foreach (var recipe in Db.Context.Recipes)
		   {
			   list.Add(new
			   {
				   recipe.Name,
					//recipe.Author,
					Category = recipe.Category.Name,
					recipe.CookingTime,
					Cuisine = recipe.Cuisine.Name,
					recipe.Description,
					IsPrivate = recipe.IsPrivate ? "Private" : "Public",
			   });
		   }

		   return list;
	   }

   }
}