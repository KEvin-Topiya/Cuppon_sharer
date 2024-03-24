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
    public partial class login : System.Web.UI.Page
    { SqlCommand cmd;
        SqlConnection con;
        SqlDataReader sdr;
        Class1 cs;
        
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if(ViewState["atempt"]==null)//for Anti Ddos
            ViewState["atempt"] = 0;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            string loc="";
            cmd = new SqlCommand("select count(*) from user_tbl where Email='"+txeml.Text+"' and Password='"+cs.passenc(txpass.Text)+"'",con);
            int c = Convert.ToInt32(cmd.ExecuteScalar());
            int attmpt=Convert.ToInt32(ViewState["atempt"]);//Anti Ddos
            
            if (c == 1)
            {
                ViewState["atempt"]= attmpt+=1;//for Anti Ddos
                if (attmpt == 1)
                {
                    Response.Write("<script>alert('for the security reason Please log in again😊😊😅')</script>");
                }
                
                if (attmpt == 2)
                {
                 
                sdr = cs.selectUser(txeml.Text,cs.passenc(txpass.Text));

                Session["Login"] = true;
                Session["Uname"] = sdr["Uname"];
                Session["Password"] = sdr["Password"];
                Session["Email"] = sdr["Email"];
                Session["Phone"] = sdr["Phone"];
                Session["Roll"] = sdr["Roll"];
                Session["Img"] = sdr["Img"];
                if (Convert.ToInt32(sdr["Roll"])== 9)               
                    loc="/admin/index.aspx";
                else
                    loc="home.aspx";
                    gif.Attributes["src"]="/img/door.gif";
                    Response.AppendHeader("Refresh", "2;url='" + loc + "'");
                }
                err.Text = "Wrong Username or Password!..";
            }
            else err.Text = "Wrong Username or Password!..";
            txeml.Text = "";
            txpass.Text = "";
        }

       
    }
}