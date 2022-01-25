<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Renew_Driving_License.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm7" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="Black" 
        
        style="font-size: large; font-weight: bold; border-style: groove; height: 273px; color: #FFFFFF;">
        <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" bgcolor="Black" 
                colspan="2">
            <asp:Label ID="Label1" runat="server" Text="RENEW OF DRIVING LICENSE"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbllicence_no" runat="server" Text="Licence No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtlicence_no" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblholdername" runat="server" Text="Licene Holder Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtholdernam" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 36px">
            <asp:Label ID="lblcurrentdate" runat="server" Text="Current Date"></asp:Label>
        </td>
        <td style="height: 36px">
            <asp:TextBox ID="txtcurrentdate" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblexpire_date" runat="server" Text="Expire Date"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtexpiredate" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" style="height: 26px" />
            <asp:Button ID="btnclear" runat="server" Text="Clear" />
        </td>
    </tr>
    </table>
</asp:Content>
