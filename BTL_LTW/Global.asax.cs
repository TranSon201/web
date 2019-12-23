using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_LTW
{
    public class Global : System.Web.HttpApplication
    {
        //set session timout in webconfig
        protected void Application_Start(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            for (int i = 1; i <= 6; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Giày adidas " + i.ToString() , Path = "image\\a" + i + ".jpg", Describe = "Giày adidas đẹp nhấp shop" , Price = (i % 10) * 100000 + 1000000});
            }
            for (int i = 1; i <= 6; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Giày converse " + i.ToString(), Path = "image\\cv" + i + ".jpg", Describe = "Giày converse bền nhất shop", Price = i*50000 + 600000 });
            }
            for (int i = 1; i <= 6; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Giày nike " + i.ToString(), Path = "image\\n" + i + ".jpg", Describe = "Giày nike chất nhất shop", Price = (i*200000)+200000 });
            }
            for (int i = 1; i <= 6; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Giày vans " + i.ToString(), Path = "image\\v" + i + ".jpg", Describe = "Giày vans giá đẹp nhất shop", Price = (500000/i)+100000 });
            }
            Application["products"] = products;
            Application["users"] = new List<Users>() { new Users { userName = "camtu", passWord="123456", address="Đông Anh", gender="nữ", fullName="Nguyễn Thị Cẩm Tú ", dob="1998-12-01", email="Nguyencamtu028@gmail.com", phoneNumber="01646853232"} };
            Application["onlineCounter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["username"] = "";
            Session["cartsCount"] = 0;
            Session["carts"] = new List<CustomProduct>();
            Application["onlineCounter"] = Convert.ToInt32(Application["onlineCounter"]) + 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application["onlineCounter"] = Convert.ToInt32(Application["onlineCounter"]) - 1;
        }
    }
}