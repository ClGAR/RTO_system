<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm15" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />

<table align="center" 
        style="border-style: groove; color: #FFFFFF; font-weight: bold;" 
        class="transbox">

    <tr>
        <td style="width: 427px">
            <asp:Label ID="lbluseid" runat="server" Text="User Id"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtuserid" PlaceHolder="User Id" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lbluname" runat="server" Text="User Name"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtuname" PlaceHolder="User Name" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtfname" PlaceHolder="First Name" runat="server" 
                Width="500px" ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtlname" PlaceHolder="Last Name" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lbldob" runat="server" Text="D.O.B"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtdob" PlaceHolder="D.O.B" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
                <asp:DropDownList ID="ddldate" runat="server" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlmonth" runat="server" Visible="False">
                 <asp:ListItem>jan</asp:ListItem>
                 <asp:ListItem>feb</asp:ListItem>
                 <asp:ListItem>mar</asp:ListItem>
                 <asp:ListItem>apr</asp:ListItem>
                 <asp:ListItem>may</asp:ListItem>
                 <asp:ListItem>jun</asp:ListItem>
                 <asp:ListItem>july</asp:ListItem>
                 <asp:ListItem>aug</asp:ListItem>
                 <asp:ListItem>sep</asp:ListItem>
                 <asp:ListItem>oct</asp:ListItem>
                 <asp:ListItem>nov</asp:ListItem>
                 <asp:ListItem>dec</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlyear" runat="server" Visible="False">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lblgender"  runat="server" Text="Gender"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="height: 32px; width: 427px;">
            <asp:TextBox ID="txtgender" PlaceHolder="Gender" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
            <asp:RadioButton ID="rbmale" runat="server" GroupName="Gender" Text="Male" 
                Visible="False" />
             <asp:RadioButton ID="rbfemale" runat="server" GroupName="Gender" Text="Female" 
                Visible="False" />
            
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtaddrss" PlaceHolder="Address" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtcity" PlaceHolder="City" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lblmobile" runat="server" Text="Mobile"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; width: 427px;" width="500px">
            <asp:TextBox ID="txtmobile" PlaceHolder="Mobile" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:Label ID="lblemail" runat="server" Text="E-Mail"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">
            <asp:TextBox ID="txtemail" PlaceHolder="E-Mail" runat="server" Width="500px" 
                ReadOnly="True" CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
            <td colspan="2" align="center" style="width: 427px">
                <asp:Button ID="btnedit" runat="server" Text="Edit" Width="71px" 
                    onclick="btnedit_Click" CssClass="button" />  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="btnupdate" runat="server" Text="Save" Width="71px" 
                    onclick="btnupdate_Click" CssClass="button" /> 
            </td>
    </tr>
    
</table>
</asp:Content>
