using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.Globalization;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Count"] != null)
        {
            lblCart.Text = Session["Count"].ToString();
        }
            DataClass link = new DataClass();
            DataListLink.DataSource = link.HomeImage();
            DataListLink.DataBind();
       

    }
    protected void DataListLink_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string nm = e.CommandArgument.ToString();
        Session["ProductType"] = nm;

        Response.Redirect("~/DISPLAY_ITEM.aspx");
    }




    
    protected void lnkCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADDTOCART.aspx");
    }

    
}
