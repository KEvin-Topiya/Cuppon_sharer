using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Cuppon_sharer
{
    public class Class1
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;
        SqlDataAdapter da;
        DataSet ds;
        string[] tbl = { "category_tbl(Cat_name,Img)",
            "company_tbl(Com_name,Img)",
            "product_tbl(UID,Title,Code,Category,Description,Expiry,Discount,Company,Price,Img)",
            "user_tbl(Uname,Password,Email,Phone,Img)" ,
            "preq_tbl(UID,Title,Code,Category,Description,Expiry,Discount,Company,Price,Img)"};

        public SqlConnection getcon()                   // return connection 
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

        public string imgUp(char c, FileUpload f1)
        {
            string x =null;
            if (c == 'p')
            {
                x = "/img/cuppon.svg";
            }
            if (c == 'u')
            {
                x = "/img/user.svg";
            }
            if (f1.HasFile)
                {  
                string fnm = f1.FileName;
                string type = Path.GetExtension(fnm);
                if (type == ".jpg" || type == ".png" || type == ".jpeg" || type == ".avif" || type == ".apng" || type == ".svg" || type == ".webp")
                {

                    if (File.Exists(HttpContext.Current.Server.MapPath("~/img/" + fnm)))
                    {
                        string fn = Path.GetFileNameWithoutExtension(fnm);
                        Random random = new Random();
                        int num = random.Next(01, 20);
                        string tn = fn + num;
                        fn = string.IsNullOrEmpty(tn) ? fn : tn;
                        string fname = fn + type;
                        fnm = "/img/" + fname;
                    }
                    else fnm = "/img/"+fnm;

                    f1.SaveAs(HttpContext.Current.Server.MapPath(fnm));
                    x = fnm;
                
                }
                else
                {
                    x = fnm;
                }
            }
            return x;

        }



        // password encrypt //password dcrypt

        public string passenc(string ps)
        {
            try
            {
                byte[] encdata = new byte[ps.Length];
                encdata = System.Text.Encoding.UTF8.GetBytes(ps);
                string encpass = Convert.ToBase64String(encdata);
                return encpass;
            }
            catch (Exception e)
            {
                throw new Exception("Error in base64Encode" + e.Message);
            }

        }



        public string passdec(string dec)
        {
            var encbyte = System.Convert.FromBase64String(dec);
            return System.Text.Encoding.UTF8.GetString(encbyte);

        }
        /**      //// end pass enc dec operation */

        //////////********crud operations********//////////



        /***** **         INSERT      *******/



        public string strConvert(params string[] obj)
        {
            string str = "'";

            if (obj.Length > 0)
            {
                str += obj[0];
            }
            for (int i = 1; i < obj.Length; i++)
            {
                str += "','" + obj[i];
            }
            str += "'";
            return str;

        }
        public Boolean insert(int i, string p)
        {
            bool x = false;
            cmd = new SqlCommand("insert into " + tbl[i] + " values(" + p + ")", con);
            try
            {
                cmd.ExecuteNonQuery();
                x = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                x = false;
            }
            return x;
        }

        //fatch login information

        public SqlDataReader selectUser(string e, string p)
        {
            getcon();
            cmd = new SqlCommand("select * from user_tbl where Email='" + e + "' and  Password='" + p + "' ", con);

            sdr = cmd.ExecuteReader();
            sdr.Read();
            return sdr;
        }

        //datareader 
        public SqlDataReader sqdr(string sql)
        {
            getcon();
            cmd = new SqlCommand(sql, con);

            sdr = cmd.ExecuteReader();
            sdr.Read();
            return sdr;
        }





        //  Select category
        public DataSet fetchcat(string tbl)
        {
            getcon();
            da = new SqlDataAdapter("select * from "+tbl+"", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet fetchCustom(string tbl,string wh)
        {
            getcon();
            da = new SqlDataAdapter("select * from " + tbl +" " + wh+"", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //delete

        public bool delete(string tbl, int id)
        {
            getcon();
            cmd = new SqlCommand("delete from "+tbl+" where Id="+id+"", con);
            cmd.ExecuteNonQuery();
            return true;
        }

        // truncate

        public void trunc(string tbl)
        {
            getcon();
            cmd = new SqlCommand("truncate table "+tbl+"",con);
            cmd.ExecuteNonQuery();
        }

        //
        
    }

}
