//Written by: Anvita Patel and Harika Matta
//Debugged and tested by: Anvita Patel and Harika Matta


using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Odbc;
using System.Web.Services.Protocols;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;

namespace webservice
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    public class WebService1 : System.Web.Services.WebService
    {
     public WebService1() {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
     [WebMethod]
     public string getQuotesWS(string organization_name)
     {
         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = conn.CreateCommand();
         comm.Connection = conn;

         comm.CommandText = "select OrganizationID from organizationtable where OrganizationName = '" + organization_name + "'";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);

         DataRow row = ds.Tables[0].Rows[0];
         string organization_id = row[0].ToString();

         comm.CommandText = "select VALUE from real_time where OrganizationID = " + organization_id + "";
         MySqlDataAdapter da1 = new MySqlDataAdapter(comm);
         DataSet ds1 = new DataSet();
         da1.Fill(ds1);

         DataRow row1 = ds1.Tables[0].Rows[0];
         string currentQuotePrice = row1[0].ToString();

         return currentQuotePrice;

     }

     [WebMethod]
     public string getShortTerm(string organization_name)
     {
         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = conn.CreateCommand();
         comm.Connection = conn;

         comm.CommandText = "select OrganizationID from organizationtable where OrganizationName = '" + organization_name + "'";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);

         DataRow row = ds.Tables[0].Rows[0];
         string organization_id = row[0].ToString();

         comm.CommandText = "select PredictedValue from bayesian where OrganizationID = " + organization_id + "";
         MySqlDataAdapter da1 = new MySqlDataAdapter(comm);
         DataSet ds1 = new DataSet();
         da1.Fill(ds1);

         DataRow row1 = ds1.Tables[0].Rows[0];
         string PredictedPrice = row1[0].ToString();

         return PredictedPrice;

     }

     [WebMethod]
     public string getPredictionWS(string organization_name)
     {
         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = new MySqlCommand();
         comm.Connection = conn;
         comm.CommandTimeout = 300;
         comm.CommandText = "select OrganizationID from organizationtable where OrganizationName = '" + organization_name + "'";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);

         DataRow row = ds.Tables[0].Rows[0];
         string organization_id = row[0].ToString();

         comm.CommandText = "select Decision from sur_val where ID = " + organization_id + "";
         MySqlDataAdapter da1 = new MySqlDataAdapter(comm);
         DataSet ds1 = new DataSet();
         da1.Fill(ds1);

         DataRow row1 = ds1.Tables[0].Rows[0];
         string predictionarray;
         predictionarray = row1[0].ToString();

         return predictionarray;
     }

     [WebMethod]
     public string getQuery2()
     {
         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = new MySqlCommand();
         comm.Connection = conn;
         comm.CommandTimeout = 300;
         comm.CommandText = "SELECT MAX(Close) as Cl FROM organizationhistory WHERE OrganizationID = 694653 AND Date >= Date_sub(curdate(),INTERVAL 10 day)";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);
         // Write to return stock price

         DataRow row = ds.Tables[0].Rows[0];
         string stock = row[0].ToString();
         return stock;
     }

     [WebMethod]
     public string getQuery3()
     {
         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = new MySqlCommand();
         comm.Connection = conn;
         comm.CommandTimeout = 300;
         comm.CommandText = "SELECT AVG(Close) as Cl FROM organizationhistory WHERE OrganizationID = 358464 AND Date >= Date_sub(curdate( ) , INTERVAL 1 year)";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);
         // Write to return stock price

         DataRow row = ds.Tables[0].Rows[0];
         string stock = row[0].ToString();

         return stock;
     }

     [WebMethod]
     public string getQuery1(string organization_name)
     {

         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = conn.CreateCommand();
         comm.Connection = conn;

         comm.CommandText = "select OrganizationID from organizationtable where OrganizationName = '" + organization_name + "'";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);

         DataRow row = ds.Tables[0].Rows[0];
         string organization_id = row[0].ToString();

         comm.CommandText = "select VALUE from real_time where OrganizationID = " + organization_id + "";
         MySqlDataAdapter da1 = new MySqlDataAdapter(comm);
         DataSet ds1 = new DataSet();
         da1.Fill(ds1);

         DataRow row1 = ds1.Tables[0].Rows[0];
         string currentQuotePrice = row1[0].ToString();

         return currentQuotePrice;

     }
     [WebMethod]
     public string getQuery4(string organization_name)
     {

         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = conn.CreateCommand();
         comm.Connection = conn;

         comm.CommandText = "select OrganizationID from organizationtable where OrganizationName = '" + organization_name + "'";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);

         DataRow row = ds.Tables[0].Rows[0];
         string organization_id = row[0].ToString();

         //comm.CommandText = "select currentprice from organizationpredict where OrganizationID = " + organization_id + "";
         comm.CommandText = "select min(Close) from organizationhistory where Date >= Date_sub(curdate( ) , INTERVAL 1 year) and OrganizationID = " + organization_id + "";
         MySqlDataAdapter da1 = new MySqlDataAdapter(comm);
         DataSet ds1 = new DataSet();
         da1.Fill(ds1);

         DataRow row1 = ds1.Tables[0].Rows[0];
         string minQuotePrice = row1[0].ToString();

         return minQuotePrice;

     }
     [WebMethod]
     public string getTrendup()
     {

         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = new MySqlCommand();
         comm.Connection = conn;
         comm.CommandTimeout = 300;
         comm.CommandText = "SELECT STOCK, (CHANGE_POINTS*100)/VALUE from real_time where (CHANGE_POINTS*100)/VALUE=(SELECT MAX((CHANGE_POINTS*100)/VALUE) from real_time WHERE CHANGE_POINTS>0)";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);
         // Write to return stock price

         DataRow row = ds.Tables[0].Rows[0];
         string stock = row[0].ToString();

         return stock;

     }

     [WebMethod]
     public string getTrenddown()
     {

         string connString = "Server = localhost; Port = 3306; Database = test_schema; Uid = root; password = root";
         MySqlConnection conn = new MySqlConnection(connString);
         MySqlCommand comm = new MySqlCommand();
         comm.Connection = conn;
         comm.CommandTimeout = 300;
         comm.CommandText = "SELECT STOCK, (CHANGE_POINTS*100)/VALUE from real_time where (CHANGE_POINTS*100)/VALUE=(SELECT MIN((CHANGE_POINTS*100)/VALUE) from real_time WHERE CHANGE_POINTS<0)";
         conn.Open();

         MySqlDataAdapter da = new MySqlDataAdapter(comm);
         DataSet ds = new DataSet();
         da.Fill(ds);
         // Write to return stock price

         DataRow row = ds.Tables[0].Rows[0];
         string stock = row[0].ToString();

         return stock;

     }
    }
}
