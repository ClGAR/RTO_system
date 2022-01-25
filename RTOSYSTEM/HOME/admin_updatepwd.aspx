<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="admin_updatepwd.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm11" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br />
<br />
<table align="center" 
        
    style="font-weight: bold; font-size: x-large; border-style: groove; height: 261px;">
   <tr>
        <td align="center" style="font-weight: bold" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="UPDATE PASSWORD" ForeColor="#0066FF"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="lblnewpwd" runat="server" Text="New Password"></asp:Label>
       
        <td>
            <asp:TextBox ID="txtnewpwd" runat="server" Width="222px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="Enter Password" ControlToValidate="txtnewpwd">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblretypepwd" runat="server" Text="Re-Type Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtretypepwd" runat="server" Width="222px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Password and Re-Type Password must be same" 
                ControlToCompare="txtnewpwd" ControlToValidate="txtretypepwd">*</asp:CompareValidator>
            </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Clear" runat="server" Text="Submit" onclick="Clear_Click" />
           
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        </tr>
  </table>
</asp:Content>
