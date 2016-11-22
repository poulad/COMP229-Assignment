using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace COMP229_assignment01
{
	public static class Db
	{
		private static RecipeLandEntities _context;

		public static RecipeLandEntities Context => _context ?? (_context = new RecipeLandEntities());

		public static void AddRecipe(string name, string author, string category, int? cookingTime, int cuisineId, bool isPrivate, string description)
		{
			var paramName = new SqlParameter("@name", name) { SqlDbType = SqlDbType.NChar, Size = 20 };
			var paramAuthor = new SqlParameter("@author", author) { SqlDbType = SqlDbType.NChar, Size = 50 };
			var paramCategory = new SqlParameter("@category", category) { SqlDbType = SqlDbType.NChar, Size = 20 };
			var paramCookingTime = new SqlParameter("@cookingTime", cookingTime) { SqlDbType = SqlDbType.Time };
			var paramCuisineId = new SqlParameter("@cuisineId", cuisineId) { SqlDbType = SqlDbType.Int };
			var paramIsPrivate = new SqlParameter("@isPrivate", isPrivate) { SqlDbType = SqlDbType.Bit };
			var paramDescription = new SqlParameter("@description", description) { SqlDbType = SqlDbType.NText };

			Db.Context.Database.ExecuteSqlCommand("AddRecipe @name, @author, @category, @cookingTime, @cuisineId, @isPrivate, @description", paramName, paramAuthor, paramCategory, paramCookingTime, paramCuisineId, paramIsPrivate, paramDescription);
		}
	}
}