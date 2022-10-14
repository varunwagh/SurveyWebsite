<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Survey.WebForm2" %>

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
            width: 252px;
            text-align: right;
        }
        .style3
        {
            width: 252px;
            text-align: right;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
        body{
            background-color:silver;
            padding:50px;
        }
        #box{
	        width:28%;
	        padding:50px;
	        text-align:center;
	        margin:0 auto;
            background-color:white;
        }
    </style>
</head>
<body style="height: 116px; width: 790px">
    <form id="form1" runat="server">
    <div id="box">
    <table class="style1" style="margin-top:60px">
        <tr>
            <td class="style3">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                Username:</span></td>
            <td class="style4">
                <asp:TextBox ID="TextBoxUserLogin" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserLogin" ErrorMessage="username required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                Password:</span></td>
            <td>
                <asp:TextBox ID="TextBoxPassLogin" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassLogin" ErrorMessage="password required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                     Text="Login" style="height: 26px" />
                <br />
            </td>
        </tr>
    </table>
    <p>
        if you haven&#39;t registered yet 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">register here</asp:HyperLink>
    </p>
    </form>
    </div>
</body>
</html>
