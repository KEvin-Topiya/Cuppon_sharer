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
    public partial class cupponList : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        Class1 cs;
        DataSet ds;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                ds = cs.fetchCustom("product_tbl", "where Category='" + Request.QueryString["cat"] + "'");
                filldata(ds);
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            getcon();
           

        }
        void filldata(DataSet ds)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            int prc = 0;
            String wh = "";
            Int32.TryParse(serch.Text, out prc);
            getcon();
            if (serch.Text != "")
            {
              
                wh += " where Title='" + serch.Text + "' or Category='" + serch.Text + "' or Discount='" + serch.Text + "' or Company='" + serch.Text + "'  or Price='" + prc + "'  ";
            }
            ds = new DataSet();
           filldata( cs.fetchCustom("product_tbl",wh));

        }
    }
}