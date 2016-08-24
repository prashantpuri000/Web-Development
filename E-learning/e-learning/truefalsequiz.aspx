<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="truefalsequiz.aspx.cs" Inherits="e_learning.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 247px;
        }
        .style4
        {
            width: 172px;
        }
        .style5
        {
            width: 172px;
            height: 27px;
        }
        .style6
        {
            width: 230px;
            height: 27px;
        }
        .style7
        {
            height: 27px;
        }
        .style8
        {
            width: 230px;
            color: #3399FF;
        }
        .style9
        {
            width: 172px;
            height: 33px;
        }
        .style10
        {
            width: 230px;
            height: 33px;
        }
        .style11
        {
            height: 33px;
        }
        .style12
        {
            width: 172px;
            height: 49px;
        }
        .style13
        {
            width: 230px;
            height: 49px;
        }
        .style14
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                Create Ture / False Quiz</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                Enter Quiz name</td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Select Course</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Enter question</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                Select answer</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="23px">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                <asp:Button ID="cmdadd" runat="server" onclick="cmdadd_Click" Text="Add" />
            </td>
            <td class="style14">
                <asp:Button ID="cmdreset" runat="server" Text="Reset" />
            </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Width="353px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="center" colspan="4" valign="middle">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style2" align="center" colspan="4" valign="middle">
                &nbsp;</td>
            <td align="center" colspan="4" valign="middle">
                &nbsp;</td>
            <td align="center" colspan="4" valign="middle">
                &nbsp;</td>
        </tr>
    </table></div>
</asp:Content>
