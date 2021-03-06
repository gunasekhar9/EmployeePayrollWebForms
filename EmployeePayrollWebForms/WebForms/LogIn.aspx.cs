using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class LogIn : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("AddLogin", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Email", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox2.Text);
            con.Open();
            var datareader = com.ExecuteReader();
            if (datareader != null)
            {
                Session["AddForm"] = datareader;       
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label1.Text = " Unable to LogIn, because this account is not in the database";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}