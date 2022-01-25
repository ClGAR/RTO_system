<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Vehicle_Registration.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="Black" 
        
    
    
        style="font-size: large; font-weight: bold; border-style: groove; height: 399px; color: #FFFFFF;"
        ; class="transbox">

    <tr>
        <td align="center" style="font-weight: bold; font-size: x-large" 
            bgcolor="Black" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Vehicle Registration"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblvehicle_regno" runat="server" Text="Vehicle Registration No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtvehicle_regno" runat="server" Width="222px" 
                CssClass="txtfname" ReadOnly="True"></asp:TextBox>
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
            <asp:Label ID="lblowenername" runat="server" Text="Owener Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtowenername" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblrelative" runat="server" Text="Relative"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtrelative" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblpermanent_address" runat="server" Text="Permanent Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpermanent_address" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="lblage_owner" runat="server" Text="Age of Owner"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtage_owner" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    
     <tr>
        <td>
            <asp:Label ID="lblvehicletype" runat="server" Text="Vehicle Type"></asp:Label>
        </td>
        <td>
             <asp:DropDownList ID="ddlvehicletype" runat="server" Width="222px" 
                 onselectedindexchanged="ddlvehicle_type_SelectedIndexChanged">
                <asp:ListItem>2-wheeler</asp:ListItem>
                <asp:ListItem>4-wheeler</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblvehiclemodal" runat="server" Text="Vehicle Modal"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtvehiclemodal" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblvehiclemanufacture" runat="server" Text="Vehicle Manufacture"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtvehiclemanufacture" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblareaname" runat="server" Text="Area Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtareaname" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblvehiclechassisno" runat="server" Text="vehicle Chassis No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtvehiclechassisno" runat="server" Width="222px" 
                CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
     <tr>
     <br />
        <td colspan="2" align="center">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Font-Bold="True" 
                Width="79px" onclick="btnSubmit_Click" style="height: 26px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" 
                Width="66px" />
        </td>
    </tr>
</table>
</asp:Content>
