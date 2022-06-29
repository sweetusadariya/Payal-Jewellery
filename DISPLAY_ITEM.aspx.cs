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

public partial class DISPLAY_ITEM : System.Web.UI.Page
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
                string type = Session["ProductType"].ToString();

                SqlConnection ConnectAddProduct = new SqlConnection(GetConnectionString());
                SqlDataAdapter AdapterAddProduct = new SqlDataAdapter("select CATEGORY_NAME from CATEGORY where PRODUCT_TYPE = '" + type + "'", ConnectAddProduct);
                ConnectAddProduct.Open();
                DataSet DataSetAddProduct = new DataSet();
                AdapterAddProduct.Fill(DataSetAddProduct);
                ConnectAddProduct.Close();

                DropDownCategory.DataSource = DataSetAddProduct;
                DropDownCategory.DataBind();
            }
            BindDataList();

        }
    }

    PagedDataSource pds = new PagedDataSource();

    public int CurrentPage
    {

        get
        {
            if (this.ViewState["CurrentPage"] == null)
                return 0;
            else
                return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
        }

        set
        {
            this.ViewState["CurrentPage"] = value;
        }

    }

    private void doPaging()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("PageIndex");
        dt.Columns.Add("PageText");
        for (int i = 0; i < pds.PageCount; i++)
        {
            DataRow dr = dt.NewRow();
            dr[0] = i;
            dr[1] = i + 1;
            dt.Rows.Add(dr);
        }

        dlPaging.DataSource = dt;
        dlPaging.DataBind();
    }
    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("lnkbtnPaging"))
        {
            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());

            BindDataList();
        }
    }
    protected void lnkbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        BindDataList();
    }

    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        BindDataList();
    }
    protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        CurrentPage = 0;
        BindDataList();
    }

    protected void DataListDisplayItem_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string Pronm = e.CommandArgument.ToString();
        Session["ProductName"] = Pronm;

        Response.Redirect("~/DETAIL_PRODUCT.aspx");

    }

    protected void BindDataList()
    {
        DataTable dt = new DataTable();
        string type = "";

        if (Session["ProductType"] != null)
        {
            type = Session["ProductType"].ToString();
        }

        if (type == "BENGAL")
        {
            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }


        if (type == "NECKLACE")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "BRACLATE")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "EARING")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "RING")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "MEN RING")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "MANGALSUTRA")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "SET")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "PENDAL")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "CHAIN")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        if (type == "WATCH")
        {


            string category = DropDownCategory.SelectedItem.Text;

            DataClass display = new DataClass();
            dt = display.Display_Products(category).Tables[0];
            DataListDisplayItem.DataSource = dt;
            DataListDisplayItem.DataBind();
        }
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 16;
        pds.CurrentPageIndex = CurrentPage;

        DataListDisplayItem.DataSource = pds;
        DataListDisplayItem.DataBind();

        doPaging();


    }

    protected void DropDownCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindDataList();
    }

}
