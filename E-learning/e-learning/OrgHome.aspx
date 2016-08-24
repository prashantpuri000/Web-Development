<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="OrgHome.aspx.cs" Inherits="e_learning.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">
<div id="content1" >
<div id="right">
<div id="right1" >
<table  class="org" runat="server" cellpadding="0" cellspacing="0" border="0">
<tr><td class="style1">Students</td><td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td class="style1">Teachers</td><td>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td class="style1">Classes</td><td>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td class="style1">Cources</td><td>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td class="style1">Programs</td><td>
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </td></tr>
</table>
</div>
<div id="right2">
<table class="org">
<tr><td >Courses</td><td></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Add Courses</asp:LinkButton>         </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">Categories</asp:LinkButton>            </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton9" runat="server">Stop Courses</asp:LinkButton>            </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click">Approved Courses</asp:LinkButton>            </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton11" runat="server">Waiting Applications</asp:LinkButton>       </td></tr>
</table>
</div>
</div>
<div id="left" >
<div id="left1" >
<table>
<tr><td>Organization</td></tr>
<tr> <td><asp:Image ID="Image1" ImageUrl="~/image/organization.png"  runat="server" /></td></tr>
<tr align="center"><td><asp:LinkButton ID="LinkButton1"  runat="server">Change Logo</asp:LinkButton></td>
 </tr>
</table>
   

</div>
<div id="left2">
<table>
<tr><td>Organization</td><td></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Classes</asp:LinkButton></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Programs</asp:LinkButton></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton4" runat="server">Organization Approved Courses</asp:LinkButton></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton5" runat="server">Organization Waiting Applications</asp:LinkButton></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton6" runat="server">Change Organization Profile</asp:LinkButton></td></tr>
</table>
</div>
</div>

</div>

<div id="content2" >
<div id="right">
<div id="right3" >
<table class="org">
<tr><td >Students</td><td></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton12_Click">Create Student</asp:LinkButton></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton13" runat="server"> Student Applications</asp:LinkButton>      </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton14" runat="server">Suspend Student</asp:LinkButton>            </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton15" runat="server">Organization Students</asp:LinkButton>   </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton16" runat="server">Payments</asp:LinkButton>     </td></tr>
</table>
</div>
<div id="right4">
<table class="org" cellpadding="0" cellspacing="0">
<tr>
<td>News</td><td></td>
</tr>
<tr>
<td colspan="2">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="52px" 
        Width="285px"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td>
</tr>
</table>
</div>
</div>
<div id="left_2" >
<table>
<tr><td>Teachers</td><td></td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton17" runat="server" onclick="LinkButton17_Click">Create Teacher</asp:LinkButton> </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton18" runat="server">Organization Teachers</asp:LinkButton> </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton19" runat="server">Record Open Requests</asp:LinkButton> </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton20" runat="server" onclick="LinkButton20_Click">Assign Course to teacher</asp:LinkButton> </td></tr>
<tr><td></td><td>
    <asp:LinkButton ID="LinkButton21" runat="server" onclick="LinkButton21_Click">Assign Class to teacher</asp:LinkButton></td></tr>
</table>

</div>

</div>

</div>
<div id="footer" >

<h3> &copy;e-learning 2012</h3>
</div>
</asp:Content>
