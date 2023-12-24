<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterDetails.aspx.cs" Inherits="WebProject.RegisterDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html><body style="background-image:url(https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700406063-optimized.jpg)">
    <div class="container">
        <h1 class="text-center" style="text-align:center;">List Of All Registered Customers</h1>

        <div class="row">
            <div class="col-md-8 mx-auto">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false" Height="500px" Width="1520px">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="phonenumber" HeaderText="Phone_Number" />
                    </Columns>
                     </asp:GridView>
                <br />

            </div>
        </div>
    </div>
        </body></html>
</asp:Content>
