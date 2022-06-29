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

public partial class AddProduct : System.Web.UI.Page
{
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            
            SqlConnection ConnectAddProduct = new SqlConnection(GetConnectionString());
            SqlDataAdapter AdapterAddProduct = new SqlDataAdapter("select NAME from HOME_IMG", ConnectAddProduct);
            ConnectAddProduct.Open();
            DataSet DataSetAddProduct = new DataSet();
            AdapterAddProduct.Fill(DataSetAddProduct);
            ConnectAddProduct.Close();

            dropProType.DataSource = DataSetAddProduct;
            dropProType.DataBind();

            Bind_Gridview();

        }
    }

    protected void Bind_Gridview()
    {
        string type = dropProType.SelectedItem.Text;

        DataClass db = new DataClass();
        GridviewDatabase.DataSource = db.Display_GridView(type);
        GridviewDatabase.DataBind();
    }

    protected void GridviewDatabase_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataClass updatedatabase = new DataClass();
        updatedatabase.UpdateProduct(((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("imgDataBase")).ToString(), ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txtcode")).Text, ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txtname")).Text, ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txttype")).Text, ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txtweight")).Text, ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txtprice")).Text, ((TextBox)GridviewDatabase.Rows[e.RowIndex].FindControl("txtstock")).Text);
        GridviewDatabase.EditIndex = -1;
        Bind_Gridview();


    }
    protected void GridviewDatabase_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridviewDatabase.EditIndex = e.NewEditIndex;
        Bind_Gridview();
    }

    protected void GridviewDatabase_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridviewDatabase.EditIndex = -1;
        Bind_Gridview();

    }
    protected void GridviewDatabase_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataClass deletedatabase = new DataClass();
        deletedatabase.DeleteProduct((GridviewDatabase.DataKeys[e.RowIndex].Values["PRODUCT_NAME"].ToString()));
        Bind_Gridview();
    }
    protected void GridviewDatabase_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editproduct")
        {
            Session["ProductName"] = e.CommandArgument;
            Response.Redirect("~/EDIT_PRODUCT.aspx");
            
        }
    }
    protected void GridviewDatabase_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridviewDatabase.PageIndex = e.NewPageIndex;
        Bind_Gridview();
    }


    protected void btnInsert_Click(object sender, EventArgs e)
    {
        FileuploadImage.SaveAs(MapPath("~/IMAGE/" + "" + FileuploadImage.FileName));
        string path = "~/IMAGE/" + "" + FileuploadImage.FileName;

        DataBusiness insertPro = new DataBusiness();
        insertPro.InsertProductBusiness(txtProCode.Text, txtName.Text, DropDownCategory.Text, dropProType.Text, txtProWeight.Text, txtProPrice.Text, txtProStock.Text,path.ToString());

    }

    

    protected void dropProType_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Bind_Gridview();
    }
}
