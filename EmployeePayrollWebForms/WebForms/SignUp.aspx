<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/SignUp.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="form">
           <div class="sec2">
        <div><h4>Create Your Account</h4></div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{1}[a-z]{2,}$"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox2" ValidationExpression="^[A-Z]{1}[a-z]{2,}$" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <div>
            <asp:TextBox ID="TextBox1" type="text" placeholder="Firstname" required="required" runat="server" Height="33px" Width="186px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" type="text" placeholder="Lastname" required="required" runat="server" Height="33px" Width="186px"></asp:TextBox>
        </div>
           <div>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter valid email" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox3" type="text" placeholder="Username" required="required" runat="server" Height="33px" Width="377px"></asp:TextBox></div>
        <small>You can use letters, numbers & periods</small>
           <br />
               <div>
                   <asp:TextBox ID="TextBox6" type="text" placeholder="Phone" required="required" runat="server" Height="33px" Width="377px"></asp:TextBox>
               </div>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="^(?=.*[A-Z]).{8,}$"></asp:RegularExpressionValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="^(?=.*[A-Z]).{8,}$"></asp:RegularExpressionValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
           <br />
        <div>
            <asp:TextBox ID="TextBox4" type="text" placeholder="Password" required="required" runat="server" Height="33px" Width="186px"></asp:TextBox>
            <asp:TextBox ID="TextBox5" type="text" placeholder="Confirm" required="required" runat="server" Height="33px" Width="186px"></asp:TextBox>
            </div>
        <small>Use 8 or more characters with a mix of letters, numbers & symbols</small>
        <div>
        <div><asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label2" runat="server" Text="Show Password"></asp:Label></div>
            <br />
        <div>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Sign in instead</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Next" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>
       </div> 
       </div> 
</asp:Content>