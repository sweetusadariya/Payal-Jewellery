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

public partial class PAYPAL : System.Web.UI.Page
{

    //Imports System.Configuration.ConfigurationManager;

    //Partial Class PayPal
    //Inherits System.Web.UI.Page
    protected string cmd = "_xclick";
    protected string business = ConfigurationManager.AppSettings["BusinessEmail"];
    protected string item_name = "Payment for goods";
    protected string amount;
    protected string return_url = ConfigurationManager.AppSettings["ReturnUrl"];
    protected string notify_url = ConfigurationManager.AppSettings["NotifyUrl"];
    protected string cancel_url = ConfigurationManager.AppSettings["CancelPurchaseUrl"];
    protected string currency_code = ConfigurationManager.AppSettings["CurrencyCode"];
    protected string no_shipping = "1";
    protected string URL;
    protected string request_id;
    protected string rm;

    protected void Page_Load(object sender, EventArgs e)
    {
        //determining the URL to work with depending on whether sandbox or a real PayPal account should be used
        //ConfigurationManager.AppSettings["UseSendbox"].ToString();
        if (ConfigurationManager.AppSettings["UseSandbox"].ToString() == "true")
        {

            URL = "https://www.sandbox.paypal.com/cgi-bin/webscr";
        }
        else
        {
            URL = "https://www.paypal.com/cgi-bin/webscr";
        }


        //This parameter determines the was information about successfull transaction will be passed to the script
        // specified in the return_url parameter.
        //"1" - no parameters will be passed.
        // "2" - the POST method will be used.
        // "0" - the GET method will be used. 
        // The parameter is "0" by deault.

        //if (ConfigurationManager.AppSettings["UseSandbox"].ToString() == "true")
        //{
        //    rm = "2";
        //}
        //else
        //{
        //    rm = "1";
        //}


        //the total cost of the cart
        amount = Session["TotalPrice"].ToString() ;
        //the identifier of the payment request
        //request_id = Session["request_id"].ToString();
        request_id = "1";
    }
}
