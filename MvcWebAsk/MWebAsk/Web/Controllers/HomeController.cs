using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MWebAsk.Controllers
{
    public class HomeController : DBController
    {
        public ActionResult Index()
        {
            ViewData["Title"] = "首页";
            ViewData["Message"] = "Welcome to ASP.NET MVC!";
			ViewData["CategoryList"] = (from i in DB.Category select i).ToList();
			ViewData["PublishList"] = (from i in DB.Publish
									   orderby i.Addtime
									   descending
									   select i).Take(7).ToList();
			ViewData["待解决的问题Top5"] = (from q in DB.Question
									  where q.Situation == QType.待解决.ToInt()
									  select q).Take(5).OrderByDescending(q => q.Addtime).ToList();

            return View();
        }

        public ActionResult About()
        {
            ViewData["Title"] = "About Page";

            return View();
        }
    }
}
