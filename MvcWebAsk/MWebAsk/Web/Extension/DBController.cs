using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MWebAsk.Models;
namespace MWebAsk
{
    public class DBController : Controller
    {
        DBDataContext _db = null;//访问Controller的时候声明一个不占内存的空对象
       /// <summary>
       /// 返回_db的值
       /// </summary>
        public DBDataContext DB
        {
            get
            {
                if (_db == null)//如果是第一次访问,就初始化,第二次以后就跳过此句
                    _db = new DBDataContext();
                return _db;//返回_db
            }
        }
    }
}
