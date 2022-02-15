<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="payroll Form.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.payroll_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Payroll%20Form.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
    <div class="sec2">
        <form method="post">
        <div class="sec1">
            <h3>Employee Payroll Form</h3>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:TextBox ID="TextBox1" type="text" name="Name" required="required" runat="server" Width="490px"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid input" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{1}[a-z]{2,}$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Profile image"></asp:Label>
            &ensp;
            <asp:RadioButtonList ID="RadioButtonList1" required="required" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                <asp:ListItem> <img src="../Assets/profile-images/Female (1).png" alt="img1"/> </asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (4).png" alt="img2"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Female (4).png" alt="img3"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (5).png" alt="img4"/></asp:ListItem>
            </asp:RadioButtonList> 
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="Label3" required="required" runat="server" Text="Gender"></asp:Label>
            &emsp;&emsp;&ensp;
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="1" RepeatLayout="Flow" CssClass="rbm">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" required="required" runat="server" Text="Department"></asp:Label>
            &ensp;&ensp;&nbsp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbn">
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Engineer</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" required="required" runat="server" Text="Salary"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" Height="36px">
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem Value="₹ 10,000">₹ 10,000</asp:ListItem>
                <asp:ListItem Value="₹ 15,000">₹ 15,000</asp:ListItem>
                <asp:ListItem Value="₹ 18,000">₹ 18,000</asp:ListItem>
                <asp:ListItem Value="₹ 20,000">₹ 20,000</asp:ListItem>
                <asp:ListItem Value="₹ 25,000">₹ 25,000</asp:ListItem>
                <asp:ListItem Value="₹ 27,000">₹ 27,000</asp:ListItem>
                <asp:ListItem Value="₹ 30,000">₹ 30,000</asp:ListItem>
                <asp:ListItem Value="₹ 35,000">₹ 35,000</asp:ListItem>
                <asp:ListItem Value="₹ 40,000">₹ 40,000</asp:ListItem>
                <asp:ListItem Value="₹ 45,000">₹ 45,000</asp:ListItem>
                <asp:ListItem Value="₹ 54,000">₹ 54,000</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" required="required" runat="server" Text="Start Date"></asp:Label>
            &emsp;&emsp;&emsp;&ensp;&nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Height="36px" Width="90px">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged ="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged ="ddlYear_SelectedIndexChanged" AutoPostBack="true">              
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" required="required" runat="server" Text="Notes"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox2" type="text" name="notes" runat="server" TextMode="MultiLine" Width="490px" Height="70px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn btn-secondary" Text="Cancel" Width="120px" />
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="Button2" runat="server" class="btn btn-secondary" Text="Submit" Width="120px" />
            &ensp;
            <asp:Button ID="Button3" runat="server" class="btn btn-secondary" Text="Reset" Width="120px" />
        </div>
    </form>
    </div>
</asp:Content>
