<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Survey.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 204px;
        }
        .style3
        {
            height: 61px;
        }
        .style4
        {
            width: 204px;
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td style="text-align: right">
                Usernname :</td>
            <td class="style2">
                <asp:TextBox ID="t1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                Passsword :&nbsp; 
            </td>
            <td class="style2">
                <asp:TextBox ID="t2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: right">
            </td>
            <td class="style4">
                <asp:Button ID="btnadmlogin" runat="server" onclick="btnadmlogin_Click" 
                    Text="Login " />
                <br />
                <br />
                <asp:Label ID="l1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
