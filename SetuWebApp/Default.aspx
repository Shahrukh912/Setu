<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</t&nbsp;</td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:setuconn %>" 
                            SelectCommand="SELECT * FROM [itlogin]"></asp:SqlDataSource>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Login</asp:ListItem>
                        <asp:ListItem>Sign Up</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Panel ID="PanelLogin" runat="server" Visible="False">
                        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                        <asp:TextBox ID="TxtBoxUserName" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="TxtBoxPassword" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                        <br />
                        <asp:Label ID="labelerror" runat="server" Text="Invalid credential" 
                            Visible="False" ForeColor="Red"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="PanelSignUp" runat="server" Visible="False">
                        <asp:Label ID="Label10" runat="server" Text="Role"></asp:Label>
                        <asp:DropDownList ID="DropDownListRole" runat="server">
                            <asp:ListItem Value="student">Student</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Enrollment Number"></asp:Label>
                        <asp:TextBox ID="TxtBoxEnrollment" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="TxtBoxName" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
                        <asp:DropDownList ID="DropDownListDeparment" runat="server">
                            <asp:ListItem Value="it">Information Technology</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Sem"></asp:Label>
                        <asp:DropDownList ID="DropDownListSem" runat="server" Height="16px" 
                            Width="101px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label>
                        <asp:TextBox ID="TxtBoxUserNameSignup" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="TxtBoxPasswordSignup" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="ButtonSignUp" runat="server" onclick="ButtonSignUp_Click" 
                            Text="Sign Up" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
