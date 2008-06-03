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
using System.Data.SqlClient;

namespace MvcApplication3.Tools
{
    public class DBTools
    {
        public static SqlCommand getcmd(string sql){
            SqlConnection conn = new SqlConnection(
    "Data Source=(local);Initial Catalog=menglei2008;" +
    "Integrated Security=True");
            SqlCommand cmd = conn.CreateCommand();
           // cmd.Connection = conn;
            cmd.CommandText = sql;
            return cmd;
        }
    }
}
