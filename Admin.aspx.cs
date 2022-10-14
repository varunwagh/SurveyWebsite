using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Survey
{
    public partial class Admin : System.Web.UI.Page
    {
        String fetch;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=db1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadmlogin_Click(object sender, EventArgs e)
        {
            fetch = "select username,password from [admin_login] where id = '" + t1.Text + "'"; 
            SqlCommand cmd = new SqlCommand(fetch, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                if (t1.Text == dr[0].ToString() && t2.Text == dr[1].ToString())
                {
                    Response.Redirect("Homepage.aspx");

                }
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error Logging in');", true);
                con.Close();
        } 

    }
}