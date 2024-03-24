<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCompany.aspx.cs" Inherits="Cuppon_sharer.admin.addCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Company</title>
      <link rel="stylesheet" href="/css/a.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="fcenter login shadow1">
        <center><h2>Add Company</h2> </center><br/>
        <table>
            <tr>
                <th class="auto-style1">Available Company:</th>
                <td class="auto-style1">
                    <asp:DropDownList ID="comlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="Com_name" DataValueField="Com_name" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\cpn_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Com_name] FROM [company_tbl]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <th>Company Name: </th>
                <td>
                    <asp:TextBox ID="txcom" placeholder="Category.." runat="server"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Image/logo:</th>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
        </table>
             <asp:Button ID="Button1" runat="server" CssClass="lcenter btn1 " Text="Add" OnClick="Button1_Click" />
             <br />
            <asp:Label ID="err" runat="server" ForeColor="#FF0066"></asp:Label>
             <br />
   
    
    </div>
    </form>
</body>
</html>
