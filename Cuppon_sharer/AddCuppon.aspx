<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCuppon.aspx.cs" Inherits="Cuppon_sharer.AddCuppon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Cuppon</title>
     <link rel="stylesheet" href="/css/a.css"/>
</head>
<body>
    <form id="form1" runat="server">
         <div class="fcenter login shadow1">
        <center><h2>Add Cuppon</h2> </center><br/>
        <table>
            <tr>
                <th class="auto-style1">Cuppon Title:</th>
                <td class="auto-style1">
                    <asp:TextBox ID="txtitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Cuppon Code: </th>
                <td>
                    <asp:TextBox ID="txcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Category: </th>
                <td>
                    <asp:DropDownList ID="catlist" runat="server"  >
                    </asp:DropDownList>
                </td>
            </tr>
           <tr>
               <th>Discription:</th>
               <td>
                   <asp:TextBox ID="txdec" runat="server" TextMode="MultiLine"></asp:TextBox></td>
           </tr>
            <tr>
                <th>Expiry:</th>
                <td>
                    <asp:TextBox ID="txexp" runat="server" TextMode="Date"></asp:TextBox></td>
               
            </tr>
            <tr>
                <th>Discount:</th>
                <td>
                    <asp:TextBox ID="txdis" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                 <th class="auto-style1">Company(optional):</th>
                <td class="auto-style1">
                    <asp:DropDownList ID="comlist" runat="server"  ></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th>Price:</th>
                <td>
                    <asp:TextBox ID="txprc" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <th>Image(Optional):</th>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
        </table>
             <asp:Button ID="Button1" runat="server" CssClass="lcenter btn1 " Text="Add" OnClick="Button1_Click"  />
             <br />
            <asp:Label ID="err" runat="server" ForeColor="#FF0066"></asp:Label>
             <br />
   
    
    </div>
    </form>
</body>
</html>
