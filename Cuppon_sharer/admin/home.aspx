<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Cuppon_sharer.admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Document</title>
        <link rel="stylesheet" href="/css/s.css">
        <link rel="stylesheet" href="/css/a.css">
    </head>
    <body>
  
  <!--side   nav bar -->
        <nav class="flx flxdc ">
            <a  class="lcenter ac">
            <div class="uimg">
                <asp:Image ID="uimg" runat="server" ImageUrl="~/mg/img1.jpg" CssClass="uimg" />
            </div>
             <asp:Label ID="uname" CssClass="t" runat="server" Text="Kevin"></asp:Label >
            </a>
            <a style="--c:'Home'" href="/admin/home.aspx" class="active">
            <svg class="home_icn" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                <path fill="#FFF" d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1"/>
            </svg>
            </a><a href="Product.html" style="--c:'Product'">
            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                <path fill="white" fill-rule="evenodd" d="M9.5 19.5a1 1 0 1 0 0-2a1 1 0 0 0 0 2m0 1a2 2 0 1 0 0-4a2 2 0 0 0 0 4m7-1a1 1 0 1 0 0-2a1 1 0 0 0 0 2m0 1a2 2 0 1 0 0-4a2 2 0 0 0 0 4M3 4a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .476.348L9.37 14.5H17a.5.5 0 0 1 0 1H9.004a.5.5 0 0 1-.476-.348L5.135 4.5H3.5A.5.5 0 0 1 3 4" clip-rule="evenodd"/>
                <path fill="white" d="M8.5 13L6 6h13.337a.5.5 0 0 1 .48.637l-1.713 6a.5.5 0 0 1-.481.363z"/>
            </svg>
            </a><a href="user.html" style="--c:'users'">
            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                <circle cx="12" cy="8" r="4" fill="white"/>
                <path fill="white" d="M5.338 17.32C5.999 14.528 8.772 13 11.643 13h.714c2.871 0 5.644 1.527 6.305 4.32c.128.541.23 1.107.287 1.682c.055.55-.397.998-.949.998H6c-.552 0-1.004-.449-.949-.998c.057-.575.159-1.14.287-1.681"/>
            </svg>
            </a><a href="login.html" style="--c:'log in'">
            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                <path fill="white" d="M18.5 2h-13a.5.5 0 0 0-.5.5V11h6V8l5 4l-5 4v-3H5v8.5a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-19a.5.5 0 0 0-.5-.5"/>
            </svg>
            </a>
        </nav>
</asp:Content>





<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <div class="body">
    <!-- Welcome -->
    <section>

      <header >Welcome Admin</header>

        <div class="box2 shadow1">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn1" PostBackUrl="~/admin/addCategory.aspx">Add Category</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn1" PostBackUrl="~/admin/addCompany.aspx">Add Company</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn1" PostBackUrl="~/AddCuppon.aspx">Add Cuppon</asp:LinkButton>


        </div>
        <div class="box shadow1 lcenter">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="category_tbl">Category</asp:ListItem>
                <asp:ListItem Value="company_tbl">Company</asp:ListItem>
                <asp:ListItem Value="preq_tbl">Request</asp:ListItem>
                <asp:ListItem Value="product_tbl">Product</asp:ListItem>
                <asp:ListItem Value="user_tbl">user</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="reset" runat="server" Text="Button" CssClass="btn1 lcenter" OnClick="reset_Click" />
        </div>

        <div class="box shadow1">
            <asp:GridView ID="GridView1" runat="server" CssClass="tbl" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="UID">
                        <FooterTemplate>
                            Descr
                        </FooterTemplate>
                        <HeaderTemplate>
                            UID
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("UID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Code">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Code") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expiry">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Expiry") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Discount">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comapny">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Company") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Img">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Img") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="cmd_edit" Height="30px" ImageUrl="~/img/write.png" Width="30px" CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Approve">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton2" runat="server" CommandName="cmd_approve" Height="30px" ImageUrl="~/img/check.png" CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Reject">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton3" runat="server" CommandName="cmd_reject" Height="40px" ImageUrl="~/img/rejected.png" CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </section>
                    <div class="edt >

                    </div>
            </div>
</asp:Content>






