<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="AddProgram.aspx.cs" Inherits="e_learning.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
        .style2
        {
            height: 34px;
            width: 236px;
        }
        .style3
        {
            width: 236px;
        }
        .style4
        {
            width: 387px;
        }
        .style5
        {
            height: 34px;
            width: 99px;
        }
        .style6
        {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">
<div id="left_2_prg">
<table class="table-form" >
<tr><td colspan="3">
    <strong>Add program</strong></td></tr>
<tr><td colspan="3">
    <asp:Label ID="Label1" runat="server" 
        Text="You Have not added  any program yet please add a program" 
        ForeColor="#669900" Visible="False"></asp:Label>
    </td></tr>
<tr><td class="style1">Name:</td><td class="style2">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td><td class="style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Program Name" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td>Description:</td><td class="style3">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td><td class="style6">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td>Duration:</td><td class="style3">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td><td class="style6">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Duration" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td>
    <asp:Button ID="Button1" runat="server" Text="Add" Font-Names="Tahoma" 
        Width="80px" onclick="Button1_Click" /></td><td class="style3">
        <asp:Button ID="Button2" runat="server" Text="Reset" Width="80px" />&nbsp;<asp:Button  
            ID="Button3" runat="server" Text="Cancel" Width="80px" />
        </td><td class="style6">
            &nbsp;</td></tr>
<tr><td colspan="3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="470px" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
        <asp:BoundField HeaderText="Program Name" DataField="prg_name" />
        <asp:BoundField HeaderText="Duration" DataField="duration" />
        
       <asp:TemplateField>
       <ItemTemplate>
       <asp:LinkButton Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("Id") %>' runat="server" />
       </ItemTemplate>
       </asp:TemplateField> 
        <asp:TemplateField>
       <ItemTemplate>
       <asp:LinkButton ID="LinkButton2" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' runat="server" />
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
    </td><td class="style4">
        &nbsp;</td><td>
            &nbsp;</td></tr>
</table>
</div>
</div>


</asp:Content>
