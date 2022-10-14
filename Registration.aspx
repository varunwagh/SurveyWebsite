<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Survey.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 110%;
            height: 335px;
        }
        .style2
        {
            width: 208px;
            text-align: right;
        }
        .style3
        {
            width: 451px;
            text-align: left;
        }
        body{
        background-color:silver;
        padding:50px;
        }
        #box{
	        width:30%;
	        padding:50px;
	        text-align:center;
	        margin:0 auto;
            background-color:white;
            }
        .style4
        {
            width: 208px;
            text-align: right;
            height: 34px;
        }
        .style5
        {
            width: 451px;
            text-align: left;
            height: 34px;
        }
    </style>
</head>
<body style="height: 25px; width: 784px">
    <form id="form1" runat="server">
    <div id="box">
    <table class="style1">
        <tr>
            <td class="style2">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                User Name:</span></td>
            <td class="style3">
                <asp:TextBox ID="TextBoxUN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                E-mail:</span></td>
            <td class="style3">
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="invalid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                Password:</span></td>
            <td class="style3">
                <asp:TextBox ID="TextBoxpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxpass" ErrorMessage="Password required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <span style="display: inline !important; float: none; background-color: transparent; color: rgb(105, 105, 105); font-family: &quot;Helvetica Neue&quot;,&quot;Lucida Grande&quot;,&quot;Segoe UI&quot;,Arial,Helvetica,Verdana,sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                Confirm Password:</span></td>
            <td class="style3">
                <asp:TextBox ID="TextBoxCpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxCpass" ErrorMessage="Confirm Password required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxpass" ControlToValidate="TextBoxCpass" 
                    ErrorMessage="both passwords  must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
