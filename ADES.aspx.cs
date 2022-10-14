using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Survey
{
    public partial class ADES : System.Web.UI.Page
    {
        string insert;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=db1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("Thank you for your response");
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Congratulations! you've just got a reward cupon worth 50% off on your order from Zomato!')", true);
            insert = "insert into [ADES] (household, service, concernResolved, knowconcern, satisfied) values ('" + RadioButtonList1.SelectedItem + "','" + RadioButtonList2.SelectedItem + "','" + RadioButtonList3.SelectedItem + "','" + RadioButtonList4.SelectedItem + "','" + RadioButtonList5.SelectedItem + "')";
            SqlCommand cmd = new SqlCommand(insert, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lbl2.ForeColor = System.Drawing.Color.Green;
                lbl2.Text = "Congratulations! you've just got a reward cupon worth 50% off on your order from Zomato!";
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Congratulations! you've just got a reward worth rs 100 cashback on a transaction of min. rs 200 !');", true);
            }
            catch
            {
                lbl2.ForeColor = System.Drawing.Color.Red;
                lbl2.Text = "Please answer every question !";
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please answer every question !');", true); 
            }
            finally
            {
                con.Close();
            }
        }
    }
}
