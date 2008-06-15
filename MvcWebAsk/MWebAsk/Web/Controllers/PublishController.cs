using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MWebAsk.Controllers {
	public class PublishController : DBController {
		public ActionResult Index(long d) {
			// Add action logic here
			var x = (from i in DB.Publish
					 where i.ID == d
					 select i).SingleOrDefault();
			
			return View(x);
		}
	}
}
