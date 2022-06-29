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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataClass home = new DataClass();
            DataListImage.DataSource = home.HomeImage();
            DataListImage.DataBind();
        }

    }

    protected void DataListImage_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string nm = e.CommandArgument.ToString();
        Session["ProductType"] = nm;
        
        Response.Redirect("~/DISPLAY_ITEM.aspx");

    }

        
}
