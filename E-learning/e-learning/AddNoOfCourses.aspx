<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="AddNoOfCourses.aspx.cs" Inherits="e_learning.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="maincontent">

    <table class="table-form">
        <tr>
            <td colspan="3" style="background-color: #999966">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
               No. of courses</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
              <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter No. of Courses" ControlToValidate="TextBox1" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="<<Back" onclick="Button3_Click" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>

</asp:Content>
