using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace MWebAsk
{
	/// <summary>
	/// 当前登录用户的工具类
	/// </summary>
    public class UserTools
    {
		/// <summary>
		/// 获取用户ID
		/// </summary>
        public static long UserID
        {
            get {
                if (UserTools.IsLogin)
                {
                    long userid = 0;
                    long.TryParse(HttpContext.Current.Session["UserID"].ToString(),out userid);
                    return userid;
                }
                else
                    return 0;
            }
        }
		/// <summary>
		/// 用户昵称
		/// </summary>
		public static string NickName {
			get {
				if (UserTools.IsLogin) {
					return HttpContext.Current.Session["NickName"].ToString();
				} else
					return "";
			}
		}
		/// <summary>
		/// 判断用户是否登录
		/// </summary>
        public static bool IsLogin
        {
            get
            {
                return HttpContext.Current.Session["UserID"] != null;
            }
        }
		/// <summary>
		/// 判断是否为管理员
		/// </summary>
        public static bool IsAdmin {
            get {
                if (UserTools.IsLogin)
                {
                    byte sl = 0;
                    byte.TryParse(HttpContext.Current.Session["StatusLevel"].ToString(), out sl);
                    return sl > 199;
                }
                else
                    return false;
            }
        }
    }
}
