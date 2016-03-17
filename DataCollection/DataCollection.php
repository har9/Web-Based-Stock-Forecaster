// Course: 16:332:568 - Software Engineering of Web Applications
// Spring 2015 - Submission Date: 3/5/2015
// Group 12 - Anvita Patel, Harika Matta
// Project Phase1 - Data Collection of stocks for Yahoo, Google, Apple, Cisco and Intel - Real time data.

<?PHP 

class stocks_class {
  
    var $time = "+0"; 
    var $dbhost = "localhost";
	var $user = "root";
	var $passwd = "root";
	var $db = "test_schema";
	var $stocks_table = "real_time";

   function stockfetch_company($stock,$id)
    {
	    $each_stock = mysql_real_escape_string($stock);         
	    $q = "SELECT * FROM `$this->stocks_table` WHERE STOCK='$each_stock' ";
		
		echo $id;
		//$insertid="INSERT INTO real_time (OrganizationID) VALUES ($id);";
		//mysql_query($insertid) or die(mysql_error());
		
        print("\n"); 
		print("Fetching data for ");
	    print($each_stock);
	    print("\n");           

     	$return = $this->parse_and_store_stockarray($stock);
		  
	    $sql = "INSERT INTO `$this->stocks_table` (`STOCK` , `VALUE` , `CHANGE_POINTS` , `OPEN` , `INTRA_DAY_TOP` , `INTRA_DAY_DOWN`, `VOLUME` , `DATE` , `TIME`, `OrganizationID`  )";
        $sql .= "VALUES('${return['STOCK']}','${return['VALUE']}','${return['CHANGE_POINTS']}','${return['OPEN']}','${return['INTRA_DAY_TOP']}','${return['INTRA_DAY_DOWN']}',";
        $sql .= "'${return['VOLUME']}', '${return['DATE']}','${return['TIME']}','${id}')";
        mysql_query($sql);
        return $return;
    } 

    function parse_and_store_stockarray($stock)
    {
        $open = fopen("http://finance.yahoo.com/d/quotes.csv?s=$stock&f=sl1d1t1c1ohgv&e=.csv", "r");
        $read = str_replace('"', '', trim(fread($open, 2000)));
        $data_array = explode(",", $read);
        fclose($open);


        $strtotime_date = strtotime(str_replace('"', '', "$data_array[2] $data_array[3]"));

        if (eregi("^-.*", $this->time)) {
            $this->time = str_replace("-", "", $this->time);
            $return['unixtime'] = $strtotime_date - $this->time * 3600;
        } else {
            $this->time = str_replace("+", "", $this->time);
            $return['unixtime'] = $strtotime_date + $this->time * 3600;
        } 

        $return['STOCK'] = $data_array[0];
		$return['VALUE'] = $data_array[1];
        $return['DATE'] = date("j.n.Y", $return['unixtime']);
        $return['TIME'] = date("G:i", $return['unixtime']);
        $return['CHANGE_POINTS'] = $data_array[4];
        $return['OPEN'] = $data_array[5];
        $return['INTRA_DAY_TOP'] = $data_array[6];
        $return['INTRA_DAY_DOWN'] = $data_array[7];
		$return['VOLUME'] = $data_array[8];
        $return['md5'] = md5($read);
        return $return;
    } 

    function data_conn()
    {
        $this->conn = @mysql_connect($this->dbhost, $this->user, $this->passwd) or die("Can't connect to mySQLn");
		return mysql_select_db($this->db, $this->conn);
    } 

    function data_close()
    {
        return @mysql_close();
    } 
} 

//Main program
$period_time=420;  //total period for data collection in minutes - 7 hours
$interval_time=0.5*60;  //time between each query in seconds - refresh time - 30 secs
$stocks = new stocks_class();

$stocks->data_conn(); // open the connection
$chk = time()/60;

while(time()/60-$chk<$period_time) //extract the data for the complete day // extracting the stock data for all the companies together
{
	sleep($interval_time);
	$delq = "delete from real_time";
          mysql_query($delq) or die(mysql_error());
		  
	//$apple = $stocks->stockfetch_company("AAPL","22144");
	//$cisco = $stocks->stockfetch_company("CSCO","99624");
	//$intel = $stocks->stockfetch_company("INTC","284784");
	//$google = $stocks->stockfetch_company("GOOG","694953");
	//$yahoo = $stocks->stockfetch_company("YHOO","1234");
	$google = $stocks->stockfetch_company("GOOG","694653");
	$cisco = $stocks->stockfetch_company("CSCO","99624");
	$ibm = $stocks->stockfetch_company("IBM","18241");
	$intel = $stocks->stockfetch_company("INTC","284784");
	$apple = $stocks->stockfetch_company("AAPL","22144");
	$bofa = $stocks->stockfetch_company("BAC","662744");
	$chevron = $stocks->stockfetch_company("CVX","667226");
	$ford = $stocks->stockfetch_company("F","13606");
	$goldman = $stocks->stockfetch_company("GS","663137");
	$honeywell = $stocks->stockfetch_company("HON","666236");
	$johnson = $stocks->stockfetch_company("JNJ","666601");
	$kellogg = $stocks->stockfetch_company("K","20562");
	$lockheed = $stocks->stockfetch_company("LMT","21553");
	$microsoft = $stocks->stockfetch_company("MSFT","358464");
	$macy = $stocks->stockfetch_company("M","655697");
	$nokia = $stocks->stockfetch_company("NOK","657729");
	$oracle = $stocks->stockfetch_company("ORCL","419344");
	$qualcomm = $stocks->stockfetch_company("QCOM","656142");
	//$siemens = $stocks->stockfetch_company("SIE.DE","662848");
	$procter=$stocks->stockfetch_company("PG","29312");
	$yahoo = $stocks->stockfetch_company("YHOO","658890");
	

	sleep($interval_time);
}
print(time()/60);

$stocks->data_close(); // close the connection

?> 