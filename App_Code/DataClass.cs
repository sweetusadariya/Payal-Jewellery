using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


/// <summary>
/// Summary description for DataClass
/// </summary>
public class DataClass
{
	public DataClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["connect"].ToString();
    }

    public DataSet HomeImage()
    {
        SqlConnection ConnectionHomeImg = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterHomeImg = new SqlDataAdapter("select * from HOME_IMG",ConnectionHomeImg);
        ConnectionHomeImg.Open();
        DataSet DatasetHomeImg = new DataSet();
        AdapterHomeImg.Fill(DatasetHomeImg);
        ConnectionHomeImg.Close();
        return DatasetHomeImg;
    }
    public void Add(string username, string password)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("insert into LOGIN values('" + username + "','" + password + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        con.Dispose();

    }

    public void Delete(string username)
    {
        SqlConnection cn = new SqlConnection(GetConnectionString());
        SqlCommand cm = new SqlCommand("Delete from LOGIN where USERNAME='" + username + "' ", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
        cm.Dispose();
        cn.Dispose();
    }

    public void Update(string username, string password)
    {
        SqlConnection cnn = new SqlConnection(GetConnectionString());
        SqlCommand com = new SqlCommand("Update LOGIN set PASSWORD='" + password + "' where USERNAME='" + username + "' ", cnn);
        cnn.Open();
        com.ExecuteNonQuery();
        cnn.Close();
        com.Dispose();
        cnn.Dispose();
    }

    public DataSet Display_Products(string catgory)
    {
        SqlConnection Connection = new SqlConnection(GetConnectionString());
        SqlDataAdapter Adapter = new SqlDataAdapter(" select * from PRODUCTS where CATEGORY = '"+catgory+"' ", Connection);
        Connection.Open();
        DataSet DataSetProduct = new DataSet();
        Adapter.Fill(DataSetProduct);
        Connection.Close();
        return DataSetProduct;

    }
    public DataSet Display_GridView(string type)
    {
        SqlConnection Connection = new SqlConnection(GetConnectionString());
        SqlDataAdapter Adapter = new SqlDataAdapter(" select * from PRODUCTS where PRODUCT_TYPE = '" + type + "' ", Connection);
        Connection.Open();
        DataSet DataSetProduct = new DataSet();
        Adapter.Fill(DataSetProduct);
        Connection.Close();
        return DataSetProduct;

    }


    public DataSet Contact()
    {
        SqlConnection connectContact = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterContact = new SqlDataAdapter(" select * from CONTACT_US",connectContact);
        connectContact.Open();
        DataSet DataSetContact = new DataSet();
        AdapterContact.Fill(DataSetContact);
        connectContact.Close();
        return DataSetContact;
    }

    
    public void InsertProduct(string ProCode,string ProName,string ProCategory,string ProType,string ProWeight,string ProPrice,string ProStock, string Propath)
    {
        SqlConnection connectInsert = new SqlConnection(GetConnectionString());
        SqlCommand commandInsert = new SqlCommand("Insert Into PRODUCTS values('"+ProCode+"','"+ProName+"','"+ProCategory+"','"+ProType+"','"+ProWeight+"','"+ProPrice+"','"+ProStock+"','"+Propath+"') ", connectInsert);
        connectInsert.Open();
        commandInsert.ExecuteNonQuery();
        connectInsert.Close();
        commandInsert.Dispose();
        connectInsert.Dispose();
    }
    public void InsertHomeProduct(string ProType,string Propath)
    {
        SqlConnection connectInsertHome = new SqlConnection(GetConnectionString());
        SqlCommand commandInsertHome = new SqlCommand("Insert Into HOME_IMG values('" + ProType + "','" + Propath + "') ", connectInsertHome);
        connectInsertHome.Open();
        commandInsertHome.ExecuteNonQuery();
        connectInsertHome.Close();
        commandInsertHome.Dispose();
        connectInsertHome.Dispose();
    }
    public void InsertCategoryProduct(string CategoryName, string ProductType)
    {
        SqlConnection connectInsertCategory = new SqlConnection(GetConnectionString());
        SqlCommand commandInsertCategory = new SqlCommand("Insert Into CATEGORY values('" + CategoryName + "','" + ProductType + "') ", connectInsertCategory);
        connectInsertCategory.Open();
        commandInsertCategory.ExecuteNonQuery();
        connectInsertCategory.Close();
        commandInsertCategory.Dispose();
        connectInsertCategory.Dispose();
    }
    public void DeleteProduct(string ProNm)
    {
        SqlConnection connectDelete = new SqlConnection(GetConnectionString());
        SqlCommand commandDelete = new SqlCommand("Delete from PRODUCTS where PRODUCT_NAME='" + ProNm + "' ", connectDelete);
        connectDelete.Open();
        commandDelete.ExecuteNonQuery();
        connectDelete.Close();
        commandDelete.Dispose();
        connectDelete.Dispose();
    }
    public void DeleteHomeProduct(string ProNm)
    {
        SqlConnection connectHomeDelete = new SqlConnection(GetConnectionString());
        SqlCommand commandHomeDelete = new SqlCommand("Delete from HOME_IMG where NAME='" + ProNm + "' ", connectHomeDelete);
        connectHomeDelete.Open();
        commandHomeDelete.ExecuteNonQuery();
        connectHomeDelete.Close();
        commandHomeDelete.Dispose();
        connectHomeDelete.Dispose();
    }


    public void UpdateProduct(string ProCode, string ProName, string ProType, string ProWeight, string ProPrice, string ProStock,string imageurl)
    {
        SqlConnection connectUpdate = new SqlConnection(GetConnectionString());
        SqlCommand commandUpdate = new SqlCommand("Update PRODUCTS set PRODUCT_CODE='"+ProCode+"',PRODUCT_TYPE='"+ProType+"',PRODUCT_WEIGHT='"+ProWeight+"',PRICE='"+ProPrice+"',STOCK='"+ProStock+"',PRODUCT_IMAGE='"+imageurl+"'  where PRODUCT_NAME='"+ProName+"' ", connectUpdate);
        connectUpdate.Open();
        commandUpdate.ExecuteNonQuery();
        connectUpdate.Close();
        commandUpdate.Dispose();
        connectUpdate.Dispose();
    }
    public void UpdateHomeProduct(string ProType, string imageurl)
    {
        SqlConnection connectHomeUpdate = new SqlConnection(GetConnectionString());
        SqlCommand commandHomeUpdate = new SqlCommand("Update HOME_IMG set IMAGE_URL = '"+imageurl + "'  where NAME='" + ProType + "' ", connectHomeUpdate);
        connectHomeUpdate.Open();
        commandHomeUpdate.ExecuteNonQuery();
        connectHomeUpdate.Close();
        commandHomeUpdate.Dispose();
        connectHomeUpdate.Dispose();
    }
    public DataSet Detail_Product(string Productname)
    {
        SqlConnection ConnectDetail = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterDetail = new SqlDataAdapter(" select * from PRODUCTS where PRODUCT_Name = '" + Productname + "' ", ConnectDetail);
        ConnectDetail.Open();
        DataSet DataSetDetail = new DataSet();
        AdapterDetail.Fill(DataSetDetail);
        ConnectDetail.Close();
        return DataSetDetail;

    }
    
    public DataSet Search_Products(string ProType,Int64 from,Int64 to)
    {
        SqlConnection ConnectionSearch = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterSearch = new SqlDataAdapter(" select * from PRODUCTS where PRODUCT_TYPE = '" + ProType + "' AND PRICE BETWEEN '"+from+"' AND '"+to+"' ", ConnectionSearch);
        ConnectionSearch.Open();
        DataSet DataSetSearch = new DataSet();
        AdapterSearch.Fill(DataSetSearch);
        ConnectionSearch.Close();
        return DataSetSearch;

    }
    public void SubmitCustomerDetail(string username,string password, string firstname, string lastname, string address, string city, string pincode, string mobileno, string emailid)
    {
        SqlConnection connectCustomer = new SqlConnection(GetConnectionString());
        SqlCommand commandCustomer = new SqlCommand("Insert Into CUSTOMER_DETAIL values('"+ username+"','"+password+"','" + firstname + "','" + lastname + "','" + address + "','" +city + "','" + pincode + "','" + mobileno + "','" + emailid + "') ", connectCustomer);
        connectCustomer.Open();
        commandCustomer.ExecuteNonQuery();
        connectCustomer.Close();
        commandCustomer.Dispose();
        connectCustomer.Dispose();
    }
    public DataSet AddToCart_Product(string Productname)
    {
        SqlConnection ConnectAddToCart = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterAddToCart = new SqlDataAdapter(" select * from PRODUCTS where PRODUCT_NAME ='" + Productname + "' ", ConnectAddToCart);
        ConnectAddToCart.Open();
        DataSet DataSetAddToCart = new DataSet();
        AdapterAddToCart.Fill(DataSetAddToCart);
        ConnectAddToCart.Close();
        return DataSetAddToCart;

    }
    public DataSet Check_Out(string ProName)
    {
        SqlConnection ConnectCheckOut = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterCheckOut = new SqlDataAdapter("select PRODUCT_NAME,PRICE from PRODUCTS where PRODUCT_NAME in (" + ProName + ") ", ConnectCheckOut);
        ConnectCheckOut.Open();
        DataSet DataSetCheckOut = new DataSet();
        AdapterCheckOut.Fill(DataSetCheckOut);
        ConnectCheckOut.Close();
        return DataSetCheckOut;
    }

    public void Customer_Review(string fullname, string emailid, string message)
    {
        SqlConnection ConnectReview = new SqlConnection(GetConnectionString());
        SqlCommand CommandReview = new SqlCommand("Insert Into CUSTOMER_REVIEW values('" + fullname + "','" + emailid + "','" + message + "') ", ConnectReview);
        ConnectReview.Open();
        CommandReview.ExecuteNonQuery();
        ConnectReview.Close();
        ConnectReview.Dispose();
        CommandReview.Dispose();
    }
    public DataSet Show_Review()
    {
        SqlConnection ConnectShowReview = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterShowReview = new SqlDataAdapter("select * from CUSTOMER_REVIEW", ConnectShowReview);
        ConnectShowReview.Open();
        DataSet DataSetShowReview = new DataSet();
        AdapterShowReview.Fill(DataSetShowReview);
        ConnectShowReview.Close();
        return DataSetShowReview;
    }
    public DataSet Edit_Home_Product(string Productname)
    {
        SqlConnection ConnectHome = new SqlConnection(GetConnectionString());
        SqlDataAdapter AdapterHome = new SqlDataAdapter(" select * from HOME_IMG where Name = '" + Productname + "' ", ConnectHome);
        ConnectHome.Open();
        DataSet DataSetHome = new DataSet();
        AdapterHome.Fill(DataSetHome);
        ConnectHome.Close();
        return DataSetHome;

    }


}
