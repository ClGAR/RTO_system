<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm17" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
   
<table align="center" style="border-style: groove" bgcolor="White">
    <tr>
        <td style="width: 407px">
            <p>
                Congrats you passed the test and now you able to apply for license.
                
            </p>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 407px">
        
            <asp:Image ID="Image1" runat="server" ImageUrl="~/USER/image/winner eng.png" 
                Height="203px" Width="237px" />
       </td>
    </tr>
</table>
 </asp:Panel>
  <asp:Panel ID="Panel2" runat="server">
        <table align="center" style="border-style: groove" bgcolor="White">
            <tr>
                <td>
                    Your Fail score must be more than 13  Please try agen later your .
                </td>
            </tr>
              <tr>
        <td align="center" style="width: 407px">
        
            <asp:Image ID="Image2" runat="server" Width="237px" Height="203px" ImageUrl="~/USER/image/loser.png" />
       </td>
    </tr>
        </table>
    </asp:Panel>
</asp:Content>
