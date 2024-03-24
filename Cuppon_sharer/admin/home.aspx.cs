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
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        Class1 cs;
        DataSet ds;
        void getcon()
        {
            cs = new Class1();
            con = cs.getcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getcon();
                fillgrid();
            }
        }
        void fillgrid()
        {
            getcon();
            GridView1.DataSource = cs.fetchcat("preq_tbl");
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            getcon();
            int id = Convert.ToInt32(e.CommandArgument);
            ViewState["Id"] = id;
            if (e.CommandName == "cmd_reject")
            {
                cs.delete("preq_tbl",id);
            }
            if (e.CommandName == "cmd_edit")
            {

            }
            if(e.CommandName== "cmd_approve")
            {
                cmd = new SqlCommand("insert into product_tbl(UID,Title,Code,Category,Description,Expiry,Discount,Company,Price,Img) select UID,Title,Code,Category,Description,Expiry,Discount,Company,Price,Img from preq_tbl where Id="+id+"", con);
                cmd.ExecuteNonQuery();
                cs.delete("preq_tbl", id);
                
            }
                fillgrid();
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            getcon();
            cs.trunc(RadioButtonList1.SelectedValue);
        }
    }
}