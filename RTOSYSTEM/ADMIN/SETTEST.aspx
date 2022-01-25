<%@ Page Language="C#" MasterPageFile="~/ADMIN/ADMINMASTER.Master" AutoEventWireup="true" CodeBehind="SETTEST.aspx.cs" Inherits="RTOSYSTEM.ADMIN.WebForm6" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table align="center" bgcolor="White" 
        style="font-weight: bold; font-size: large; border-style: groove; height: 301px;">
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold" bgcolor="#9966FF" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="RTO TEST"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lblqid" runat="server" Text="Question Id"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtqid" runat="server" Width="222px"></asp:TextBox>
            
            <asp:DropDownList ID="ddlid" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="qid" DataValueField="qid" AutoPostBack="True" 
                onselectedindexchanged="ddlid_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [qid] FROM [SetTest]"></asp:SqlDataSource>
            
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lblquestion" runat="server" Text="Question"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtquestion" runat="server" Width="222px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lblimage" runat="server" Text="Photo"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="Fuimage" runat="server" Width="222px" />
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lbloption1" runat="server" Text="Option 1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtoption1" runat="server" Width="222px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtoption1" ErrorMessage="Enter Option1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
   <tr>
        <td style="width: 92px">
            <asp:Label ID="lbloption2" runat="server" Text="Option 2"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtoption2" runat="server" Width="222px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtoption2" ErrorMessage="Enter option2">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lbloption3" runat="server" Text="Option 3"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtoption3" runat="server" Width="222px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtoption3" ErrorMessage="Enter option3">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lbloption4" runat="server" Text="option 4"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtoption4" runat="server" Width="222px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtoption4" ErrorMessage="Enter Option4">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 92px">
            <asp:Label ID="lnlans" runat="server" Text="Ans"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtans" runat="server" Width="222px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtans" ErrorMessage="Enter Answer">*</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnsibmit" runat="server" Text="Save" Font-Bold="True" 
                Width="73px" Height="26px" onclick="btnsibmit_Click1"/>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" Text="Update" Font-Bold="True" 
                Width="56px" onclick="btnupdate_Click1"/>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" Text="Delete" Font-Bold="True" 
                Width="56px" onclick="btndelete_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnclear" runat="server" Text="Clear" Font-Bold="True" 
                Width="56px" />
                
        </td>
     </tr>
     <tr>
     <td colspan="2" align="center">
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
     </td>
     </tr>
</table>
</asp:Content>
