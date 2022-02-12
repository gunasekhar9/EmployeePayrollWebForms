<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="payroll Form.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.payroll_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Payroll%20Form.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        <div class="sec2"></div>
        <div class="sec1"><h2 style="color:navy">Employee Payroll Form</h2></div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" required="required" runat="server" Height="42px" Width="658px"></asp:TextBox></div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:RadioButton ID="RadioButton1" runat="server" />&emsp;<asp:Label ID="Label4" runat="server" Text="Male"></asp:Label>&emsp;&nbsp;&nbsp; &emsp;<asp:RadioButton ID="RadioButton2" runat="server" />&emsp;<asp:Label ID="Label5" runat="server" Text="Label">Female</asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp; <input id="Checkbox1" type="checkbox" /><asp:Label ID="Label6" runat="server" Text="Label">HR</asp:Label>&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="Checkbox2" type="checkbox" /><asp:Label ID="Label7" runat="server" Text="Label">Sales</asp:Label>&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &emsp;&nbsp; <input id="Checkbox3" type="checkbox" /><asp:Label ID="Label8" runat="server" Text="Label">Finance</asp:Label>&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="Checkbox4" type="checkbox" /><asp:Label ID="Label9" runat="server" Text="Label">Engineer</asp:Label>&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="Checkbox5" type="checkbox" /><asp:Label ID="Label10" runat="server" Text="Label">Others</asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label11" runat="server" Text="Label">Salary</asp:Label>
        </div>
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>

    </div>
</asp:Content>
