<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="e_learning.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 257px;
        }
        .style3
        {
            width: 98%;
        }
        .style4
        {
            width: 305px;
        }
        .style5
        {
            width: 305px;
            font-size: smaller;
            height: 25px;
        }
        .style6
        {
            height: 25px;
        }
    .style7
    {
        width: 100%;
    }
    .style8
    {
        color: #0099CC;
        text-decoration: underline;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="maincontent">
<div id="Div1" >
<div id="right">
<div id="right1" >
    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        GridLines="Horizontal" Width="320px">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
</div>
</div>
<div id="left" >
<div id="left1" >
<table>
<tr><td class="style2">
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr> <td class="style2"><asp:Image ID="Image1" ImageUrl="~/image/organization.png"  runat="server" /></td></tr>
<tr align="center"><td class="style2">
    <table class="style3">
        <tr>
            <td class="style5">
                Upload&nbsp; Picture</td>
            <td class="style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="284px" />
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Upload" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </td>
 </tr>
</table>
   

    <br />
    <br />
   

</div>
<div id="left2">
    <table class="style7">
        <tr>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Apply for courses</strong></td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="173px" Width="447px" AutoGenerateColumns="false" 
                    AllowPaging="True" onrowcommand="GridView1_RowCommand" PageSize="3">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     <Columns>
    <asp:BoundField HeaderText="Course Title" DataField="course_title" />
    <asp:BoundField HeaderText="Price" DataField="price" />
    <asp:BoundField HeaderText="Starting Date" DataField="start_date" />
    <asp:TemplateField>
    <ItemTemplate>
    <asp:LinkButton CommandName="Register" Text="Register" CommandArgument='<%#Eval("id") %>' runat="server" />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
            </td>
        </tr>
    </table>
</div>
</div>

</div>

</div>
<div id="footer" >

<h3> &copy;e-learning 2012</h3>
</div>
</asp:Content>
