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

public partial class CUSTOMERDETAIL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(GetConnectionString());
        cn.Open();
        SqlCommand cm = new SqlCommand("select USER_NAME from CUSTOMER_DETAIL", cn);
        SqlDataReader dr;
        dr = cm.ExecuteReader();
        while (dr.Read())
        {
            string us = dr["USER_NAME"].ToString();
            //string pw = dr["PASSWORD"].ToString();

            if (txtUser.Text == us.ToString())
            {
                Response.Write("USER NAME IS ALREADY EXITS. PLEAS ENTER NEW NAME");
            }
            else
            {
                DataBusiness custm = new DataBusiness();
                custm.SubmitCustomerBusiness(txtUser.Text, txtPass.Text, txtFirstName.Text, txtLastName.Text, txtAddress.Text, txtCity.Text, txtPinCode.Text, txtMobilNO.Text, txtEmail_ID.Text);
                Response.Redirect("~/CHECK_OUT.aspx");

            }

                //if (txtPassword.Text == pw.ToString())
                //{
                //    Response.Redirect("~/CHECK_OUT.aspx");
                //    Panel_SignIn.Visible = false;

                //}

                //else
                //{
                //    lblMsg.Text = "CHECK YOUR USER NAME AND PASSWORD";

                //}
            


        }
        dr.Close();

        
    }
    
}
