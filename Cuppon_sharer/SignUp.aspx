<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Cuppon_sharer.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link rel="stylesheet" href="/css/a.css"/>
</head>
<body>
    <form id="form1" runat="server">
            <div class="fcenter login shadow1">
        <center><h2>Sign Up</h2> </center><br/>
        <table>
            <tr>
                <th>User Name:</th>
                <td><asp:TextBox ID="txnm" placeholder="User name.." runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <th>Email: </th>
                <td>
                    <asp:TextBox ID="txeml" placeholder="Email.." runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td>
                    <asp:TextBox ID="txps" placeholder="Password.." runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Mobile No: </th>
                <td>
                    <asp:DropDownList  ID="ccode" style="width:fit-content;" runat="server">
                        <asp:ListItem Value="+91">india(+91)</asp:ListItem>
                        <asp:ListItem Value="+1">USA(+1)</asp:ListItem>
                        <asp:ListItem Value="+64">New Zealand(+64)</asp:ListItem>
                    </asp:DropDownList><asp:TextBox ID="txmb" placeholder="Mobile no.." runat="server" TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Image:</th>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx">already have account ? Login..</asp:LinkButton>

                </td>
            </tr>
        </table>
                <asp:Button ID="Button1" CssClass="btn1 lcenter" runat="server" Text="Sign Up" OnClick="Button1_Click" />
   
    
    </div>
    </form>
</body>
</html>
