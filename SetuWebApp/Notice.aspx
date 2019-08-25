<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4" valign="top">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="Post Notice" />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Latest" />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Book Marked" />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Important" />
            </td>
            <td valign="top">
                <asp:Panel ID="PanelNotice" runat="server">
                </asp:Panel>
                <asp:Panel ID="PanelPostNotice" runat="server" Visible="False">
                    <asp:Label ID="Label5" runat="server" Text="Notice for"></asp:Label>
                    <asp:DropDownList ID="DropDownListnoticefor" runat="server">
                        <asp:ListItem Value="it">IT Department</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
                    <asp:TextBox ID="TxtBoxSubject" runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TxtBoxBody" runat="server" Columns="50" Rows="7" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Posted By "></asp:Label>
                    <asp:TextBox ID="TxtBoxpostedby" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="ButtonPost" runat="server" onclick="Button5_Click" 
                        Text="Post" />
                </asp:Panel>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

