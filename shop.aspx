<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebProject.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <html>
        <body">
            <form>
                <div class="col-log-8" style="margin-top:30px">
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                        <HeaderStyle BackColor="lightgreen" Font-Bold="true" Font-Size="Large" ForeColor="black" HorizontalAlign="Center" />
                        <HeaderTemplate><h1>AVAILABLE PRODUCTS</h1></HeaderTemplate>
                        <ItemTemplate>
                            <div style="width:298px; text-align:center">
                                <br />
                                <asp:Image ID="lblImage" runat="server" ImageUrl='<%#Eval("fimage","~/FlowerImages/{0}") %>' Width="280px" Height="280px"/>
                                <br />
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                <br />
                                <b>Tk.</b>
                                <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("fprice") %>'></asp:Label>
                                <br />
                                <asp:Button ID="buy" runat="server" Text="BUY NOW"  CommandName="viewdetail" CommandArgument='<% #Eval("fname") + "," + Eval("fprice") + "," + Eval("fimage") %>' />
                                <br />
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </form>
        </body>
    </html>

</asp:Content>
