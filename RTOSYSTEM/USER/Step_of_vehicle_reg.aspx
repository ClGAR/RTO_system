<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Step_of_vehicle_reg.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm12" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center" style="height: 438px">
    <br />
    <br />
    
    <table align="center" bgcolor="Black" 
        style="border-style: groove; font-size: large; color: #FFFFFF;" 
        class="transbox">
    <tr>
    <td>
           <p>There are some steps you have to follow for Vehicle Registration.<br /></p>
                                <p>1. You cant change the vehicle registration no.</p>
           <p>2. The user must fill the form.</p>
           <p>3. You cant change the User id.</p>
        </td>
         </tr>
         <tr>
            <td align="center" style="font-size: large; font-weight: bold">
                Click below image to go for Vehicle Registration<br />
                <asp:ImageButton ID="btnpaysment" runat="server" 
                    PostBackUrl="~/USER/Vehicle_Registration.aspx" Height="96px" ImageUrl="~/USER/image/personal-information (2).png" 
                    Width="125px" />
            </td>
         </tr>
    </table>
    </div>
</asp:Content>
