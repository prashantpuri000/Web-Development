<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="ApproveCourses.aspx.cs" Inherits="e_learning.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <strong>Following are the courses to approved</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="850px" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                    onrowcommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                <asp:BoundField DataField="course_title" HeaderText="Course Name" />
                <asp:BoundField DataField="students" HeaderText="No. of students" />
                <asp:BoundField DataField="start_date" HeaderText="Starting Date" />
                <asp:BoundField DataField="duration_type" HeaderText="Duration" />
                <asp:TemplateField HeaderText="Action"> 
                <ItemTemplate>
                <asp:LinkButton Text="Approve" CommandName="Approve" CommandArgument='<%# Eval("id") %>' runat="server" />
                </ItemTemplate>
              
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Edit"> 
                <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("id") %>' runat="server" />
                </ItemTemplate>
              
                </asp:TemplateField>
                </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>
