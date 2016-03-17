Prepared by: Anvita Patel and Harika Matta
*****************************************************************************************
	    Readme File

Title: Using the Web service and Client Service for our Stock Forecaster
Last update: 23rd April, 2015
Description: This readme file describes about the C# code for Web Service and Client Service 
			 and how to launch the solutions created in ASP.NET

Note: The readme file for php scripts is in 'Data Collection' folder.
      The readme file for running the prediction algorithms is in 'Prediction' folder


******************************************************************************************

	     REQUIREMENTS
	     ------------

We have developed the application using ASP.NET framework and used Visual Studio Community 2013.
It can be downloaded from: https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx

******************************************************************************************

	     FOLDER DETAILS
	     --------------

The folder contains:

(i)  clientservice - Stock Forecaster Client Service.
(ii) webservice - Stock Forecaster Web Service.

******************************************************************************************

	    LAUNCHING THE APPLICATION
            -------------------------

1.Open the WebService Solution file webservice.sln in VisualStudio

2.Build the solution

3.Run the solution using F5 key. This opens the Web Service in your default browser.
  Keep a note of this URL. You have to include this as your service reference in the Client Service.
  
4.The Web Service window in the browser shows the Web Methods needed to fetch the information from the database at the backend (MySQL in our case)

5.Open the Client Service solution SF.sln in Visual Studio. Build and run the solution. This displays the user interface on the browser.
  Make sure to add the service reference to the Client Service by adding the correct URL. 
  The SF.sln has the service reference 'StockService' already added.
  
6.If you face any issues in opening the Client Service, open the web.config file and change the URL mentioned to the URL of our webservice.

<system.serviceModel>
        <bindings>
            <basicHttpBinding>
                <binding name="WebService1Soap" />
            </basicHttpBinding>
        </bindings>
         <client>
            <endpoint address="http://localhost:59646/WebService1.asmx" binding="basicHttpBinding"
                bindingConfiguration="WebService1Soap" contract="StockService.WebService1Soap"
                name="WebService1Soap" />
        </client>
</system.serviceModel>

