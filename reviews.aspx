<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reviews.aspx.cs" Inherits="WebProject.reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table {
            margin-right: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="reviews.css">
</head>
        <body>
    <div class="container">
        <h1>Customers Review</h1>

        <div class="row">
            <div class="col-md-8 mx-auto">
                <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false" height=300px Width=100%>
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Customer Name"/>
                        <asp:BoundField DataField="comments" HeaderText="Comments" />
                        <asp:BoundField DataField="rating" HeaderText="Rating(10)" />
                    </Columns>
                     </asp:GridView>

            </div>
        </div>
    </div>
        </body></html>

</asp:Content>
