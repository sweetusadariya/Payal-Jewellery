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

public partial class SEARCH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            SqlConnection ConnectSearch = new SqlConnection(GetConnectionString());
            SqlDataAdapter AdapterSearch = new SqlDataAdapter(" select NAME from HOME_IMG", ConnectSearch);
            ConnectSearch.Open();
            DataSet DataSetSearch = new DataSet();
            AdapterSearch.Fill(DataSetSearch);
            ConnectSearch.Close();


            dropdownlistName.DataSource = DataSetSearch;
            dropdownlistName.DataBind();
        }


    }
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {


        string type = dropdownlistName.Text;
        Int64 from = Convert.ToInt64(dropdownlistPriceFrom.Text);
        Int64 to = Convert.ToInt64(dropdownlistPriceTo.Text);

        DataClass search = new DataClass();
        DataListSearch.DataSource = search.Search_Products(type, from, to);
        DataListSearch.DataBind();
    }

    protected void DataListSearch_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        string Productname = e.CommandArgument.ToString();
        Session["ProductName"] = Productname;

        Response.Redirect("~/DETAIL_PRODUCT.aspx");
    }
}
