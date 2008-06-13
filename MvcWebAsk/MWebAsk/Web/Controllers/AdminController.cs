using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;
namespace MWebAsk.Controllers
{
    public class AdminController : DBController
    {
        
        public ActionResult Index()
        {

            return View();
        }
        #region 分类
        /// <summary>
        /// 分类列表
        /// </summary>
        /// <param name="id">默认为0</param>
        /// <returns></returns>
        public ActionResult CategoryList(int id)
        {
           
            var cate = (from c in DB.Category
                        select c
                            );
            if (id != 0)
                cate = cate.Where(c => c.ParentID == id);
            else
                cate = cate.Where(c => c.ParentID == null);
            ViewData["list"] = cate.ToList() ;
            ViewData["ParentID"] = id;
            
            return View();
        }
        public ActionResult SaveCategory() {
            Category ca = new Category();
            BindingHelperExtensions.UpdateFrom(ca, Request.Form);
            ca.UserID = UserTools.UserID;
            DB.Category.InsertOnSubmit(ca);
            DB.SubmitChanges();
            this.RedirectToReferrer();
            return View();
        }
        #endregion
    }
}
