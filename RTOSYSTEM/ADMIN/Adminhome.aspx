<%@ Page Language="C#" MasterPageFile="~/ADMIN/ADMINMASTER.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="RTOSYSTEM.ADMIN.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" style="border-style: groove; color: #FFFFFF;" class="border"
        >
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" 
                    ImageUrl="~/ADMIN/image/information.png" Width="300px" 
                    PostBackUrl="information.aspx" CssClass="border" />
            </td>
                        
            <td>
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                <asp:ImageButton ID="ImageButton2" runat="server" Height="173px" 
                    ImageUrl="~/USER/image/driver-license (1).png" style="margin-top: 0px" 
                    Width="381px" PostBackUrl="/USER/Viewlicense.aspx" CssClass="border" />
                     
            </td>
            <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="169px" 
                     ImageUrl="~/USER/image/feedback (1).png" Width="329px" 
                     PostBackUrl="~/USER/Feedback.aspx" CssClass="border" />
                     
            </td>
        </tr>
        <tr>
                <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label4" runat="server" Text="Information" Font-Bold="False" 
                             Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="View Driving Licesen" 
                            Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Feedback" Font-Size="X-Large"></asp:Label>
                </td>
        </tr>
</table>
</asp:Content>
