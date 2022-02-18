using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class payroll_Form : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Fill -- Years
                for (int i = 2000; i <= 2022; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected

                //Fill -- Months
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set current month as selected

                //Fill -- days
                FillDays();
            }
        }

        public void FillDays()
        {
            ddlDay.Items.Clear();
            //getting numbner of days in selected month & year
            int noOfDays = DateTime.DaysInMonth(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue));

            //Fill days
            for (int i = 1; i <= noOfDays; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
            ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set current date as selected
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("EmployeePayroll", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Name", TextBox1.Text);
            com.Parameters.AddWithValue("@Department", CheckBoxList1.Text);
            com.Parameters.AddWithValue("@Salary", DropDownList1.Text);
            com.Parameters.AddWithValue("@Notes", TextBox2.Text);
            con.Open();
            var k = com.ExecuteNonQuery();
            if (k != 0)
            {
                Label8.Text = "Payroll Registered : and Inserted into the Database Successfully";
                Label8.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label8.Text = "Payroll is not Created and not inserted in the Database!";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}