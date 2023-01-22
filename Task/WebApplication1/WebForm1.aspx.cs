using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        EntityTaskEntities1 obj = new EntityTaskEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) { 
            
                var x = from city in obj.Cities select city;
                DropDownList1.DataSource= x.ToList();
                DropDownList1.DataTextField = "CityName";
                DropDownList1.DataValueField= "CityId";
                DropDownList1.DataBind();


            }

            var qq = from ci in obj.Cities join cu in obj.Customers on ci.CityId equals cu.IdCity
                   select new {cu.CustomerNames,cu.CustomerPhone,cu.CustomerEmail ,ci.CityName , cu.CustomerPhoto , cu.CustomerAges };

            GridView1.DataSource = qq.ToList();
            GridView1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/IMG/") + FileUpload1.FileName);
            Customer insertTest = new Customer();
            insertTest.CustomerNames = TextBox1.Text;
            insertTest.CustomerAges = Convert.ToInt32(TextBox2.Text);
            insertTest.CustomerEmail = TextBox3.Text;
            insertTest.CustomerPhone = Convert.ToInt32(TextBox4.Text);
            insertTest.IdCity = Convert.ToInt32(DropDownList1.SelectedValue);
            insertTest.CustomerPhoto = "~/IMG/" + FileUpload1.FileName;


            

            obj.Customers.Add(insertTest);
            obj.SaveChanges();
            Response.Redirect("WebForm1.aspx");

        }
    }
}