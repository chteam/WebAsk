using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MWebAsk.Controllers {
	public class CategoryController : DBController {
		public ActionResult Index(long id) {
			// Add action logic here
			ViewData["catelist"] = DB.Category.Where(c => c.ParentID == id).OrderBy(c => c.COrder).ToList();
			return View();
		}
		public ActionResult Catelist(long id) {
			var list = DB.Category.Where(c => c.ParentID == id).OrderBy(c => c.COrder).ToList();
			return View(list);
		}
	}
}
