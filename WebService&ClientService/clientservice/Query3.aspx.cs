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
    public partial class Query3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StockService.WebService1SoapClient client = new StockService.WebService1SoapClient();
            string result = client.getQuery3();
            lblResult.Text = result;
        }
    }
}