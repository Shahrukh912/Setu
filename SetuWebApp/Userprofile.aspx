<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Userprofile.aspx.cs" Inherits="Userprofile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Edit Profile" />
            </td>
            <td>
                <asp:Panel ID="Paneldefaultprofile" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Role : "></asp:Label>
                    <asp:Label ID="Labelrole" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Name : "></asp:Label>
                    <asp:Label ID="Labelname" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Department : "></asp:Label>
                    <asp:Label ID="Labeldepartment" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Sem : "></asp:Label>
                    <asp:Label ID="Labelsem" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Paneleditprofile" runat="server" Visible="False">
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
