<%@ Page Language="C#" MasterPageFile="~/HOME/HOMEMASTER.Master" AutoEventWireup="true" CodeBehind="User_Registration.aspx.cs" Inherits="RTOSYSTEM.HOME.WebForm4" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" 
    
        style="border-style: groove; font-weight: bold; font-size: large; color: #FFFFFF;" 
        class="transbox">
    <tr>
            <td align="center" style="font-size: large; font-weight: bold" colspan="2">
                <asp:Label ID="lbluserr_registration" runat="server" Text="USER REGISTRATION" 
                    ForeColor="White"></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbluid" runat="server" Text="User Id"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtuid" runat="server" Width="222px"  CssClass="txtfname" 
                ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbluname" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtuname" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter User Name" ControlToValidate="txtuname">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblfname" runat="server" Text="First Name" ></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtfname" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Enter First Name" ControlToValidate="txtfname">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtlname" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Enter Last Name" ControlToValidate="txtlname">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 26px">
            <asp:Label ID="lbldob" runat="server" Text="D.O.B"></asp:Label>
        </td>
        <td style="height: 26px">
            <asp:DropDownList ID="ddlday" runat="server">
            </asp:DropDownList>
             <asp:DropDownList ID="ddlmonth" runat="server">
                 <asp:ListItem>jan</asp:ListItem>
                 <asp:ListItem>feb</asp:ListItem>
                 <asp:ListItem>mar</asp:ListItem>
                 <asp:ListItem>apr</asp:ListItem>
                 <asp:ListItem>may</asp:ListItem>
                 <asp:ListItem>jun</asp:ListItem>
                 <asp:ListItem>july</asp:ListItem>
                 <asp:ListItem>aug</asp:ListItem>
                 <asp:ListItem>sep</asp:ListItem>
                 <asp:ListItem>oct</asp:ListItem>
                 <asp:ListItem>nov</asp:ListItem>
                 <asp:ListItem>dec</asp:ListItem>
            </asp:DropDownList>
             <asp:DropDownList ID="ddlyear" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="rbmale" runat="server" GroupName="gender" Text="Male" />
            <asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" Text="Female"/>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" Width="222px" CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Address" Text="*" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your City" Text="*" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmobile" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server" Width="222px" MaxLength="10"  CssClass="txtfname"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ErrorMessage="Enter correct Mobile Number" ControlToValidate="txtmobile" 
                ValidationExpression="\d+">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblemail" runat="server" Text="E-Mail"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter correct mail" ControlToValidate="txtemail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblq1" runat="server" Text="Who is Your Best Friend"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq1" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Enter Best Friend" ControlToValidate="txtq1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblq2" runat="server" Text="Which is your favourite sport"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq2" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="Enter Sport Name" ControlToValidate="txtq1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblq3" runat="server" Text="What is you Nickname"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtq3" runat="server" Width="222px"  CssClass="txtfname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="Enter Nickname" ControlToValidate="txtq3">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="223px" 
                Wrap="False"  CssClass="txtfname"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblretypepwd" runat="server" Text="Re-Type Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtretypepwd" runat="server" Width="222px" 
                CausesValidation="True" TextMode="Password"  CssClass="txtfname"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Password and Re-Type Password must be same" 
                ControlToCompare="txtpwd" ControlToValidate="txtretypepwd">*</asp:CompareValidator>
            </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" CssClass="button" />
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:Button ID="btnclear" runat="server" Text="Clar" onclick="btnclear_Click" 
                Width="63px" CssClass="button" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>
<br />
</asp:Content>
