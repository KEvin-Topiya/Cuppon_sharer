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
    public partial class forgotpass : System.Web.UI.Page
    {
        SqlCommand cmd;
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
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("select count(*) from user_tbl where Uname='" + txun.Text + "' and  Email='"+txeml.Text+"'", con);
            int c = Convert.ToInt32(cmd.ExecuteScalar());
            
            if (c == 1)
            {
                string sql = "select Password from user_tbl where email='" + txeml.Text + "'";
                sdr = cs.sqdr(sql);
                MultiView1.ActiveViewIndex = 1;
                ps.Text = cs.passdec(sdr["Password"].ToString());
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}