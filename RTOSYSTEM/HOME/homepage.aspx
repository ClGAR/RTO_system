<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
    <table  align="center" class="border">
    <tr style=" width:1110px; height:310px">
    <td colspan="3"  >
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" runat="server" Height="300px" Width="1200px" CssClass="border" />
        </ContentTemplate>
        </asp:UpdatePanel>
    </td>
    </tr>
    <tr><td colspan="3">&nbsp;</td></tr>
    <tr><td colspan="3">&nbsp;</td></tr>
  
</table>
</asp:Content>
