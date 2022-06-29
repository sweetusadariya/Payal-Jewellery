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

public partial class ADDTOCART : System.Web.UI.Page
{
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["CartArray"] != null)
            {
                ArrayList ArrayListObject = new ArrayList();
                ArrayListObject = (ArrayList)(Session["CartArray"]);

                if (ArrayListObject.Count != 0)
                {

                    DataSet DsGlobal = new DataSet();
                    DsGlobal = BindDatalist(ArrayListObject);
                    DataListAddToCArt.DataSource = DsGlobal;
                    DataListAddToCArt.DataBind();

                }
                else
                {
                    lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, Shopping Cart Is Blank.";
                }
            }
            else
            {
                lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, Shopping Cart Is Blank.";
            }

            
        }
   }

    private DataSet BindDatalist(ArrayList temparray)
    {

        string cart="";
        Int64 Total = 0;

        DataSet ds = new DataSet();

        for (int i=0; i<temparray.Count; i++)
        {
            if(cart=="")
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

            if(tempdataset.Tables.Count > 0)
            {
                if(tempdataset.Tables[0].Rows.Count>0)
                {
                    Total += Convert.ToInt64(tempdataset.Tables[0].Rows[0]["Price"].ToString());
                }
            }

            ds.Merge(tempdataset);
        }

        lblTotal.Text=Total.ToString();
        Session["TotalPrice"] = lblTotal.Text;
        return ds;
    }

    protected void DataListAddToCArt_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        string ArrayString = "";
        
        
        if (Session["CartArray"] != null)
        {
            ArrayList ArrayListObject = new ArrayList();
            ArrayListObject = (ArrayList)(Session["CartArray"]);

            if (ArrayListObject.Count != 0)
            {

                for (int i = 0; i < ArrayListObject.Count; i++)
                {
                    if (ArrayListObject[i].ToString().Contains(e.CommandArgument.ToString()))
                    {
                        ArrayString = ArrayListObject[i].ToString();
                        break;
                    }
                }

                if (ArrayString != "")
                {
                    ArrayListObject.Remove(ArrayString);
                }

                Session["CartArray"] = ArrayListObject;
               
            }
            else
            {
                lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, Shopping Cart Is Blank.";
            }
        }

        if (Session["Count"] != null)
        {
            int count = Convert.ToInt32(Session["Count"].ToString());
            count--;
            Session["Count"] = count;
        }
        else
        {
            Session["Count"] = 1;
        }

        Response.Redirect("~/ADDTOCART.aspx");

    }

    protected void btnContinueShopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HOME.aspx");
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        if (Session["CartArray"] != null)
        {
            Response.Redirect("~/CUSTOMER_LOGIN.aspx");
        }
        else
        {
            lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, You Can Not Check Out";
        }

        //ArrayList ArrayListObject = new ArrayList();
        //ArrayListObject = (ArrayList)(Session["CartArray"]);

        //if (Session["CartArray"] != null)
        //{
        //    if (ArrayListObject.Count != 0)
        //    {
        //        Response.Redirect("~/CHECK_OUT.aspx");
        //    }
        //    else
        //    {
        //        lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, Your Shopping Cart Is Blank";
        //    }
        //}
        //else
        //{
        //    lblShoppongCartMsg.Text = "Now, No Items In Your Shopping Cart. So, Shopping Cart Is Blank.";
        //}


    }


}