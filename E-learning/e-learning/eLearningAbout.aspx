<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eLearningAbout.aspx.cs" Inherits="e_learning.eLearningAbout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link id="Link1" rel="Stylesheet" type="text/css" href="../Styles/Site.css" runat="server" />
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
            font-size: small;
        }
        .style2
        {
            color: #3399FF;
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
<div id="maincontent" class="style1">
<br />
<br />
<h4 class="style2">
About e-Learning
</h4>

<p>
The E-Learning Project Provides means by which learners can study
from anywhere, anytime through an online portal and to make extensive
use of all possible resources to serve the learning purpose.

</p>
<p>
This project is open source and is not for any specific organization. It
can be used by any educational institution or organization for good
motive and can edit it according to their requirements.
</p>
<br />

<br /><br />
<br /><br /><br />
<br />
</div>
</div>

    </div>
    </form>
    <div id="footer" >
<h3> &copy;e-learning 2012</h3>

</div>
</body>
</html>
