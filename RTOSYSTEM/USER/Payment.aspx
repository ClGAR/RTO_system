<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm11" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="Black" 
    style="border-style: groove; color: #FFFFFF;">
       <tr>
        <td align="center" style="font-size: x-large; font-weight: bold; color: #FFFFFF;" 
               bgcolor="Black" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="PAYMENT"></asp:Label>
        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblamount"  runat="server" Text="Amount Card:"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtamount" PlaceHolder="Aount" runat="server" Width="255px" 
                    ReadOnly="True" CssClass="txtfname" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblhname"  runat="server" Text="Card Holder Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txthname" PlaceHolder="CARD HOLDER NAME" runat="server" 
                    Width="255px" CssClass="txtfname" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Card Holder Name" ControlToValidate="txthname">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcnumber"  runat="server" Text="Card Number"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtcnumber" PlaceHolder="CARD NUMBER" runat="server" 
                    Width="255px" CssClass="txtfname" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Card Number" ControlToValidate="txtcnumber">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcvv"  runat="server" Text="cvv"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtcvv" PlaceHolder="CVV" runat="server" Width="255px" 
                    MaxLength="4" CssClass="txtfname" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter CVV Code" ControlToValidate="txtcvv">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblexpirydate"  runat="server" Text="Creadit Card Expiry"></asp:Label>
               <asp:TextBox ID="txtdate" runat="server" Width="80px" CssClass="txtfname"></asp:TextBox>
                 <asp:Button ID="btncalendar" runat="server" Text="..." 
                    onclick="btncalendar_Click" Width="42px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                    onselectionchanged="Calendar1_SelectionChanged" ForeColor="White"></asp:Calendar>
                
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnsubmit" runat="server" Text="Pay" Width="74px" 
                    onclick="btnsubmit_Click" CssClass="button" />
                
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                 <asp:Button ID="btnexit" runat="server" Text="Exit" Width="71px" 
                    CssClass="button" />
            </td>
        </tr>
</table>
</asp:Content>
