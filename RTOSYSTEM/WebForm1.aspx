<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RTOSYSTEM.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
        <tr>
        <td>
                <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
                <asp:Label ID="Label2" runat="server" Text="option1"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
                <asp:Label ID="Label3" runat="server" Text="option2"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="option3"></asp:Label>
        </td>
        <td class="style1">
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
                <asp:Label ID="Label5" runat="server" Text="option4"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Next" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
        
      
       
    </div>
    </form>
</body>
</html>
