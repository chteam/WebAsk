using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;

namespace MWebAsk.Controllers {
	public class ReplyController : DBController {
		public void Index() {
			// Add action logic here
		}
		public void Add() {
			Reply r = new Reply();
			BindingHelperExtensions.UpdateFrom(r, Request.Form);
			r.Addtime = DateTime.Now;
			r.EditTime = DateTime.Now;
			r.UserID = UserTools.UserID;
			r.Situation = AType.回复.ToByte();
			
			DB.Reply.InsertOnSubmit(r);
			DB.SubmitChanges();
			this.RedirectToReferrer();
		}
		public void SetBest(long qid, long rid) {
			var x = DB.Reply.Where(c => c.ID == rid&& c.QuestionID==qid).SingleOrDefault();
			var q = DB.Question.Where(c => c.ID == qid).SingleOrDefault();
			if (x == null || q == null) {
				TempData["msg"] = "错误";
			} else {
				x.Situation = QType.已解决.ToByte();
				q.Situation = AType.最佳答案.ToByte();
				DB.SubmitChanges();
			}
			this.RedirectToReferrer();
		}
	}
}
