using System;
using System.Data;
using System.Data.SqlClient;

namespace animelibrary
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void Login(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Animedb where Username=@Username and Password=@Password", connect);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            connect.Open();
            cmd.ExecuteNonQuery();
            connect.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("redirect.aspx");
            }
            else
            {
                Label1.Text = "Your username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }


    }
}