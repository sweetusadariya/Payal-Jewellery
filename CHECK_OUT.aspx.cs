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

public partial class CHECKOUT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Count"] = 0;
            if (Session["CartArray"] != null)
            {
                ArrayList ArrayListObject = new ArrayList();
               ArrayListObject = (ArrayList)(Session["CartArray"]);

               if (ArrayListObject.Count != 0)
               {
                   
                    DataSet DsGlobal = new DataSet();
                    DsGlobal = BindGridCheckOut(ArrayListObject);
                    GridViewCheckOut.DataSource = DsGlobal;
                    GridViewCheckOut.DataBind();

                   
                }
            }

            
        }
   }
    private DataSet BindGridCheckOut(ArrayList temparray)
    {

        string cart = "";
        Int64 Total = 0;

        DataSet ds = new DataSet();

        for (int i = 0; i < temparray.Count; i++)
        {
            if (cart == "")
            {
                cart = "'" + temparray[i].ToString() + "'";
            }
            else
            {
                cart = cart + "," + "'" + temparray[i].ToString() + "'";
            }

            DataSet tempdataset = new DataSet();
            DataClass addtocart = new DataClass();

            tempdataset = addtocart.AddToCart_Product(temparray[i].ToString());

            if (tempdataset.Tables.Count > 0)
            {
                if (tempdataset.Tables[0].Rows.Count > 0)
                {
                    Total += Convert.ToInt64(tempdataset.Tables[0].Rows[0]["Price"].ToString());
                }
            }

            ds.Merge(tempdataset);
        }

        lblTot.Text = Total.ToString();
        return ds;
    }




    protected void imgpaypal_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PAYPAL.aspx");
        ////Response.Redirect("~/CUSTOMER_LOGIN.aspx");
    }
    protected void Page_UnLoad(object sender, EventArgs e)
    {
        Session["CartArray"] = null;
    }
}




 
        

          
    