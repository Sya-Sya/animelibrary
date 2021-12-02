using System;
using System.Data;
using System.Data.SqlClient;

namespace animelibrary
{

    public partial class register : System.Web.UI.Page
    {
        readonly SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
        }

        protected void Save(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Animedb ([First Name], [Last Name], Email, Password, Anime, Username) values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + password.Text + "','" + anime.Text + "','" + username.Text + "')", connect);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            Response.Redirect("login.aspx");
        }
    }
}