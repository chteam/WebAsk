using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using MvcApplication3.Tools;

namespace MvcApplication3.Controllers
{
    public class UserController : Controller
    {
        public void login()
        {
            RenderView("login");
        }
        public void Exit()
        {
            HttpContext.Session["username"] = null;
            RedirectToAction("index", "Home");
        }
        public void reg()
        {
            RenderView("reg");
        }
        public void yanzheng(string name, string pwd)
        {
            SqlCommand cmd = DBTools.getcmd("select count(*) from userbase where username=@u and password=@p");
            SqlParameter spn = new SqlParameter("@u", name);
            SqlParameter spp = new SqlParameter("@p", pwd);
            cmd.Parameters.Add(spn);
            cmd.Parameters.Add(spp);
            cmd.Connection.Open();
            int ret = (int)cmd.ExecuteScalar();
            cmd.Connection.Close();
            if (ret == 1)
            {
                HttpContext.Session["username"] = name;
                RedirectToAction("index", "Home");
            }
            else
            {

                ViewData["note"] = "输入有误，请出新登陆！";
                RenderView("login");
            }

        }
        public void RegAction(string name, string pwd, string email,string pwd1)
        {
            if (pwd != pwd1) {
                TempData["error"] = "c";
                RedirectToAction("reg");
            }


            SqlCommand cmd = DBTools.getcmd("select count(*) from userbase where username=@u");
            SqlParameter spn = new SqlParameter("@u", name);
            cmd.Parameters.Add(spn);
            cmd.Connection.Open();
            int ret = (int)cmd.ExecuteScalar();
            cmd.Connection.Close();
            if (ret == 1)
            {
                TempData["note"] = "该用户名已被使用，请重新输入！";
                RedirectToAction("reg");
            }
            else
            {
                cmd = DBTools.getcmd("insert userbase(username,password,email) values(@u,@p,@e)");
                SqlParameter spn1 = new SqlParameter("@u", name);
                cmd.Parameters.Add(spn1);
                SqlParameter spp = new SqlParameter("@p", pwd);
                cmd.Parameters.Add(spp);
                SqlParameter spe = new SqlParameter("@e", email);
                cmd.Parameters.Add(spe);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
               
            }
            HttpContext.Session["username"] = name;
            RedirectToAction("regAcess");
        }
        public void regAcess()
        {
            RenderView("regAcess");
        }
    }
}
