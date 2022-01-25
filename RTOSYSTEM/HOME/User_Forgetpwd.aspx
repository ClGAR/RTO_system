<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="User_Forgetpwd.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm7" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" 
        
    style="font-weight: bold; font-size: x-large; border-style: groove; height: 261px;">
   <tr>
        <td align="center" style="font-weight: bold" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="USER FORGET PASSWORD" 
                ForeColor="White"></asp:Label>
        </td>
   </tr>
   <tr>
        <td>
            <asp:Label ID="lbluid" runat="server" Text="User Id"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtuid" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblq1" runat="server" Text="Who is Your Best Friend"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq1" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Enter Best Friend" ControlToValidate="txtq1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblq2" runat="server" Text="Which is your favourite sport"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq2" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="Enter Sport Name" ControlToValidate="txtq1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblq3" runat="server" Text="What is you Nickname"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq3" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="Enter Nickname" ControlToValidate="txtq3">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" />
        </td>
    </tr>
</table>
</asp:Content>
