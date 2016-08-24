<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="AssignClassTeacher.aspx.cs" Inherits="e_learning.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 148px;
        }
        .style3
        {
            width: 218px;
        }
        .style4
        {
            width: 178px;
        }
        .style5
        {
            width: 35px;
        }
        .style6
        {
            width: 287px;
        }
        .style7
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">

    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7">
                <strong>Assign Class to teacher</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2" colspan="3">
                            &nbsp;</td>
                        <td colspan="3">
                            &nbsp;</td>
                        <td colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Programs:</td>
                        <td class="style5">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="157px">
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            class:</td>
                        <td class="style5">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="157px">
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            courses:</td>
                        <td class="style5">
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" Width="157px">
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Teachers:</td>
                        <td class="style5">
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="157px">
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                                Width="79px" />
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                        </td>
                        <td class="style5" colspan="3">
                            &nbsp;</td>
                        <td class="style4" colspan="3">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="543px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Done" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>
