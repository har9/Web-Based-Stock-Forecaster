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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            StockService.WebService1SoapClient client = new StockService.WebService1SoapClient();
            string result = client.getTrendup();
            Label1.Text = result;
            string result2 = client.getTrenddown();
            lblResult.Text = result2;

        }
    }
}