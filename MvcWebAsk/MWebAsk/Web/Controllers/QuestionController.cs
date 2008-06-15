using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;

namespace MWebAsk.Controllers {
	public class QuestionController : DBController {
		/// <summary>
		/// 显示具体问题
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public ActionResult Index(long id) {
			Question q = DB.Question
				.Where(t => t.ID == id)
				.OrderByDescending(c => c.Situation)
				.OrderByDescending(c => c.Addtime)
				.SingleOrDefault();
			if (q == null)
				ViewData["msg"] = "不存在";
			return View(q);
		}
		#region 提交问题
		/// <summary>
		/// 添加问题,的显示页
		/// </summary>
		/// <returns></returns>
		[NoLoginFilter]
		public ActionResult Add() {
			ViewData["firstCategory"] = new SelectList(DB.Category.Where(x=>x.ParentID==null).ToList(),"ID","Title");
			ViewData["yourPoint"] = (from x in DB.Account where x.ID == UserTools.UserID select x.Point).SingleOrDefault();
			return View();
		}
		/// <summary>
		/// 问题中联动列表
		/// </summary>
		/// <returns></returns>
		[NoLoginFilter]
		public ActionResult CateList() {
			long id=0;
			long.TryParse(Request.Form["id"], out id);
			ViewData["CategoryID"] = new SelectList(DB.Category.Where(x => x.ParentID == id).ToList(), "ID", "Title");
			return View();
		}
		/// <summary>
		/// 添加问题的保存页
		/// </summary>
		/// <returns></returns>
		[NoLoginFilter]
		public ActionResult Save() {
			Question q = new Question();
			BindingHelperExtensions.UpdateFrom(q, Request.Form);
			q.UserID = UserTools.UserID;
			q.Addtime = DateTime.Now;
			q.Edittime = DateTime.Now;

			var user = DB.Account.Where(c => c.ID == UserTools.UserID && c.Point >= q.Point).SingleOrDefault();
			if (user == null) {
				TempData["msg"] = "您的积分不足";
				this.RedirectToReferrer();
			} else {
				user.Point -= q.Point;
				DB.Question.InsertOnSubmit(q);
				DB.SubmitChanges();//成功了
			}
			return Redirect("/");//应该跳到问题页
		}
		#endregion
		#region 我的问题
		/// <summary>
		/// 我的问题
		/// </summary>
		/// <returns></returns>
		[NoLoginFilter]
		public ActionResult MyQuestion() {
			var q = DB.Question
				.Where(t => t.UserID == UserTools.UserID)
				.OrderByDescending(c => c.Situation)
				.OrderByDescending(c => c.Addtime).ToList();
				
			return View(q);
		}
		#endregion
	}
}
