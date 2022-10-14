<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebsiteFeedback1.aspx.cs" Inherits="Survey.WebsiteFeedback1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 169px; width: 766px">
    <form id="form1" runat="server">
    <div style="height: 625px; width: 761px">
    
        1) Overall, how well does our website meet your needs ?<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>very well</asp:ListItem>
            <asp:ListItem>somewhat well </asp:ListItem>
            <asp:ListItem>not so well </asp:ListItem>
        </asp:RadioButtonList>
        <br />
        2) how easy was it to find what you were looking for on our website ?<br />
&nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>very easy</asp:ListItem>
            <asp:ListItem>not so easy</asp:ListItem>
            <asp:ListItem>not so easy</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        3) How much do you trust the infformation on our website ?<br />
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem>a lot </asp:ListItem>
            <asp:ListItem>a little</asp:ListItem>
            <asp:ListItem>not at all</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        4) how visually appealing is our website ?<br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem>very appealing</asp:ListItem>
            <asp:ListItem>somewhat appealing</asp:ListItem>
            <asp:ListItem>not so appealing </asp:ListItem>
        </asp:RadioButtonList>
        <br />
        5) do you have any other comments on how we could improve our website ?<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="182px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
          
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/SurveySelection.aspx" 
            Text="Back" />
          
        <br />
    
        <asp:Label ID="lbl1" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
