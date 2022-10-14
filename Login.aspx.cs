using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Survey
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String fetch;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=db1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fetch = "select count(*) from registration where username = '" + TextBoxUserLogin.Text + "'and Passwword= '" + TextBoxPassLogin.Text + "'";
            SqlCommand cmd = new SqlCommand(fetch, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());             
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("SurveySelection.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error Logging in');", true);
                con.Close();
            }
        } 
    }
}





//SqlDataReader dr = cmd.ExecuteReader();
//if (dr.HasRows)
//{
//if (TextBoxUserLogin.Text == dr[0].ToString() && TextBoxPassLogin.Text == dr[1].ToString())
//{
//Response.Redirect("SurveySelection.aspx");

//}
//}
//else
// {
//ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error Logging in');", true);
//con.Close();
//} 