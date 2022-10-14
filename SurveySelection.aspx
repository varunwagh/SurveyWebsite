<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveySelection.aspx.cs" Inherits="Survey.SurveySelection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey</title>
<style>
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
</style>
</head>
<body style="height: 300px; width: 965px">
<div id="box">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
        Font-Names="Century Gothic" Font-Overline="True" Font-Size="Larger" 
        Font-Underline="True" ForeColor="Blue" Text="Website Feedback Survey"></asp:Label>
    <br />
    attempt survey to get 100rs
    <br />
    cashback on Paytm :<asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/WebsiteFeedback1.aspx" onclick="LinkButton1_Click">attempt</asp:LinkButton>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        Font-Names="Century Gothic" Font-Overline="True" Font-Size="Larger" 
        Font-Underline="True" ForeColor="Blue" 
        Text="Auto dealer owner experience Survey"></asp:Label>
    <br />
    attempt survey to get 50% off<br />
    on your order from Zomato :<asp:LinkButton ID="LinkButton2" runat="server" 
        PostBackUrl="~/ADES.aspx">attempt</asp:LinkButton>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Font-Names="Century Gothic" Font-Overline="True" Font-Size="Larger" 
        Font-Underline="True" ForeColor="Blue" Text="Product Satisfaction Survey "></asp:Label>
    <br />
    attempt survey&nbsp; to get extra 20%off
    <br />
    on your order from Amazon ::<asp:LinkButton ID="LinkButton3" runat="server" 
        PostBackUrl="~/ProductSatisfaction.aspx">attempt</asp:LinkButton>
    </form>
</div>
</body>
</html>
