using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Survey
{
    public partial class ProductSatisfaction : System.Web.UI.Page
    {
        string insert;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=db1;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("Thank you for your response");
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Congratulations! you've just got a reward cupon worth extra 20% off on your purchase from Amazon !');", true);
            insert = "insert into [ProductSatisfaction] (value, better, other, often, package) values ('" + RadioButtonList1.SelectedItem + "','" + TextBox1.Text + "','" + RadioButtonList2.SelectedItem + "','" + RadioButtonList3.SelectedItem + "','" + RadioButtonList4.SelectedItem + "')";
            SqlCommand cmd = new SqlCommand(insert, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lbl3.ForeColor = System.Drawing.Color.Green;
                lbl3.Text = "Congratulations! you've just got a reward cupon worth extra 20% off on your purchase from Amazon !";
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Congratulations! you've just got a reward worth rs 100 cashback on a transaction of min. rs 200 !');", true);
            }
            catch
            {
                lbl3.ForeColor = System.Drawing.Color.Red;
                lbl3.Text = "Please answer every question !";
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please answer every question !');", true); 
            }
            finally
            {
                con.Close();
            }


            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registration Successfully done!');", true); 
        }
    }
}