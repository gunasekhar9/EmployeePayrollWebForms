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
    public partial class payroll_Form : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Fill For Years
                for (int i = 2000; i <= 2022; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //sets that current year as selected one

                //Fill For Months
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set that current month as selected one 

                //Fill For days
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
            ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set hat current date as selected one
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

            SqlCommand com = new SqlCommand("AddForm", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@NAME", TextBox1.Text);
            com.Parameters.AddWithValue("@PROFILEIMAGE", RadioButtonList1.SelectedValue);
            com.Parameters.AddWithValue("@GENDER", RadioButtonList2.SelectedValue);
            string checkList = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checkList == "")
                    {
                        checkList = CheckBoxList1.Items[i].Value;
                    }
                    else
                    {
                        checkList += " " + CheckBoxList1.Items[i].Value;
                    }
                }
            }
            com.Parameters.AddWithValue("@DEPARTMENT", CheckBoxList1.SelectedValue);
            com.Parameters.AddWithValue("@SALARY", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@STARTDATE", ddlDay.SelectedValue + '-' + ddlMonth.SelectedValue + '-' + ddlYear.SelectedValue);
            com.Parameters.AddWithValue("@NOTES", TextBox2.Text);
            con.Open();
            var k = com.ExecuteNonQuery();
            if (k >= 1)
            {
                com = new SqlCommand("select * from EmployeeForm",con);
                var datareader = com.ExecuteReader();
                Session["AddForm"] = datareader;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label1.Text = "User Doesn't Exist in this Data";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}