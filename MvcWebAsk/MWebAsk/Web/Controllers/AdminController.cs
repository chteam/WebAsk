using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;
namespace MWebAsk.Controllers
{
    [NoLoginFilter]
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
        public ActionResult CategoryList(long id, long editid)
        {

            var cate = (from i in DB.Category select i);
            if (id != 0)
                cate = cate.Where(c => c.ParentID == id);
            else
                cate = cate.Where(c => c.ParentID == null);

            var th = (from i in cate where i.ID == editid select i).SingleOrDefault();
            ViewData["ID"] = 0;
            if (th != null)
            {
                ViewData["Title"] = th.Title;
                ViewData["ID"] = th.ID;
            }
            else
            {
               
                ViewData["Title"] = "";
            }
            ViewData["list"] = cate.ToList();
            ViewData["ParentID"] = id;
           // throw new Exception((th == null).ToString());
            return View();
        }
        public ActionResult SaveCategory() {
            Category ca = new Category();
            BindingHelperExtensions.UpdateFrom(ca, Request.Form);
            if (ca.ID == 0)
            {
                Category newc = new Category()
                {
                    Title = ca.Title,
                    UserID = UserTools.UserID,
                    ParentID = ca.ParentID
                };
                DB.Category.InsertOnSubmit(newc);
            }else{
                var x = (from i in DB.Category where i.ID == ca.ID select i).SingleOrDefault();
                x.Title = ca.Title;
            }
            DB.SubmitChanges();
            this.RedirectToReferrer();
            return View();
        }
        public ActionResult DelCategory(long id){
            var x = from i in DB.Category where i.ID == id select i;
            DB.Category.DeleteBatch(x);
            this.RedirectToReferrer();
            return View();
        }
        #endregion
    }
}
