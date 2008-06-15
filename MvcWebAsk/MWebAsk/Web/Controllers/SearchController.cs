using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace MWebAsk.Controllers {
	public class SearchController : DBController {
		public ActionResult Index(string keyword,int mod) {

			List<MWebAsk.Models.Question> ret;
			if(mod==1)
			ret= (from q in DB.Question
					   where q.Title.Contains(keyword)
					   select q).ToList();
			else
				ret = (from q in DB.Reply
					   join r in DB.Question on q.QuestionID equals r.ID
					   where q.Body.Contains(keyword)
					   select r).ToList();
		
			// Add action logic here
			return View(ret);
		}
	}
}
