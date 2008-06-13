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
        /// <summary>
        /// 分类列表
        /// </summary>
        /// <param name="id">默认为0</param>
        /// <returns></returns>
        public ActionResult CategoryList(int id)
        {
          
           
            var cate = (from c in DB.Category
                        where c.ParentID == 0
                        select c
                            ).ToList();
            ViewData["list"] = cate;
            return View();
        }
    }
}
