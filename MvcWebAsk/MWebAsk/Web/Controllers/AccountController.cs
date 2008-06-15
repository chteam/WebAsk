using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;


namespace MWebAsk.Controllers
{
    public class AccountController : DBController
    {
        #region 注册
        public ActionResult Reg()
        {
            return View();
        }
        public ActionResult SaveReg()
        {
            Account user = new Account();
            BindingHelperExtensions.UpdateFrom(user, Request.Form);
            var islogin = (from u in DB.Account
                           where u.Email == user.Email
                           select u).SingleOrDefault();

            if (islogin != null)
            {
                TempData["msg"] = "重复";
                return RedirectToAction("Reg");
            }
            else
            {
                user.Password = user.Password.Md5_32();
				user.Point = 50;//默认给50分
                DB.Account.InsertOnSubmit(user);
                DB.SubmitChanges();
                return View("Regsuccess",user);
            }

        }
        #endregion
        #region 登录
        public ActionResult LoginPage() {
            return View("Login");
        }
        public ActionResult Login() {
            if (Request.Form.Count == 0) return View();
            Account user = new Account();
            BindingHelperExtensions.UpdateFrom(user, Request.Form);
           

            var islogin = (from u in DB.Account
                           where u.Email == user.Email
                           && u.Password == user.Password.Md5_32()
                           select u).SingleOrDefault();

            if (islogin != null)
            {
                Session["UserID"] = islogin.ID;
                Session["Point"] = islogin.Point;
				Session["NickName"] = islogin.NickName;
                Session["StatusLevel"] = islogin.StatusLevel;
                return RedirectToAction("index", "home");
            }
            else {
                TempData["msg"] = "用户不存在 ";
                return View();
            }
            
        }
		[NoLoginFilter]
		public ActionResult Logout() {
            Session.Clear();
            return RedirectToAction("index", "home");
        }
        #endregion
    }
}
