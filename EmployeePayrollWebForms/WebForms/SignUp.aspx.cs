using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("AddEmployeeDetailss", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Firstname", TextBox1.Text);
            com.Parameters.AddWithValue("@Lastname", TextBox2.Text);
            com.Parameters.AddWithValue("@Email", TextBox3.Text);
            com.Parameters.AddWithValue("@Phone", TextBox6.Text);
            com.Parameters.AddWithValue("@Password", TextBox4.Text);
            con.Open();
            var k = com.ExecuteNonQuery();
            if(k != 0)
            {
                Label3.Text = "Your Account is Created Successfully!";
                Label3.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label3.Text = "Something went wrong please try again.";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}