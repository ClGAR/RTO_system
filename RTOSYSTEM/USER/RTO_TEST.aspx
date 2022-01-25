<%@ Page Language="C#" MasterPageFile="~/USER/USERMASTER.Master" AutoEventWireup="true" CodeBehind="RTO_TEST.aspx.cs" Inherits="RTOSYSTEM.USER.WebForm10" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
  
<script type="text/javascript" >
        function startcount(timeleft)
        {
            var interval=setInterval(countdown,1000);
            update();
            function countdown()
            {
                if(--timeleft>0)
                {
                    update();
                   
                }
                else
                {
                    clearInterval(interval);
                    update();
                    completed();
                }
            }
            function update()
            {
                hours= Math.floor(timeleft/3600);
                mintues=Math.floor((timeleft%3600)/60);
                seconds=timeleft%60;
                            
                document.getElementById('<%=label11.ClientID %>').innerHTML=' '+hours+':'+mintues+':'+seconds;
                           
            }
            function completed()
            {
                alert("You have to submit before the time");
                window.location='Setp_driving_license.aspx';
            }
        
        }
</script>

<body>
 
    <div style="border-style: groove; margin-left: 306px; margin-right: 199px;"
        align="left">
    
        <asp:Label ID="label11" runat="server" Text="Label"></asp:Label>
  
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand">
    <ItemTemplate>
        <table>
            <tr>
                <td>
                
                1:    <asp:Label ID="lblqid" runat="server" Text='<%# Eval("qid") %>' Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblquestion" runat="server" Text='<%# Eval("question") %>'/>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="150px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb1" runat="server" GroupName="Option" Text='<%# Eval("q1") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb2" runat="server" GroupName="Option" Text='<%# Eval("q2") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb3" runat="server" GroupName="Option" Text='<%# Eval("q3") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb4" runat="server" GroupName="Option" Text='<%# Eval("q4") %>' />
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblans" runat="server" Text='<%# Eval("ans") %>' Visible="False" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT TOP(15) * FROM SetTest ORDER BY NEWID()">
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    <br />
    <asp:Label ID="lblmarks" runat="server" Text="Label" Visible="False"></asp:Label>
   </div>
    </body>
</html>
 </asp:Content>
