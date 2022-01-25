<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="User_Login.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color: #FFFFFF; height: 379px;">
    <br />
<br />
<br />
<br />
    <table align="center" 
        
        style="border-style: groove; font-size: large; font-weight: bold; height: 209px; color: #FFFFFF;" 
        class="transbox">
        <tr>
                <td align="center" style="font-size: x-large" colspan="2">
                    <asp:Label ID="lbladminlogin" runat="server" Text="USER LOGIN"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbluiname" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuid" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server" Width="222px" TextMode="Password" 
                    CssClass="txtfname"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" style="height: 26px" CssClass="button" 
                    Height="26px" />
            </td>
        </tr>
        <tr>
                <td align="left">
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/HOME/User_Forgetpwd.aspx" ForeColor="White">Forget Password</asp:HyperLink>
                </td>
                <td align="right">
                     <asp:HyperLink ID="HyperLink2" runat="server" 
                         NavigateUrl="~/HOME/User_Registration.aspx" ForeColor="White">User Registration</asp:HyperLink>
                </td>
        </tr>
</table>
</div>
</asp:Content>
