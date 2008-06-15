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
using System.Collections.Generic;

namespace MWebAsk
{
	/// <summary>
	/// 用户等级工具类
	/// </summary>
    public class UserLevelTools
    {
		/// <summary>
		/// 用户等级字典
		/// </summary>
        static Dictionary<int, string> x = new Dictionary<int, string>()
        {
            {50,"初级"},
            {100,"一级"},
            {500,"二级"},
            {1000,"三级"},
            {2000,"四级"},
            {4000,"五级"},
            {7000,"六级"}
        };
		/// <summary>
		/// 由用户分类获取用户等级
		/// </summary>
		/// <param name="point">分数</param>
		/// <returns></returns>
        static public string UserLevelString(object point)
        {
            int p = 0;
            int.TryParse(point.ToString(), out p);
            foreach (int t in x.Keys)
            {
                if (p < t)
                    return x[t];
            }
            return x.Last().Value;
        }
    }
}
