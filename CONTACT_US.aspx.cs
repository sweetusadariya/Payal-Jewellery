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

public partial class CONTACT_US : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClass contact = new DataClass();
        DataListContact.DataSource = contact.Contact();
        DataListContact.DataBind();
 
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
       DataBusiness sendreview = new DataBusiness();
       sendreview.CustomerReviewBusiness(txtFullName.Text, txtEmailId.Text, txtMessege.Text);
    }
}
