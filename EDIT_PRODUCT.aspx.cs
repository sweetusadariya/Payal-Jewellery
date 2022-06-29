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

public partial class EDIT_PRODUCT : System.Web.UI.Page
{
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection ConnectEditProduct = new SqlConnection(GetConnectionString());
            SqlDataAdapter AdapterEditProduct = new SqlDataAdapter("select NAME from HOME_IMG", ConnectEditProduct);
            ConnectEditProduct.Open();
            DataSet DataSetEditProduct = new DataSet();
            AdapterEditProduct.Fill(DataSetEditProduct);
            ConnectEditProduct.Close();
           

            droptype.DataSource = DataSetEditProduct;
            droptype.DataBind();

            if (Session["ProductName"] != null)
            {
                DataClass edit = new DataClass();
                DataSet editdataset = new DataSet();
                editdataset = edit.Detail_Product(Session["ProductName"].ToString());
                Name.Text = editdataset.Tables[0].Rows[0]["PRODUCT_NAME"].ToString();
                txtCode.Text = editdataset.Tables[0].Rows[0]["PRODUCT_CODE"].ToString();
                droptype.Text = editdataset.Tables[0].Rows[0]["PRODUCT_TYPE"].ToString();
                weight.Text = editdataset.Tables[0].Rows[0]["PRODUCT_WEIGHT"].ToString();
                price.Text = editdataset.Tables[0].Rows[0]["PRICE"].ToString();
                stock.Text = editdataset.Tables[0].Rows[0]["STOCK"].ToString();
            }
        }

    }
    protected void btnUpdateProduct_Click(object sender, EventArgs e)
    {
        if (UpdateUploadImage.HasFile)
        {
            string FilePath = Server.MapPath("~/IMAGE/" + "" + UpdateUploadImage.FileName);
            UpdateUploadImage.SaveAs(FilePath);

        }
       
        DataClass updatePro = new DataClass();
        updatePro.UpdateProduct(txtCode.Text, Session["ProductName"].ToString(), droptype.Text, weight.Text, price.Text, stock.Text, "~/IMAGE/" + "" + UpdateUploadImage.FileName);

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ADD_PRODUCT.aspx");
    }

}
