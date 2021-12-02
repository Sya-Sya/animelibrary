using System;

namespace animelibrary
{
    public partial class redirect : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "Welcome,";
        }

        protected void Log_out(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("homepage.aspx");

        }
    }
}