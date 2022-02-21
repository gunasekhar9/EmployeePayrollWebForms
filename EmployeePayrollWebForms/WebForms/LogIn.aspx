<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/LogIn.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        <div class="sec2">
    <div><h4>&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp; Sign in</h4></div>
    <div><p>&nbsp;&nbsp;&nbsp;&nbsp; to continue with Employee Payroll</p></div>
    <div>
        <asp:TextBox ID="TextBox1" type="text" placeholder="Email" required="required" runat="server" Height="36px" Width="277px" ForeColor="Black"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid Password" ForeColor="Red" ValidationExpression="^(?=.*[A-Z]).{8,}$"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox2" type="text" placeholder="Password" required="required" runat="server" Height="36px" Width="277px" ForeColor="Black"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        Show Password&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password?</asp:LinkButton>
            </div>
       <input type="checkbox" value="lsRememberMe" id="rememberMe">Remember me<label for="rememberMe"></label>
    <br />
    <div><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create Account</asp:LinkButton>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Log in" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
    </div>
    </div>
</asp:Content>