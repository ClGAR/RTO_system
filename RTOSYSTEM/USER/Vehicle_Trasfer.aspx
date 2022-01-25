<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Vehicle_Trasfer.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm4" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="Black" 
        
    style="font-size: large; font-weight: bold; border-style: groove; height: 266px; color: #FFFFFF;"; class="transbox">
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" colspan="2" 
            bgcolor="Black">
            <asp:Label ID="Label1" runat="server" Text="Vehicle Trasfer of owneship"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblcurrentownername" runat="server" Text="Current Owner Name"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtcurrentownername" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblvehiclenumber" runat="server" Text="Vehicle Number"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtVehicle_Number" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblnewownername" runat="server" Text="New Owner Name"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtnewownername" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblageofnewowner" runat="server" Text="Age of New Owner"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtageofnewowner" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblrelative" runat="server" Text="Son/wife/Duaghter"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtrelative" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblnewowerAddress" runat="server" Text="New owner Address"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtnewowerAddress" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <br />
        <td colspan="2" align="center">
            <asp:Button ID="btnTransfer" runat="server" Text="Transfer" Font-Bold="True" 
                onclick="btnTransfer_Click" CssClass="button" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" Text="Reset" Width="65px" 
                Font-Bold="True" CssClass="button" />
        </td>
    </tr>
</table>
</asp:Content>
