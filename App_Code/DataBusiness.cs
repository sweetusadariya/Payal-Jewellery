 
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

/// <summary>
/// Summary description for DataBusiness
/// </summary>
public class DataBusiness
{
	public DataBusiness()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void AddBusiness(string username, string password)
    {
        DataClass add = new DataClass();
        add.Add(username, password);
    }

    public void DeleteBusiness(string username)
    {
        DataClass delete = new DataClass();
        delete.Delete(username);
    }

    public void UpdateBusiness(string username, string password)
    {
        DataClass update = new DataClass();
        update.Update(username, password);
    }
    public void InsertProductBusiness(string ProCode,string ProName,string ProCategory,string ProType,string ProWeight,string ProPrice,string ProStock,string ProPath)
    {
        string cat = "";
        cat = ProCategory + " " + ProType;

        DataClass insert = new DataClass();
        insert.InsertProduct(ProCode,ProName,cat,ProType,ProWeight,ProPrice,ProStock,ProPath);
    }
    public void InsertHomeProductBusiness(string ProType,string ProPath)
    {
        DataClass insertHome = new DataClass();
        insertHome.InsertHomeProduct(ProType,ProPath);
    }
    public void InsertCategoryBusiness(string CategoryName, string ProductType)
    {
        DataClass insertCategory = new DataClass();
        insertCategory.InsertCategoryProduct(CategoryName, ProductType);
    }
    public void SubmitCustomerBusiness(string username,string password, string firstname, string lastname, string address, string city, string pincode, string mobileno, string emailid)
    {
        DataClass customer = new DataClass();
        customer.SubmitCustomerDetail(username,password,firstname,lastname,address,city,pincode,mobileno,emailid);
    }

    public void CustomerReviewBusiness(string fullname, string emailid, string message)
    {
        DataClass review = new DataClass();
        review.Customer_Review(fullname, emailid, message);
    }
}
