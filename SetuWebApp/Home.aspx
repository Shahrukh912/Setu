<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4" valign="top">
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button" />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Button" />
            </td>
            <td valign="top">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
    </table>
</asp:Content>

