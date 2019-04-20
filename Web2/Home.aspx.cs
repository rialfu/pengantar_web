using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Web2
{
    public partial class Home : System.Web.UI.Page
    {
        MySqlConnection con;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Convert.ToString(Session["id"]);
            if (id == "")
            {
                Response.Redirect("Login.aspx");
            }
            

        }
        private MySqlConnection koneksi()
        {
            String koneksi = String.Format("server={0};user id={1};password={2};database=test", "localhost", "root", "");
            MySqlConnection fak = new MySqlConnection(koneksi);
            return fak;
        }
        public string table()
        {
            string id= Convert.ToString(Session["id"]);
            if (id == "")
            {
                Response.Redirect("Login.aspx");
            }
            this.con = koneksi();
            string user = Request["user"];
            string pass = Request["pass"];
            string query = "Select*from user where npm='" + id + "'";
            MySqlCommand result = new MySqlCommand(query, this.con);
            this.con.Open();
            string html = "";
            MySqlDataReader data = result.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    html += "<tr><td>Nama</td><td>" + data[2].ToString() + "</td></tr>";
                    html += "<tr><td>Kampus</td><td>" + data[3].ToString() + "</td></tr>";
                    this.con.Close();
                    break;

                }
            }
            return html;
        }
        public string dosen()
        {
            this.con = koneksi();
            string query = "Select*from jadwal order by nama";
            MySqlCommand result = new MySqlCommand(query, this.con);
            this.con.Open();
            string html = "";
            MySqlDataReader data = result.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    html += "<tr><td>" + data[1].ToString() + "</td>";
                    html += "<td>" + data[2].ToString() + "</td></tr>";
                }
            }
            this.con.Close();
            return html;
        }
        
   
    }
}