<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="Cuppon_sharer.forgotpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/a.css">
</head>
<body>
    <form id="form1" runat="server">
         <div class="fcenter login shadow1">
             <asp:MultiView ID="MultiView1" runat="server">
                 <asp:View ID="View1" runat="server">
                     <center><h2>Forgot password</h2> </center><br>
                     <table>
                        <tr>
                            <th>Email: </th>
                            <td><asp:TextBox ID="txeml" placeholder="Email.." runat="server"></asp:TextBox></td>
                        </tr>
                         <tr>
                             <th>UserName:</th>
                             <td>
                                 <asp:TextBox ID="txun" placeholder="UserName.." runat="server"></asp:TextBox></td>
                         </tr>
                     </table>
                     <asp:Button ID="Button1" CssClass="btn1 lcenter" runat="server" Text="verify" OnClick="Button1_Click" />
                 </asp:View>
                 <asp:View ID="View2" runat="server">
                     <center><h2>Your password </h2> </center><br/>
                     <table>
                         <tr>
                            <th>Password: </th>
                            <td>
                                <asp:Label ID="ps" runat="server" Text=""></asp:Label></td>
                        </tr>
                     </table>
                      <asp:Button ID="Button2" CssClass="btn1 lcenter" runat="server" Text="Go to Login" OnClick="Button2_Click" />
                 </asp:View>
             </asp:MultiView>
          
            
    
    </div>
    </form>
</body>
</html>
