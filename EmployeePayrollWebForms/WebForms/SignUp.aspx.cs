using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection str = new SqlConnection(@"server= (localdb)\MSSQLLocalDB; Database=EmployeeWebForms; Integrated Security = True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("AddEmployeeDetailss", str);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Firstname", TextBox1.Text);
            com.Parameters.AddWithValue("@Lastname", TextBox2.Text);
            com.Parameters.AddWithValue("@Username", TextBox3.Text);
            com.Parameters.AddWithValue("@Password", TextBox4.Text);
            com.Parameters.AddWithValue("@Confirm", TextBox5.Text);
            str.Open();
            int k = com.ExecuteNonQuery();
            if (k != 0)
            {
                Label3.Text = "New Account Created : and Inserted into the Database Succesfully";
                Label3.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            str.Close();
        }
    }
}