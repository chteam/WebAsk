﻿namespace System.Web.Mvc
{
	using System;
	/// <summary>
	/// 对Controller的Redirect操作的扩展
	/// blog:http://chsword.cnblogs.com/
	/// </summary>
	public static class RedirectExtension
	{
		/// <summary>
		/// 重定向到上一个Action. 即 header 的 "HTTP_REFERER"  (<c>Context.UrlReferrer</c>).
		/// </summary>
		static public void RedirectToReferrer(this Controller controller) {
			controller.Response.Redirect(controller.Request.ServerVariables["HTTP_REFERER"]);
		}
        [Obsolete("已经过时请使用RedirectToReferrer")]
        static public void RedirectToReferer(this Controller controller)
        {
            RedirectToReferrer(controller);
        }
		/// <summary> 
		/// Redirect 到站点根目录 (<c>Context.ApplicationPath + "/"</c>).
		/// </summary>
		static public void RedirectToSiteRoot(this Controller controller) {
			controller.Response.Redirect(controller.Request.ApplicationPath + "/");
		}

	}
}
