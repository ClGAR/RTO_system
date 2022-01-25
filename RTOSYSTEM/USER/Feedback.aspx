<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm14" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="Black" 
    style="border-style: groove; color: #FFFFFF;">
       <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" bgcolor="Black" 
               colspan="2">
            <asp:Label ID="Label2" runat="server" Text="FEEDBACK"></asp:Label>
        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblname"  runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtname" PlaceHolder="Name" runat="server" Width="222px" ></asp:TextBox>
            </td>
        </tr>
        
         <tr>
            <td>
                <asp:Label ID="lblmno"  runat="server" Text="Mobile No"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtmno" PlaceHolder="Mobile Number" runat="server" Width="222px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemail"  runat="server" Text="E-Mail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtemail" PlaceHolder="E-Mail" runat="server" Width="222px" ></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter correct mail" ControlToValidate="txtemail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblfdate"  runat="server" Text="Date"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
             <asp:TextBox ID="txtdate" runat="server" Width="222px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        
       
        <tr>
            <td>
                 <asp:Label ID="lblcomment"  runat="server" Text="Comment"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtcomment" PlaceHolder="Comment" runat="server" TextMode="MultiLine" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnsubi" runat="server" Text="Submit" onclick="btnsubi_Click" />
            </td>
        </tr>
</table>
</asp:Content>
