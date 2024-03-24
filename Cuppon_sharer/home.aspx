<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Cuppon_sharer.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <div class="body">
    <!-- Welcome -->
    <header >Welcome TO Cuppon Sharer</header>
      <!--Ad section  -->
    <div class="ad box shadow1">
    </div>
    <hr class="box">

    <div class="search flx shadow1 login">
        <asp:TextBox ID="serch" placeholder="Search..." runat="server"></asp:TextBox>
          <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/search.png" CssClass="icn" OnClick="ImageButton2_Click" />
     
    </div>

    <div class="fram box flx flxwrp shadow1">
        <asp:DataList ID="DataList1" CssClass="catfrm" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate >
                <div class="itm">
                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="cmd_cat" CssClass="cat_img" ImageUrl='<%# Eval("img") %>' />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Cat_name") %>' Text='<%# Eval("Cat_name") %>' CommandName="cmd_cat"></asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
            </div>
</asp:Content>

