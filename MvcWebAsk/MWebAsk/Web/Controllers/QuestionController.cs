using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MWebAsk.Controllers {
	public class QuestionController : Controller {
		public void Index() {
			// Add action logic here
		}
		[NoLoginFilter]
		public ActionResult Add() {
			return View();
		}
	}
}
