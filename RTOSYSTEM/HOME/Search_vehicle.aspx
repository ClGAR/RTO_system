<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="Search_vehicle.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm8" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="font-size: x-large; font-weight: bold">
    <tr>
        <td align="center" style="font-weight: bold; font-size: x-large" colspan="3">
            <asp:Label ID="Label1" runat="server" Text="SEARCH VEHICLE" ForeColor="White"></asp:Label>
        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblvehicle" runat="server" Text="Vehicle" Font-Size="X-Large" 
                    Font-Bold="True"></asp:Label>
                
            </td>
                <td></td>    
        <td>
                <asp:TextBox ID="txtseach_vehicle" runat="server" Width="222px"></asp:TextBox>
            <asp:Button ID="btnsearch" runat="server" Text="Seach" onclick="btnsearch_Click" 
                    CssClass="button" />
        </td>
    </tr>
    </table>
    <table align="center">
    <tr>
        <td  colspan="3">
            <br />
        </td>
    </tr>
    <tr>
            <td colspan="3">
                   <asp:GridView ID="GridView1" runat="server" BackColor="Wheat" 
                HeaderStyle-BackColor="#9966FF" RowStyle-BorderStyle="Solid" Height="151px" 
                Width="457px">
<RowStyle BorderStyle="Solid"></RowStyle>

<HeaderStyle BackColor="#9966FF"></HeaderStyle>
            </asp:GridView>
            </td>  
    </tr>
</table>
</asp:Content>
