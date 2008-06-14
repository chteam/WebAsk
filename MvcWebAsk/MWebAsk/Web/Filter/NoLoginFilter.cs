
using System.Web;
using System.Web.Mvc;

namespace MWebAsk
{
    /// <summary>
    /// 如果没有登录将跳转到一个没有登录的提示页面
    /// </summary>
    public class NoLoginFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (!UserTools.IsLogin)
            {
                filterContext.HttpContext.Response.Redirect("/Account/Login", true);
                return;
            }
        }
    }
}
