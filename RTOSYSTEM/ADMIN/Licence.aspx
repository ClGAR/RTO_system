<%@ Page Language="C#" MasterPageFile="~/ADMIN/ADMINMASTER.Master" AutoEventWireup="true" CodeBehind="Licence.aspx.cs" Inherits="RTOSYSTEM.ADMIN.WebForm2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="center" style="height: 187px">
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox1" PlaceHolder="License No:" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" GridLines="Horizontal" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="licence_no" HeaderText="License No">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="User Id">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="D.O.B">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address">
                        <ControlStyle Font-Bold="True" Font-Italic="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="blood_group" HeaderText="Blood Group">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="gender" HeaderText="Gender">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="vehicle_type" HeaderText="Vehicle Type">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                   
                    <asp:ImageField DataImageUrlField="photo" HeaderText="Photo" ItemStyle-Height="10px" ItemStyle-Width="10px" ControlStyle-Height="100px" ControlStyle-Width="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                        <ItemStyle HorizontalAlign="Center" 
                            Width="20px" />
                    </asp:ImageField>
                   
                    <asp:BoundField DataField="date" HeaderText="Apply Date">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="expire_date" HeaderText="Expire Date">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" GridLines="Horizontal" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="licence_no" HeaderText="License No">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="User Id">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="D.O.B">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address">
                        <ControlStyle Font-Bold="True" Font-Italic="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="blood_group" HeaderText="Blood Group">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="gender" HeaderText="Gender">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="vehicle_type" HeaderText="Vehicle Type">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                   
                    <asp:ImageField DataImageUrlField="photo" HeaderText="Photo" ItemStyle-Height="10px" ItemStyle-Width="10px" ControlStyle-Height="100px" ControlStyle-Width="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                        <ItemStyle HorizontalAlign="Center" 
                            Width="20px" />
                    </asp:ImageField>
                   
                    <asp:BoundField DataField="date" HeaderText="Apply Date">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="expire_date" HeaderText="Expire Date">
                        <ControlStyle Font-Bold="True" />
                        <ItemStyle HorizontalAlign="Center" Width="210px" Font-Bold="True" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
<br />
<br />


</asp:Content>
