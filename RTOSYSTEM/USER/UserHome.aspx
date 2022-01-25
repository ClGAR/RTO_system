<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />

<br />
<br />
<br />

<table align="center" bgcolor="Black" 
        
    style="border-style: groove; color: #FFFFFF; height: 238px; width: 999px; text-transform: uppercase;" class="border" 
      >
        <tr>
            <td align="center"  >
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                    ImageUrl="~/USER/image/personal-information (2).png" Width="200px" 
                    PostBackUrl="information.aspx" />
            </td>
                        
            <td align="center">
               
             
               
                <asp:ImageButton ID="ImageButton2" runat="server" Height="181px" 
                    ImageUrl="~/USER/image/1.png" style="margin-top: 0px" 
                    Width="200px" PostBackUrl="/USER/Viewlicense.aspx" CssClass="img" />
                     
            </td>
            <td align="center" style="width: 292px">
                 <asp:ImageButton ID="ImageButton3" runat="server" Height="171px" 
                     ImageUrl="~/USER/image/feedback (1).png" Width="200px" 
                     PostBackUrl="~/USER/Feedback.aspx" />
                
                     
            </td>
        </tr>
        <tr>
                <td align="center">
                         
                         <asp:Label ID="Label4" runat="server" Text="Information" Font-Bold="False" 
                             Font-Size="X-Large"></asp:Label>
                </td>
                <td align="center">
                    
                        <asp:Label ID="Label2" runat="server" Text="View Driving Licesen" 
                            Font-Size="X-Large"></asp:Label>
                </td>
                <td align="center" style="width: 292px">
                        
                        <asp:Label ID="Label3" runat="server" Text="Feedback" Font-Size="X-Large"></asp:Label>
                </td>
        </tr>
</table>
<%--<div style="border-style: groove; height: 431px; background-color: #000000; width: 1094px; margin-left: 91px;" 
        align="center" class="transbox">
<br /><br /><br />
</div>--%>
</asp:Content>
