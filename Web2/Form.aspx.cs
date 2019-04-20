using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Web2
{
    public partial class Form : System.Web.UI.Page
    {
        MySqlConnection con;
        private MySqlConnection koneksi()
        {
            String koneksi = String.Format("server={0};user id={1};password={2};database=test", "localhost", "root", "");
            MySqlConnection fak = new MySqlConnection(koneksi);
            return fak;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Convert.ToString(Session["id"]);
            if (id == "")
            {
                Response.Redirect("Login.aspx");
            }
        }
        public void insert(object sender, EventArgs e)
        {
            string m=Request["matkul"];
            string d=Request["dosen"];
            if (m != null && d != null)
            {
                this.con = koneksi();
                this.con.Open();
                using (MySqlCommand cmd = new MySqlCommand("", this.con))
                {
                    cmd.CommandText = "insert into jadwal (nama,mata_kuliah) values(@nama,@matkul)";
                    cmd.Parameters.AddWithValue("@nama", d);
                    cmd.Parameters.AddWithValue("@matkul", m);
                    cmd.ExecuteNonQuery();
                    this.con.Close();
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}