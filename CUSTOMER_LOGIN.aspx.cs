using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class CUSTOMERLOGIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
   
    protected void SignIn_Click(object sender, EventArgs e)  
    {
        SqlConnection cn = new SqlConnection(GetConnectionString());
        cn.Open();
        SqlCommand cm = new SqlCommand("select * from CUSTOMER_DETAIL", cn);
        SqlDataReader dr;
        dr = cm.ExecuteReader();
        while (dr.Read())
        {
            string us = dr["USER_NAME"].ToString();
            string pw = dr["PASSWORD"].ToString();

            if (txtUserName.Text == us.ToString())
            {
                if (txtPassword.Text == pw.ToString())
                {
                    Response.Redirect("~/CHECK_OUT.aspx");
                    //Response.Cookies["unm"].Value = txtUserName.Text;
                    Panel_SignIn.Visible = false;

                }

                else
                {
                    lblMsg.Text = "CHECK YOUR USER NAME AND PASSWORD";

                }
            }
            else
            {
                lblMsg.Text = "CHECK YOUR USER NAME AND PASSWORD";
            }




        }
        dr.Close();

    }

    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void lnkNewUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CUSTOMER_DETAIL.aspx");
    }
}
