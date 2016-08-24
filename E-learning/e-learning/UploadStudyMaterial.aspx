<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="UploadStudyMaterial.aspx.cs" Inherits="e_learning.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 69%;
    }
    .style2
    {
        width: 183px;
    }
    .style3
    {
        width: 183px;
        font-weight: bold;
        text-decoration: underline;
    }
    .style4
    {
        font-weight: bold;
        text-decoration: underline;
    }
    .style5
    {
        font-weight: bold;
        text-decoration: underline;
        color: #0099CC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="maincontent">


    <table class="style1">
        <tr>
            <td class="style3">
                </td>
            <td class="style5">
                Upload Study Material</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp; Select course&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="145px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Upload study material</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</div>

</asp:Content>
