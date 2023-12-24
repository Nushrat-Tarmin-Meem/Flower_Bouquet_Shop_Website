<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reviewadd.aspx.cs" Inherits="WebProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="addreview.css">
</head>
<body style="background-color:white">
    <div class="hero">
        <h1>YOUR REVIEW IS OUR CONCERN</h1></div>
    <div class="review">
        <p><asp:Label ID="Label3" runat="server" Text="Your Name?"></asp:Label>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="rname" runat="server"></asp:TextBox></span>
        </p>
        <p><asp:Label ID="Label2" runat="server" Text="Your Comment?"></asp:Label>
            <span>&nbsp; <asp:TextBox ID="rcomment" runat="server"></asp:TextBox></span>
        </p>
        <p><asp:Label ID="Label4" runat="server" Text="Rating out of 10?"></asp:Label>
            <span><asp:TextBox ID="rrating" runat="server"></asp:TextBox></span>
        </p>
        <p><span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" Height="40px" Width="114px" BackColor="LightGreen"/>
            </span>
        </p>
        
</div>
</body>
</html>

</asp:Content>
