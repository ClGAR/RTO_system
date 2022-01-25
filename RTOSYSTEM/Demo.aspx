<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="RTOSYSTEM.Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<script>
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
                document.getElementById('label1').innerHTML=' '+hours+':'+mintues+':'+seconds;
            }
            function completed()
            {
                window.location='http://localhost:49721/WebSite9/Default2.aspx';
            }
        
        }
</script>
<body onload="startcount(10);">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>