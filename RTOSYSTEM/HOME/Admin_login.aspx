<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 379px">
    <br />
<br />
    <table align="center" 
        style="border-style: groove; font-size: large; font-weight: bold; height: 209px; color: #FFFFFF;"   class="transbox">
        <tr>
                <td align="center" style="font-size: x-large" colspan="2">
                    <asp:Label ID="lbladminlogin" runat="server" Text="ADMIN LOGIN"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbluiname" runat="server" Text="Admin Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaid" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
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
                    onclick="btnsubmit_Click" CssClass="button" />
            </td>
        </tr>
        <tr>
                <td align="left">
                    <asp:HyperLink ID="HyperLink3" runat="server" 
                        NavigateUrl="~/HOME/Admin_Forgetpwd.aspx" ForeColor="White">Forget Password</asp:HyperLink>
                </td>
                <td align="right">
                     <asp:HyperLink ID="HyperLink4" runat="server" 
                         NavigateUrl="~/HOME/Admin_Registration.aspx" ForeColor="White">Admin Registration</asp:HyperLink>
                </td>
        </tr>
</table>
</div>
</asp:Content>
