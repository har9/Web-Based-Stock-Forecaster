Prepared by: Anvita Patel and Harika Matta
*****************************************************************************************
			Readme File

Title: Data Collection
Last update: 24th April, 2015
Description: This file contains details about how the stock-related information is extracted
             and how it is loaded into our database.
			 

Note: The readme file for prediction strategies is in 'PredictionMethods' folder.
	  The readme file for launching Web Service and Client Service is in 'WebService&ClientService' folder.


******************************************************************************************
            Description
			-----------
			
We have used php scripts to collect data from Google Finance.


******************************************************************************************

			REQUIREMENTS
			------------

Web Environment used: IIS Server
Web Scripting Language used: PHP
Database at the back-end: MySQL

			
******************************************************************************************
			DATA SCHEMA
			-----------
1.  Table: real_time.
    Description: Real Time Stock Data

+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| ID            | int(11)     | No   | PRI | None    | auto_increment |
| STOCK         | varchar(64) | No   |     | None    |                |
| VALUE         | varchar(16) | No   |     | None    |                |
| CHANGE_POINTS | varchar(16) | No   |     | None    |                |
| OPEN          | varchar(16) | No   |     | None    |                |
| INTRA_DAY_TOP | varchar(16) | No   |     | None    |                |
| INTRA_DAY_DOWN| varchar(16) | No   |     | None    |                |
| VOLUME        | varchar(16) | No   |     | None    |                |
| DATE          | varchar(10) | No   |     | None    |                |
| TIME          | varchar(6)  | No   |     | None    |                |
| OrganizationID| int(11)     | No   |     | None    |                |
+---------------+-------------+------+-----+---------+----------------+

2.  Table: organizationhistory
	Description: Historical Stock Data for the list of 20 companies.
	
3.  Table: organizationtable
	Description: IDs and Names of the 20 companies.
	
4.  Table: sur_val
	Description: Has the results from SVM prediction for all the 20 companies.
	
5.  Table: bayesian
	Description: Has the results from Bayesian prediction for all the 20 companies.
******************************************************************************************

			CODE
			----
			
The 'CODE' folder has two subfolders 'ShortTermPrediction' and 'LongTermPrediction'.

(i) 'DataCollection.php' - Collects real-time data and inserts the data into the 'real_time' table.
(ii) 'StockAssignment.php' - Collects historical stock data and inserts the data into the 'organizationhistory' table.
							 It also generates the input files needed to run the SVM code in Matlab.
(iii) 'sur_val.php' - Updates the prediction results from the SVM code.


******************************************************************************************

		    RUNNING THE PHP SCRIPTS
			-----------------------
	
1. Place the needed PHP files in the wwwroot folder in inetpub folder.
2. Open the browser and type http://localhost into the address bar.
3. Click on the PHP file to run it. 
4. Datacollection.php file runs from 9:30 a.m to 4:00 p.m every day. So, the file has to be open for the entire duration
4. sur_val.php has to be running at all times to take the prediction results from SVM and feed it to the database.




