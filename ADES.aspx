<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADES.aspx.cs" Inherits="Survey.ADES" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 705px; width: 749px">
    <form id="form1" runat="server">
    <div>
    
        1) Do you or someone in your household still have this [vehicle] ?<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>yes</asp:ListItem>
            <asp:ListItem>no</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        2) Have you returned to the [dealership] for any type of service on your 
        [vehicle] during the past 12 months ?<br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>yes</asp:ListItem>
            <asp:ListItem>no </asp:ListItem>
            <asp:ListItem>not sure </asp:ListItem>
        </asp:RadioButtonList>
&nbsp;<span><br />
        3) Were your concern(s) resolved ?<br />
        </span>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem>yes</asp:ListItem>
            <asp:ListItem>no</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        4) Did you let the dealership know about&nbsp; your concern(s)?<br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem>yes</asp:ListItem>
            <asp:ListItem>no</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;
        <br />
        5) Overall, how satisfied are you with this service exxperience&nbsp; ?<br />
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem>very satisfied</asp:ListItem>
            <asp:ListItem>satisfied</asp:ListItem>
            <asp:ListItem>neutral</asp:ListItem>
            <asp:ListItem>dissatisfied</asp:ListItem>
            <asp:ListItem>very dissatisfied</asp:ListItem>
        </asp:RadioButtonList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
             
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" 
            PostBackUrl="~/ProductSatisfaction.aspx" Text="Back" />
    </div>
    <asp:Label ID="lbl2" runat="server"></asp:Label>
    </form>
</body>
</html>
