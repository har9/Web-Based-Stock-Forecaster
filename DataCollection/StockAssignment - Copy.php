<html>
<head>

<!--<meta http-equiv="refresh" content=9000>-->
</head>
<body>
<?PHP


$rst = @mysql_connect("localhost","root","");
if (!$rst)
{
	echo( "<p>Unable to connect to database manager.</p>");
	die('Could not connect: ' . mysql_error());
	exit();
} 
else 
{
	echo("<p>Successfully Connected to MySQL Database Manager!</p>");
}

//selecting database
if (! @mysql_select_db("test_schema") )
{
	echo( "<p>Unable to  connect database...</p>");
	exit();
} 
else 
{
	echo("<p>Successfully Connected to Database 'test_schema'!</p>");
}
$num=1;

$urlstartdate = Date("M-j-Y",mktime(0,0,0,date("m"),date("d")+1,date("Y")-1));


$urlenddate = Date("M-j-Y");


$startdatearr = explode("-",$urlstartdate);
$enddatearr = explode("-",$urlenddate);

$companydetails = mysql_query("select * from organizationtable") or die(mysql_error());

while($row = mysql_fetch_array($companydetails, MYSQL_ASSOC))
{
	$compID = $row['OrganizationID'];
	$fetchurl = "http://finance.google.com/finance/historical?cid=".$compID."&startdate=".$startdatearr[0]."+".$startdatearr[1]."%2C+".$startdatearr[2]."&enddate=".$enddatearr[0]."+".$enddatearr[1]."%2C+".$enddatearr[2]."&output=csv";
	
	
	$curl = curl_init();
    $fp = fopen("C:Users\Harika\Documents\CompanyStock.txt", "w");
    curl_setopt ($curl, CURLOPT_URL, $fetchurl);
    curl_setopt($curl, CURLOPT_FILE, $fp);
	
    curl_exec ($curl);
    curl_close ($curl);
    fclose($fp);
	//echo "file created";

	$fcontents = file ("C:Users\Harika\Documents\CompanyStock.txt"); 
	$currentdate = date("Y-m-d");

	for($i=1; $i<sizeof($fcontents); $i++)
	{
		$line = trim($fcontents[$i]); 
		$arr = explode(",", $line); 

		$datearr = explode("-", $arr[0]);
		$month;

		//for me
		//$d = date("Y-m-d", mktime(0, 0, 0, date("m")  , date("d")-1, date("Y")));

		//for you as you are a day behind
		$d = date("Y-m-d");

			switch($datearr[1])
			{
			case 'Jan':
			$month = 01;
			break;
			case 'Feb':
			$month = 02;
			break;
			case 'Mar':
			$month = 03;
			break;
			case 'Apr':
			$month = 04;
			break;
			case 'May':
			$month = 05;
			break;
			case 'Jun':
			$month = 06;
			break;
			case 'Jul':
			$month = 07;
			break;
			case 'Aug':
			$month = 08;
			break;
			case 'Sep':
			$month = 09;
			break;
			case 'Oct':
			$month = 10;
			break;
			case 'Nov':
			$month = 11;
			break;
			case 'Dec':
			$month = 12;
			break;
			default:
			$month = 00;
			break;
	}



$finaldate = $datearr[2]."-".$month."-".$datearr[0];
$arr[0] = $finaldate;

$comma_separated = "'".$compID."','".implode("','", $arr)."'";
    


$datequery = "select date_format('".$finaldate."','%Y-%m-%d')";
$correctdate = mysql_query($datequery) or die(mysql_error());
$daterow = mysql_fetch_array($correctdate, MYSQL_NUM);
$DBdate = $daterow[0];


$q = "select Volume from organizationhistory where Date like '".$DBdate."' and OrganizationID like '".$compID."'";
$volume = mysql_query($q) or die(mysql_error());
$row = mysql_fetch_array($volume, MYSQL_ASSOC);


if(date('D') != "Sun" || date('D') != "Sat")

//for me
//if(date('D') != "Sat" || date('D') != "Fri")
{
  if($d == $DBdate)
  {
	//updating data for the current date
	if($row['Volume'] != "")
	{
		$updatequery = "update organizationhistory set Open = '".$arr[1]."', High = '".$arr[2]."',Low = '".$arr[3]."',Close = '".$arr[4]."',Volume = '".$arr[5]."' where Date = '".$DBdate."' and OrganizationID = '".$compID."'";
		mysql_query($updatequery) or die(mysql_error());
        // echo "data updated";
	}
  }
}

if($row['Volume'] == "")
{
	$insertquery = "insert into organizationhistory values(".$comma_separated.");";
	mysql_query($insertquery) or die(mysql_error());
    // echo "data inserted";
} 
}


$z="select Close from organizationhistory where OrganizationID like '".$compID."'";
$listen = mysql_query($z) or die(mysql_error());
echo $num;
$fp1 = fopen("C:Users\Harika\Documents\SVM\h" .$num.".txt", "w")or die("Unable to open file!");

///*
	
    while ($list = mysql_fetch_array($listen,MYSQL_ASSOC)) 
    {
      $string=implode("\t",$list);
      fputs($fp1,$string);
      fputs($fp1,"\n");
    }

    fclose($fp1);
    $num = $num + 1;
	//*/
} 

echo "done";
?>
</body>
</html> 


