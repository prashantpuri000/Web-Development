<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="e_learning.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="../Styles/Site.css" runat="server" />
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            font-size: small;
        }
        .style3
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="wrapper">
<div id="header">
<div id="menu">
 
 <ul id="menuitem">
                        <li>
                  <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Home/home.aspx">Home</asp:HyperLink>
                        </li>
                        <li>
                      
     <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/eLearningAbout.aspx">About Us</asp:HyperLink>
                        </li>
                        <li>
                        <a href="#">Programs</a>
                        </li>
                         <li>
                        <a href="#">Courses</a>
                        </li>
                        <li>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
                     
                        </li>
                        </ul>
</div>

</div>
<div id="maincontent">
<div><marquee><img src="../image/ecosystem.gif" width="200" height="200" /><img src="../image/e_learning_page.jpg" width="200" height="200" /><img src="../image/e-learning.jpg" width="200" height="200" /><img src="../image/net1.jpg" width="200" height="200" /><img src="../image/online-learning.jpg" width="200" height="200" /><img src="../image/e-learning-2.jpg" width="200" height="200" /></marquee></div>
<div id="content1" >
<div id="right">
<div id="right1" >
<table id="login" width="100%" runat="server" cellpadding="0" cellspacing="0" border="0">
<tr><td colspan="3" align="center"><strong>Login</strong></td></tr>
<tr><td>User Name <span style="color:Red;">*</span></td><td>    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
</td></tr>
<tr><td>Password <span style="color:Red;">*</span></td><td>    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td></tr>
<tr><td colspan="3" align="center">
    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /></td></tr>

</table>
</div>
<div id="right2">
<table class="org"><tr><td>
    <asp:Image ID="Image1" ImageUrl="~/image/schedule.png" runat="server" />
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
        NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></td> </tr>
  <tr>  <td> 
      <asp:Image ID="Image2" ImageUrl="~/image/student.png" runat="server" />
      <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/Home/StudentRegistration.aspx" ForeColor="White">Student Registration</asp:HyperLink></td> </tr>
  <tr> <td>  
      <asp:Image ID="Image3"  ImageUrl="~/image/organization.png" runat="server" />
      <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/Home/OrgRegistration.aspx" ForeColor="White">Organazation registration</asp:HyperLink></td> </tr>
       </table>
</div>
</div>
<div id="left" >
<div id="left1" >

<span style="font-family:Tahoma;font-size:16px; color:#2d2d2d;">Welcome to E-Learning</span>
    <br />
    <br />
    <span class="style2" 
        style="color: rgb(22, 22, 24); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(244, 244, 244); display: inline !important; float: none;">
    The E-Learning Project Provides means by which learners can study
from anywhere, anytime through an online portal and to make extensive
use of all possible resources to serve the learning purpose. This
project is open source and is not for any specific organization. It
can be used by any educational institution or organization for good
motive and can edit it according to their requirements.</span><span class="style3" 
        style="color: rgb(22, 22, 24); font-family: 'lucida grande', Verdana, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(244, 244, 244); display: inline !important; float: none;">.</span><br />
    <br />
</div>
<div id="left2">
<table>
<tr><td><span style="font-family:Tahoma;font-size:18px; color:#2d2d2d;">Browse Course Categories</span></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="474px" AllowPaging="True" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="3">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
    <asp:BoundField HeaderText="Course Category" DataField="cat_name" />
    <asp:BoundField HeaderText="Organization Name" DataField="org_id" />
    <asp:BoundField HeaderText="Created Date" DataField="created_date" />
  
    </Columns>
        <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <FooterStyle BackColor="#3595A1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#3595A1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#3595A1" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView>
</td></tr>
</table>
</div>
</div>

</div>

<div id="content2" >
<div id="right">
<div id="right3" >

</div>
<div id="right4">
<table>
<tr><td >News And Events</td></tr>
<tr><td>
    <asp:ListBox ID="ListBox1" runat="server" Width="308px"></asp:ListBox>
</td></tr>
</table>
</div>
</div>
<div id="left_2" >
<table>
<tr><td class="style1"><span style="font-family:Tahoma;font-size:18px; color:#2d2d2d;">Browse Courses</span></td></tr>
<tr><td class="style1">
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="453px" AutoGenerateColumns="false" 
        HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE"  />
        <Columns>
    <asp:BoundField HeaderText="Course Title" DataField="course_title" />
    <asp:BoundField HeaderText="Price" DataField="price" />
    <asp:BoundField HeaderText="Starting Date" DataField="start_date" />
    <asp:TemplateField>
    <ItemTemplate>
    
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
</td></tr>
</table>
</div>

</div>

</div>
    </form>
<div id="footer" >
<h3> &copy;e-learning 2012</h3>

</div>

</div>
    </div>
    </form>
</body>
</html>
