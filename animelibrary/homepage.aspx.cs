using System;

namespace animelibrary
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Register(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}