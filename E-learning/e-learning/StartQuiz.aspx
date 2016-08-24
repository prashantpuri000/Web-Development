<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StartQuiz.aspx.cs" Inherits="e_learning.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 227px;
        }
        .style3
        {
            width: 83px;
        }
        .style4
        {
            width: 227px;
            height: 59px;
        }
        .style5
        {
            width: 83px;
            height: 59px;
        }
        .style6
        {
            height: 59px;
        }
        .style7
        {
            width: 227px;
            height: 71px;
        }
        .style8
        {
            width: 83px;
            height: 71px;
        }
        .style9
        {
            height: 71px;
        }
        .style10
        {
            width: 227px;
            height: 49px;
        }
        .style11
        {
            width: 83px;
            height: 49px;
        }
        .style12
        {
            height: 49px;
        }
        .style13
        {
            width: 227px;
            height: 170px;
        }
        .style14
        {
            width: 83px;
            height: 170px;
        }
        .style15
        {
            height: 170px;
        }
        .style16
        {
            color: #3399FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="maincontent">

    <table class="style1">
        <tr>
            <td class="style10">
              
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
              
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                <asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
                </Triggers>

                    <ContentTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Names="Arial" 
                            Font-Size="X-Large" ForeColor="#3399FF"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                </asp:Timer>
            </td>
            <td class="style8">
            </td>
            <td class="style9">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text="Time Over !" 
                            Visible="False" Font-Size="Large"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;
            </td>
            <td class="style3">
                <span class="style16">Question</span>&nbsp;&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">

                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <span class="style16">Answer&nbsp;</span>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select Answer--</asp:ListItem>
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
            </td>
            <td class="style6">
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
             <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                 <ContentTemplate>
                     <asp:Label ID="Label6" runat="server" Text="No. of Questions" Visible="False"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label7" runat="server" ForeColor="#3399FF" Text="Label" 
                         Visible="False"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </ContentTemplate>
                        </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Right Answers" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="#009933" 
                            Visible="False"></asp:Label>
                       
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style15">
            </td>
        </tr>
    </table>

</div>
</asp:Content>
