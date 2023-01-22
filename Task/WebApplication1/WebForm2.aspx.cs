using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        EntityTaskEntities1 obj = new EntityTaskEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            var qq = from ci in obj.Cities
                     join cu in obj.Customers on ci.CityId equals cu.IdCity
                     select new { cu.CustomerNames, cu.CustomerPhone, cu.CustomerEmail, ci.CityName, cu.CustomerAges , cu.CustomerPhoto };

            GridView1.DataSource = qq.ToList();
            GridView1.DataBind();

            var num = (from y in obj.Customers select y.CustomerIDs).Count();
            Label1.Text = num.ToString();

            var num2 = (from z in obj.Customers select z.CustomerAges).Average();
            num2 = Math.Round(Convert.ToDouble(num2));
            Label2.Text = num2.ToString();

            var num3 = (from i in obj.Customers select i.CustomerAges).Max();
            Label3.Text = num3.ToString();
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtSearch.Text;
            int id;
            if (int.TryParse(txtSearch.Text, out id))
            {
                var search = (from m in obj.Customers
                              where m.CustomerIDs == id
                              select m);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
            }
            else
            {
                var search = (from m in obj.Customers
                              where m.CustomerNames == name
                              select m);
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
            }

        }
    }
}