<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrgRegistration.aspx.cs" Inherits="e_learning.OrgRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link id="Link1" rel="Stylesheet" type="text/css" href="../Styles/Site.css" runat="server" />
    <style type="text/css">
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            width: 225px;
        }
        .style4
        {
            width: 232px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div id="wrapper">
<div id="header">
<div id="menu">

 <ul id="menuitem">
                        <li>
                        <a href="#"  class="selected" style="color:#8dc63f">Home</a>
                        </li>
                        <li>
                        <a href="#">About Us</a>
                        </li>
                        <li>
                        <a href="#">Programs</a>
                        </li>
                         <li>
                        <a href="#">Courses</a>
                        </li>
                        <li>
                       <a href="#"> Contact Us</a>
                        </li>
                        </ul>
</div>

</div>
<div id="maincontent">
<div>


    <table class="org" style="margin-left:6em;" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" align="center" style="color: #000000"><strong>Organization Registration
                </strong>&nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="3" align="center" style="color: #000000">Fields marked <span class="style2">*</span> are required
                &nbsp;<br />
            </td>
            
        </tr>
        <tr>
            <td align="center" class="style3" style="color: #000000">Name<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Login Name<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Login Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Password<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Confirm Password<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Re-Enter Password" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Phone or mobile
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Fax
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">URL (If any)
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Contact Person
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Designation
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Email<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Email Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Address<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox11" runat="server" Height="61px" TextMode="MultiLine" 
                    Width="188px"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">City<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Enter City Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3"  align="center" style="color: #000000">Country<span class="style2">*</span>
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="123px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>United Sates</asp:ListItem>
                    <asp:ListItem>Sri Lanka</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="color: #000000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000">
                &nbsp;</td>
            <td class="style4" style="color: #000000">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="64px" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="64px" 
                    onclick="Button2_Click" CausesValidation="False" />
            </td>
            <td style="color: #000000">
                &nbsp;</td>
        </tr>
    </table>


</div>
</div>
    </form>
</div>
    </form>
</body>
</html>
