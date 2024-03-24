<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cuppon_sharer.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
     <link rel="stylesheet" href="/css/a.css"/>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>


    <asp:Image ID="gif" CssClass="mygif fcenter" runat="server" />

    <form id="form1" runat="server">
         <div class="fcenter login shadow1">
        <center><h2>Login</h2> </center><br/>
        <table>
            <tr>
                <th>Email: </th>
                <td>
                    <asp:TextBox ID="txeml" placeholder="Email" runat="server"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td>
                    <asp:TextBox ID="txpass"  placeholder="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/forgotpass.aspx" TabIndex="0">Forgote Password?..</asp:LinkButton>
                </td>
            </tr>
        </table>
             <asp:Button ID="Button1" runat="server" CssClass="lcenter btn1 " Text="Login" OnClick="Button1_Click" />
   
    
             <br />
             <asp:Label ID="err" runat="server" ForeColor="#FF0066"></asp:Label>
             <br />
             <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/SignUp.aspx">Create new Account..</asp:LinkButton>
   
    
    </div>
    </form>
 
  
</body>
</html>
