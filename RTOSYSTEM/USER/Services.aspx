<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<br />
<br />
<div>
<table align="center" style="border-style: groove; font-size: large; color: #FFFFFF;" ; class="transbox"
        bgcolor="Black">
        <tr>
            <td align="center" bgcolor="Black" style="font-size: x-large; color: #FFFFFF; >
                <asp:Label ID="Label1" runat="server" Text="SERIVIES"></asp:Label>
            </td>
        </tr>
    <tr>
        <td style="font-weight: bold">    
                <br />
                <br />
                The Motor Vechiles&nbsp; Act Provides for regitration of all motor Vechicle in&nbsp; 
                the country
                <br />
                Each Motor vechiles is assigned with a unique Registration Number, Once the 
                vechile
                <br />
                a Certified is issued to the vechile to the ownership the vehicle.<br />
                <br />
                Non-Transport vechile are those and used for commmerical purpose. The owner used
                <br />
                if for this own use. Transport vehicle and those used for commerical purpose.<br />
                They carry cargo and passengers for commerical puposes.The Classfication<br />
               of these vechile is based on gross weight of the vehicle in the case the owner<br />
                of vehicle registration in another state,wants to transfer the vehicle to<br />
                Gujrat, re-registration has to be done. 
                
                <br />
                <br />
                <br />
                <br />
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
        
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/USER/Step_of_vehicle_reg.aspx" ForeColor="White">Vehicle Registration</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="Setp_driving_license.aspx" ForeColor="White">Issue Of Driving License</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" 
                NavigateUrl="~/USER/step_renewlicense.aspx" ForeColor="White">Renew of Driving License</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="~/USER/Dupicate_License.aspx" ForeColor="White">Issue of Dupicate License</asp:HyperLink>
            
        </td>
    </tr>
</table>
    <br />
    </div>
</asp:Content>
