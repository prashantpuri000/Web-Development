<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="SelectQuiz.aspx.cs" Inherits="e_learning.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: #3399FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="maincontent">

        <br />
        <span class="style1">Select a True / Flase Quiz<br />
        </span>&nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Width="355px" 
            AutoGenerateColumns="false" onrowcommand="GridView1_RowCommand">
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
            <Columns>
            <asp:BoundField DataField="quizname" HeaderText="Quiz Name" />
            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton Text="start quiz" CommandName="start quiz" CommandArgument='<%# Eval("quizname") %>' runat="server" />
            </ItemTemplate>
            </asp:TemplateField>

            </Columns>
            
               </asp:GridView>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

</div>
</asp:Content>
