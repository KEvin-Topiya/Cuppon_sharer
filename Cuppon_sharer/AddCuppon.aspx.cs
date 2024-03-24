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
    public partial class AddCuppon : System.Web.UI.Page
    {
        SqlConnection con;
        Class1 cs;
        DataSet ds;

        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
           
            filld();
        }

       void filld()
        {
            ds = cs.fetchcat("category_tbl");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                catlist.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
            catlist.Items.Add("other");

            ds = cs.fetchcat("company_tbl");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                comlist.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
            comlist.Items.Add("other");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            if (cs.insert(4,cs.strConvert("2",txtitle.Text,txcode.Text,catlist.SelectedValue,txdec.Text,txexp.Text,txdis.Text,comlist.SelectedValue,txprc.Text,cs.imgUp('p',FileUpload1))))
            {
                Response.Redirect("/admin/home.aspx");
            }
        }
    }
}