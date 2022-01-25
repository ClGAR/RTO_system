<%@ Page Language="C#" MasterPageFile="~/ADMIN/ADMINMASTER.Master" AutoEventWireup="true" CodeBehind="Duplicate_Licence.aspx.cs" Inherits="RTOSYSTEM.ADMIN.WebForm3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" style="height: 187px">
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox1" PlaceHolder="License No:" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
            </td>
       </tr>
       <tr>
       <td>
          <asp:GridView ID="GridView2" runat="server" CellPadding="3" 
                GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="licence_no" HeaderText="Licnese  No">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="User ID">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="D.O.B">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="vehicle_type" HeaderText="Vehicle Type">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
    
            <asp:GridView ID="GridView1" runat="server" CellPadding="3" 
                GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="licence_no" HeaderText="Licnese  No">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="User ID">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="D.O.B">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="vehicle_type" HeaderText="Vehicle Type">
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
        </td>
    </tr>
    </table>
</asp:Content>
