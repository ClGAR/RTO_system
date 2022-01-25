<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Driving_License.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm5" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="White" 
        style="font-size: large; font-weight: bold; border-style: groove">
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" bgcolor="#9966FF" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="DRIVING LICENSE"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbllicence_no" runat="server" Text="Licence No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtlicence_no" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbluid" runat="server" Text="User Id"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtuid" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="txtdob" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbladdres" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" Width="222px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblblood_group" runat="server" Text="Blood Group"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtblood_group" runat="server" Width="222px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="rbmale" runat="server" GroupName="gender" Text="Male" />
            <asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" 
                Text="Female" />
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
        <td>
            <asp:Label ID="lblphoto" runat="server" Text="Photo"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="222px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbldate" runat="server" Text="Date"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdate" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblexpire_date" runat="server" Text="Expire Date"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtexpire_date" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="Button1_Click" Height="26px" />
            &nbsp;
            </td>
    </tr>
</table>
</asp:Content>
