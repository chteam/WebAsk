using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication3.Controllers               //命名空间
{
	public class HomeController : Controller        //类
	{
		public void Index() {                       //方法
            //id
			RenderView("Index");
		}

	}
}
