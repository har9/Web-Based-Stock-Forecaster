Prepared by: Anvita Patel and Harika Matta
*****************************************************************************************
	   Readme File
           -----------

Title: Using the Prediction Strategies
Last update: 23rd April, 2015
Description: This readme file gives instructions on running the prediction methods

Note: The readme file for php scripts is in 'DataCollection' folder.
      The readme file for launching Web Service and Client Service is in 'WebService&ClientService' folder.


******************************************************************************************
           Description
	   -----------
			
Short Term: We have developed the Short Term Prediction Strategy in JAVA. The folder includes the Bayesian code
which takes the past 10 days of closing price as an input and predicts tomorrow's closing price.

LongTerm: We have developed the Long Term Prediction Strategy in Matlab. The folder includes the SVM code
which takes the closing prices of the past 200 days and suggests whether to 'Buy' or 'Sell' the stock.


******************************************************************************************

	    REQUIREMENTS
	    ------------

We used Netbeans to develop and test our Bayesian code in JAVA.
Install Netbeans 8.0.2 for Windows from https://netbeans.org/downloads/

We used Matlab to develop our code for developing and testing our SVM code.
			
******************************************************************************************

	     CODE
	     ----
			
The 'CODE' folder has two subfolders 'ShortTermPrediction' and 'LongTermPrediction'.

(i) 'Bayesian' contains the Java code for Bayesian.
(ii) 'SVM' contains the Matlab code for SVM.


******************************************************************************************

             RUNNING THE PREDICTION METHODS
             ------------------------------
BAYESIAN
--------

1. Open Netbeans and open the 'main.java' file. 

2. To load and update the MySQL database, we need MySQL connector with Java.
   It can be downloaded from:
   https://dev.mysql.com/downloads/connector/j/5.0.html

3. Click run and this populates our database table 'bayesian'
   with the predicted values for all the 20 companies.
 
	SVM
	---
1. Place the SVM folder in C: drive.
2. Download Spider toolbox from http://people.kyb.tuebingen.mpg.de/spider/download_frames.html
3. Put it in the matlab toolbox directory.
4. Make sure that 'use_spider.m' is working.
5. Run the main_script.m file and update the path for data importing and exporting.
6. The output of this code is 'decision.txt' and a php script runs continuously
   to upload the data from decision.txt to the database.



