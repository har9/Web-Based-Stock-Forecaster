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
    public partial class Query1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StockService.WebService1SoapClient client = new StockService.WebService1SoapClient();
            string result = client.getQuery1("Apple");
            lblResult1.Text = result;
            result = client.getQuery1("Bank of America");
            lblResult2.Text = result;
            result = client.getQuery1("Chevron Corporation");
            lblResult3.Text = result;
            result = client.getQuery1("Cisco");
            lblResult4.Text = result;
            result = client.getQuery1("Ford Motor Company");
            lblResult5.Text = result;
            result = client.getQuery1("Goldman Sachs");
            lblResult6.Text = result;
            result = client.getQuery1("Google");
            lblResult7.Text = result;
            result = client.getQuery1("Honeywell International");
            lblResult8.Text = result;
            result = client.getQuery1("IBM");
            lblResult9.Text = result;
            result = client.getQuery1("Intel");
            lblResult10.Text = result;
            result = client.getQuery1("Johnson & Johnson");
            lblResult11.Text = result;
            result = client.getQuery1("Kellogg Company");
            lblResult12.Text = result;
            result = client.getQuery1("Lockeed Martin Corporation");
            lblResult13.Text = result;
            result = client.getQuery1("Macy`s Inc");
            lblResult14.Text = result;
            result = client.getQuery1("Microsoft Corporation");
            lblResult15.Text = result;
            result = client.getQuery1("Nokia Corporation");
            lblResult16.Text = result;
            result = client.getQuery1("Oracle Corporation");
            lblResult17.Text = result;
            result = client.getQuery1("Qualcomm Inc");
            lblResult18.Text = result;
            result = client.getQuery1("Procter and Gamble company");
            lblResult19.Text = result;
            result = client.getQuery1("Yahoo");
            lblResult20.Text = result;
        }
    }
}