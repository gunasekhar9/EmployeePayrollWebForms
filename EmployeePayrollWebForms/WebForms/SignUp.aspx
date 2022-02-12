<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/SignUp.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="form">
           <div class="sec2">
           <div class="sec1">
                <h2 style="color:navy">Employee Payroll</h2>
        </div>
        <div><h4>Create Your Account</h4></div>
        <br />
        <div>
            <input id="Text1" type="text" name="Firstname" placeholder="First name" required="required" />
            <input id="Text2" type="text" name="Lastname" placeholder="Lastname" required="required" />
        </div>
        <br />
           <div><asp:TextBox ID="TextBox2" type="text" placeholder="Username" required="required" runat="server" Height="33px" Width="380px"></asp:TextBox></div>
        <small>You can use letters, numbers & periods</small>
           <br />
           <div><asp:LinkButton ID="LinkButton1" runat="server">Use my current email address instead</asp:LinkButton></div>
           <br />
           <br />
        <div>
            <input id="Password1" type="password" name="Password" placeholder="Password" required="required" />
            <input id="Password2" type="password" required="required" name="Confirm" placeholder="Confirm Password" />
            </div>
        <small>Use 8 or more characters with a mix of letters, numbers & symbols</small>
        <div>
        <div><asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label2" runat="server" Text="Show Password"></asp:Label></div>
            <br />
            <div>
                <asp:LinkButton ID="LinkButton2" runat="server">Sign in instead</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &emsp;<asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Next" />
            </div>
       </div>   
       </div>  
</asp:Content>
