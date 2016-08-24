<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="AssginCourseTeacher.aspx.cs" Inherits="e_learning.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 98px;
        }
        .style3
        {
            width: 610px;
        }
        .style4
        {
            width: 610px;
            font-weight: bold;
            font-size: large;
        }
        .style5
        {
            width: 98px;
            font-weight: bold;
            font-size: large;
        }
        .style6
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">

    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                You can assign course to one of the following teachers
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" Width="678px" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Vertical" AutoGenerateColumns="false" 
                    onrowcommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    <Columns>
                    <asp:BoundField DataField="fristname" HeaderText="Frist Name" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                    <asp:BoundField DataField="email" HeaderText="Email Address" />
                    <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                    <asp:LinkButton Text="Assign this course" CommandName="Assign this course" CommandArgument='<%# Eval("id") %>' runat="server" />
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>
