<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="viewlicense.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm13" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<div align="center" 
        style="border-style: groove; width: 350px; margin-left: 542px; margin-right: 42px;">
<asp:DataList ID="DataList2" runat="server" DataKeyField="licence_no" 
        DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <ItemTemplate>

            <table style="width: 100%">
                <tr>
                    <td colspan="1" rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="50px" Width="100px" ImageUrl='<%# Eval("photo") %>'/>
                   </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Lisence No:"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("licence_no") %>'/>
                   </td>
                </tr>
                <tr>
                    <td >
                    <asp:Label ID="Label13" runat="server" Text="Name:"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'/>
                    </td>
                    <td>
                    <asp:Label ID="Label14" runat="server" Text="D.O.B:"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("dob") %>'/>
                    </td>
                </tr>
                 <tr>
                    <td >
                    <asp:Label ID="Label15" runat="server" Text="Address:"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'/>
                    </td>
                    <td>
                     <asp:Label ID="Label2" runat="server" Text="Blood Group:"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("blood_group") %>'/>
                    </td>
                </tr>
                 <tr>
                    <td >
                    <asp:Label ID="Label16" runat="server" Text="Gender:"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("gender") %>'/>
                    </td>
                    <td>
                    <asp:Label ID="Label17" runat="server" Text="Vehicle Type:"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("vehicle_type") %>'/>
                    </td>
                </tr>
                 <tr>
                    <td >
                    <asp:Label ID="Label18" runat="server" Text="Date"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("date") %>'/>
                    </td>
                    <td>
                    <asp:Label ID="Label19" runat="server" Text="Expire Date:"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("expire_date") %>'/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Driving_license]"></asp:SqlDataSource>
        </div>
</asp:Content>
