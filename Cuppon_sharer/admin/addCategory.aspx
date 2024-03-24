<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="Cuppon_sharer.admin.addCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Category</title>
         <link rel="stylesheet" href="/css/a.css"/>

</head>
<body>
    <form id="form1" runat="server">
       <div class="fcenter login shadow1">
        <center><h2>Add Product</h2> </center><br/>
        <table>
            <tr>
                <th>Available Categorys:</th>
                <td>
                    <asp:DropDownList ID="catlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="Cat_name" DataValueField="Cat_name" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\cpn_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [Cat_name] FROM [category_tbl]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <th>Category Name: </th>
                <td>
                    <asp:TextBox ID="txcat" placeholder="Category.." runat="server"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Image: </th>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
          
        </table>
             <asp:Button ID="Button1" runat="server" CssClass="lcenter btn1 " Text="Add" OnClick="Button1_Click"/>
             <br />
           <asp:Label ID="err" runat="server" ForeColor="#FF0066"></asp:Label>
             <br />
   
    
    </div>
    </form>
</body>
</html>
