using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Cuppon_sharer.admin
{
    public partial class addCategory : System.Web.UI.Page
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
            if (cs.insert(0,cs.strConvert(txcat.Text,cs.imgUp('f',FileUpload1))))
            {
                Response.Redirect("/admin/home.aspx");
            }
            else
            {
                err.Text = "unable to insert";
            }

        }
    }
}