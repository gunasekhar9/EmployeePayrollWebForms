<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/LogIn.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        <div class="sec2">
        <div class="sec"><h2 style="color:navy">Employee Payroll</h2>&nbsp;&nbsp;&nbsp;</div>
    <div><h5>&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;Sign in</h5></div>
    <div><p>to continue with Employee Payroll</p></div>
    <br />
    <div>
        <asp:TextBox ID="TextBox1" type="text" placeholder="Email or Phone" required="required" runat="server" Height="33px" Width="242px"></asp:TextBox> 
    </div>
    <br />
    <div>
        <asp:TextBox ID="TextBox2" type="text" placeholder="Password" required="required" runat="server" Height="33px" Width="243px"></asp:TextBox> </div>
    <div>
       <asp:CheckBox ID="CheckBox1" runat="server" />Show Password<asp:LinkButton ID="LinkButton1" runat="server">Forgot Password?</asp:LinkButton></div>
    <br />
    <br />
    <div><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create Account</asp:LinkButton>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Log in" /></div>
    </div>
    </div>
</asp:Content>