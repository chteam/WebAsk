using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;

namespace MWebAsk.Controllers {
	public class QuestionController : DBController {
		public ActionResult Index(long id) {
			Question q = DB.Question.Where(t => t.ID == id).SingleOrDefault();
			if (q == null)
				ViewData["msg"] = "不存在";
			return View(q);
		}
		[NoLoginFilter]
		public ActionResult Add() {
			ViewData["firstCategory"] = new SelectList(DB.Category.Where(x=>x.ParentID==null).ToList(),"ID","Title");
			ViewData["yourPoint"] = (from x in DB.Account where x.ID == UserTools.UserID select x.Point).SingleOrDefault();
			return View();
		}
		public ActionResult CateList() {
			long id=0;
			long.TryParse(Request.Form["id"], out id);
			ViewData["CategoryID"] = new SelectList(DB.Category.Where(x => x.ParentID == id).ToList(), "ID", "Title");
			return View();
		}
		public ActionResult Save() {
			Question q = new Question();
			BindingHelperExtensions.UpdateFrom(q, Request.Form);
			q.UserID = UserTools.UserID;
			q.Addtime = DateTime.Now;
			q.Edittime = DateTime.Now;

			var user = DB.Account.Where(c => c.ID == UserTools.UserID).SingleOrDefault();
			if (user == null)
				return Redirect("/");//意外情况
			else {
				user.Point -= q.Point;
				DB.Question.InsertOnSubmit(q);
				DB.SubmitChanges();//成功了
			}
			return Redirect("/");//应该跳到问题页
		}
	
	
		
	}
}
