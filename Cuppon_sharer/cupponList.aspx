<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cupponList.aspx.cs" Inherits="Cuppon_sharer.cupponList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <div class="body">
    <!-- Welcome -->
      <!--Ad section  -->
    <div class="blanck1"></div>

     <div class="search flx shadow1 login">
        <asp:TextBox ID="serch" placeholder="Search..." runat="server"></asp:TextBox>
          <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/search.png" CssClass="icn" OnClick="ImageButton2_Click"  />
    </div>
    <div class="blanck1 "></div>

    <div class="fram box flx flxwrp shadow1">
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CssClass="cat_img" ImageUrl='<%# Eval("Img") %>' />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="pClick" Text='<%# Eval("Title") %>'></asp:LinkButton>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
            </div>
</asp:Content>


