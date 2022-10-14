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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string ins;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=db1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ins = "insert into [registration] (username,Email,Passwword) values ('" + TextBoxUN.Text + "','" + TextBoxEmail.Text + "','" + TextBoxpass.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Data has been registered!');", true);
                Response.Redirect("login.aspx");
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Failed to register!');", true);
            }
            finally
            {
                con.Close();
            }
        }
    }
}