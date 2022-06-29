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

public partial class DETAIL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["ProductName"] != null)
        {
            string name = Session["ProductName"].ToString();

            DataClass detail = new DataClass();
            FormViewDetail.DataSource = detail.Detail_Product(name);
            FormViewDetail.DataBind();
        }

    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        if (Session["Count"] != null)
        {
            int count = Convert.ToInt32(Session["Count"].ToString());
           count++;
            Session["Count"] = count;
        }
        else
        {
            Session["Count"] = 1;
        }
       

        if (Session["CartArray"] != null)
        {
            ArrayList ArraylistObject = new ArrayList();
            ArraylistObject = (ArrayList)Session["CartArray"];
            ArraylistObject.Add(Session["ProductName"].ToString());
            Session["CartArray"] = ArraylistObject;

        }
        else
        {
            ArrayList ArraylistObject = new ArrayList();
            ArraylistObject.Add(Session["ProductName"].ToString());
            Session["CartArray"] = ArraylistObject;
        }
        Response.Redirect("~/ADDTOCART.aspx");
        
    }
}
