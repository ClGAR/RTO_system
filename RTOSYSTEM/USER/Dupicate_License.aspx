<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Dupicate_License.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm6" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center" bgcolor="Black" 
        
        
        style="font-size: large; font-weight: bold; border-style: groove; height: 273px; color: #FFFFFF;" 
        class="transbox">
        <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" bgcolor="Black" 
                colspan="2">
            <asp:Label ID="Label1" runat="server" Text="DUPILICATE LICENSE"></asp:Label>
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
            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
              <asp:TextBox ID="txtdob" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblvehicle_type" runat="server" Text="Vehicle Type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlvehicle_type" runat="server" Width="222px">
                <asp:ListItem>2-wheeler</asp:ListItem>
                <asp:ListItem>4-wheeler</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" style="height: 26px" CssClass="button" /> 
            &nbsp; 
            <asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="button" />
        </td>
    </tr>
</table>
</asp:Content>
