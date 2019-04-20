using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace Web2
{
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private MySqlConnection koneksi()
        {
            String koneksi = String.Format("server={0};user id={1};password={2};database=test", "localhost", "root", "");
            MySqlConnection fak = new MySqlConnection(koneksi);
            return fak;
        }
        protected void login(object sender, EventArgs e)
        {
            this.con = koneksi();
            string user = Request["user"];
            string pass = Request["pass"];

            string query = "Select*from user where npm='" + user + "' and password='" + pass+"'";
            MySqlCommand result = new MySqlCommand(query, this.con);
            this.con.Open();
            MySqlDataReader data = result.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    Session["id"] = data[0].ToString();
                    this.con.Close();
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Password atau Username anda salah')</script>");
            }

            //this.con = koneksi();
            //this.con.Open();
            //using (MySqlCommand cmd = new MySqlCommand("", this.con))
            //{
                //cmd.CommandText = "Select*from user where npm=@user and password=@pass";
                //cmd.Parameters.AddWithValue("@user", user);
                //cmd.Parameters.AddWithValue("@pass", pass);
                //cmd.ExecuteNonQuery();
                //MySqlDataAdapter hasil = new MySqlDataAdapter(cmd);

                //this.con.Close();
                //Response.Redirect("Home.aspx");
            //}
            

        }

        
    }
}