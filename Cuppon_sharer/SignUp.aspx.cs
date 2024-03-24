using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Cuppon_sharer
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con;
        Class1 cs;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            string pass =cs.passenc(txps.Text);

            if (cs.insert(3,cs.strConvert(txnm.Text,pass,txeml.Text,ccode.SelectedValue + "" + txmb.Text,cs.imgUp('u',FileUpload1))))
            {
            Response.Write("<script>alert('Account Created successfully..');window.location='login.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('error in sign up!..😰😰😰😰')</script>");
            }
            txnm.Text = "";
            txps.Text = "";
            txeml.Text = "";
            txmb.Text = "";
            
           
        }

    }
}