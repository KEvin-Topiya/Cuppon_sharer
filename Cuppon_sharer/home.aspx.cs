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
    public partial class home : System.Web.UI.Page
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
            getcon();
            filldata(cs.fetchcat("category_tbl"));
           
        }
        void filldata(DataSet ds)
        {
            DataList1.DataSource =ds;
            DataList1.DataBind();

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            getcon();
            da = new SqlDataAdapter("select * from category_tbl where Cat_name='"+serch.Text+"' ", con);
            ds = new DataSet();
            da.Fill(ds);
            filldata(ds);

        }
    }
}