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

public partial class EDIT_HOME_PRODUCT : System.Web.UI.Page
{
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ProductType"] != null)
            {
                DataClass edit = new DataClass();
                DataSet editdataset = new DataSet();
                editdataset = edit.Edit_Home_Product(Session["ProductType"].ToString());
                
                txtType.Text = editdataset.Tables[0].Rows[0]["NAME"].ToString();
            }
        }

    }
    protected void btnUpdateHomeProduct_Click(object sender, EventArgs e)
    {
        if (EditHomeFileUpload.HasFile)
        {
            string FilePath = Server.MapPath("~/IMAGE/" + "" + EditHomeFileUpload.FileName);
            EditHomeFileUpload.SaveAs(FilePath);

        }

        DataClass updateHome = new DataClass();
        updateHome.UpdateHomeProduct(Session["ProductType"].ToString(), "~/IMAGE/" + "" + EditHomeFileUpload.FileName);

    }
    protected void btnHomeBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADD_HOME_IMAGE.aspx");
    }
}
