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
    public class UserTools
    {
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
        public static bool IsLogin
        {
            get
            {
                return HttpContext.Current.Session["UserID"] != null;
            }
        }
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
