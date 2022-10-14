<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductSatisfaction.aspx.cs" Inherits="Survey.ProductSatisfaction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
    <div>
    
        1) The value of the (product) as compared to its price is :<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>excellent</asp:ListItem>
            <asp:ListItem>good</asp:ListItem>
            <asp:ListItem>average</asp:ListItem>
            <asp:ListItem>poor</asp:ListItem>
            <asp:ListItem>very poor</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        2) What are some things the&nbsp; (product) could do better :<br />
        <asp:TextBox ID="TextBox1" runat="server" Rows="3"></asp:TextBox>
&nbsp;<br />
        <br />
        3) In your opinion, is the product better, somewhat same or worse than the 
        [other_company] (product) ?<br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>better</asp:ListItem>
            <asp:ListItem>somewhat same</asp:ListItem>
            <asp:ListItem>worse</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        4) How often do you typically use the (product) ?<br />
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem>daily</asp:ListItem>
            <asp:ListItem>weekly</asp:ListItem>
            <asp:ListItem>monthly</asp:ListItem>
            <asp:ListItem>do not use</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;<br />
        5) Do you typically read the back and side panel of the product&#39;s package ?<br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem>yes</asp:ListItem>
            <asp:ListItem>no</asp:ListItem>
        </asp:RadioButtonList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnback" runat="server" PostBackUrl="~/SurveySelection.aspx" 
            Text="Back" />
    
    </div>
    <p>
        <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
