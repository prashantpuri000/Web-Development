<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="TeacherReg.aspx.cs" Inherits="e_learning.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent" style=" background-color:White;">
<div>


    <table  style="margin-left:6em;color:Black;">
        <tr>
            <td colspan="3" align="center">Teacher Registration
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="3" align="center">Fields marked <span class="style2">*</span> are required
                &nbsp;<br />
            </td>
            
        </tr>
        <tr>
            <td align="center" >Name<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Login Name<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Login Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Password<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Confirm Password<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Re-Enter Password" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Phone or mobile
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center">Email<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Email Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Zip</td>
            <td class="style4">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center">Address<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox11" runat="server" Height="61px" TextMode="MultiLine" 
                    Width="188px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">City<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Enter City Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center">Country<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="123px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>United Sates</asp:ListItem>
                    <asp:ListItem>Sri Lanka</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr
        <tr>
        <td>Experience</td><td>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td><td></td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="64px" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="64px" 
                    onclick="Button2_Click" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</div>
</div>
</asp:Content>
