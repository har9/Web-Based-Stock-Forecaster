//Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta 


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SF
{
    public partial class Query4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StockService.WebService1SoapClient client = new StockService.WebService1SoapClient();
            string result = client.getQuery4("Apple");
            lblResult1.Text = result;
            result = client.getQuery4("Bank of America");
            lblResult2.Text = result;
            result = client.getQuery4("Chevron Corporation");
            lblResult3.Text = result;
            result = client.getQuery4("Cisco");
            lblResult4.Text = result;
            result = client.getQuery4("Ford Motor Company");
            lblResult5.Text = result;
            result = client.getQuery4("Goldman Sachs");
            lblResult6.Text = result;
            result = client.getQuery4("Google");
            lblResult7.Text = result;
            result = client.getQuery4("Honeywell International");
            lblResult8.Text = result;
            result = client.getQuery4("IBM");
            lblResult9.Text = result;
            result = client.getQuery4("Intel");
            lblResult10.Text = result;
            result = client.getQuery4("Johnson & Johnson");
            lblResult11.Text = result;
            result = client.getQuery4("Kellogg Company");
            lblResult12.Text = result;
            result = client.getQuery4("Lockeed Martin Corporation");
            lblResult13.Text = result;
            result = client.getQuery4("Macy`s Inc");
            lblResult14.Text = result;
            result = client.getQuery4("Microsoft Corporation");
            lblResult15.Text = result;
            result = client.getQuery4("Nokia Corporation");
            lblResult16.Text = result;
            result = client.getQuery4("Oracle Corporation");
            lblResult17.Text = result;
            result = client.getQuery4("Qualcomm Inc");
            lblResult18.Text = result;
            result = client.getQuery4("Procter and Gamble company");
            lblResult19.Text = result;
            result = client.getQuery4("Yahoo");
            lblResult20.Text = result;
        }
    }
}