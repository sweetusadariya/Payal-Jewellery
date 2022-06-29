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

public partial class ADD_HOME_IMAGE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        DataClass addhomeimage = new DataClass();
        GridViewHomePage.DataSource = addhomeimage.HomeImage();
        GridViewHomePage.DataBind();
    }
    protected void GridViewHomePage_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataClass updateHomeData = new DataClass();
        updateHomeData.UpdateHomeProduct(((TextBox)GridViewHomePage.Rows[e.RowIndex].FindControl("imgHome")).ToString(), ((TextBox)GridViewHomePage.Rows[e.RowIndex].FindControl("txtname")).Text);
        GridViewHomePage.EditIndex = -1;
        BindGrid();


    }
    protected void GridViewHomePage_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewHomePage.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void GridViewHomePage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewHomePage.EditIndex = -1;
        BindGrid();

    }
    protected void GridViewHomePage_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataClass deleteHomeData = new DataClass();
        deleteHomeData.DeleteHomeProduct((GridViewHomePage.DataKeys[e.RowIndex].Values["NAME"].ToString()));
        BindGrid();
    }
    protected void GridViewHomePage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editproduct")
        {
            Session["ProductType"] = e.CommandArgument;
            Response.Redirect("~/EDIT_HOME_PRODUCT.aspx");

        }
    }


    protected void GridViewHomePage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewHomePage.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        ImageUpLoad.SaveAs(MapPath("~/IMAGE/" + "" + ImageUpLoad.FileName));
        string path = "~/IMAGE/" + "" + ImageUpLoad.FileName;

        DataBusiness insertHomePro = new DataBusiness();
        insertHomePro.InsertHomeProductBusiness(txtlnktype.Text, path.ToString());
    }
}
