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

public partial class ADMIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";  
    }
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void btAdd_Click(object sender, EventArgs e)
    {

        if (txtPass.Text == txtConfirmPassword.Text)
        {
            DataBusiness db = new DataBusiness();
            db.AddBusiness(txtUser.Text, txtPass.Text);

            Response.Redirect("~/ADMIN.aspx");
        }
        else
        {
            lblCheckPassmsg.Text = "YOUR PASSWORD AND CONFIRM PASSWORD IS NOT MATCH";
        }
    }
    protected void btDelete_Click(object sender, EventArgs e)
    {
        DataBusiness dt = new DataBusiness();
        dt.DeleteBusiness(txtUser.Text);
    }
    protected void btUpdate_Click(object sender, EventArgs e)
    {
        //DataBusiness up = new DataBusiness();
        //up.UpdateBusiness(txtUser.Text, txtPass.Text);

        if (txtPass.Text == txtConfirmPassword.Text)
        {
            DataBusiness up = new DataBusiness();
            up.UpdateBusiness(txtUser.Text, txtPass.Text);

            Response.Redirect("~/ADMIN.aspx");
        }
        else
        {
            lblCheckPassmsg.Text = "YOUR PASSWORD AND CONFIRM PASSWORD IS NOT MATCH";
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(GetConnectionString());
        cn.Open();
        SqlCommand cm = new SqlCommand("select * from LOGIN", cn);
        SqlDataReader dr;
        dr = cm.ExecuteReader();

        while (dr.Read())
        {
            string us = dr["USERNAME"].ToString();
            string pw = dr["PASSWORD"].ToString();

            if (txtUserName.Text == us.ToString())
            {
                if (txtPassword.Text == pw.ToString())
                {
                    Panel_Buttons.Visible = true;
                    Panel_SignIn.Visible = false;
                    //btnNewAdmin.Visible = true;
                    //btnAddProduct.Visible = true;
                    
                    //btnShowReview.Visible = true;
                    break;

                }

                else
                {
                    lblMsg.Text = "CHECK YOUR USER NAME AND PASSWORD";

                }
                break;
            }
            else
            {
                lblMsg.Text = "CHECK YOUR USER NAME AND PASSWORD";
            }



        }
        dr.Close();

    }
    protected void btnNewAdmin_Click(object sender, EventArgs e)
    {
        Panel_SignIn.Visible = false;
        Panel_Buttons.Visible = false;
        Panel_NewAdmin.Visible = true;
    }
    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADD_PRODUCT.aspx");
    }
    protected void btnShowReview_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CUSTOMER_REVIEW.aspx");
    }
    protected void btnAddHomeProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADD_HOME_IMAGE.aspx");
    }
    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADD_CATEGORY.aspx");
    }
}
