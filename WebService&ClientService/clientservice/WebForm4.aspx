<!-- //Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="SF.WebForm4" %>

<!DOCTYPE html>
<style type="text/css">
    .btn-lg {
        width: 300px;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My ASP.NET Application</title>
    <style> body{background-color:linen;}
    </style>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-collapse collapse">
            </div>
            <div class="navbar-header" style="list-style-type: disc; list-style-image: inherit; list-style-position: inside">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand"  onclick="location.href='https://localhost:44300/Home/Index'">Home </a>
                <a class="navbar-brand" onclick="location.href='https://localhost:44300/Home/About'">About </a>
                <a class="navbar-brand" onclick="location.href='https://localhost:44300/Home/Contact'">Contact </a>
                <a class="navbar-brand" onclick="location.href='https://localhost:44300/Home/Portfolio'">Services </a>
                <a class="navbar-brand" onclick="location.href='https://localhost:44300/Home/Queries'">Queries </a>
            </div>
        </div>
        </div>
    <center>
              <h1>Select the company to get the graph</h1>
        <p></p>
        <p></p>
        <p></p>
    <form id="form1" runat="server">
    <table style="font-family: sans-serif; height: 1000px; width: 500px;">
    
        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Google.html'">Google </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Cisco.html'">Cisco </a>
        </td>
    </tr>
        
        
    <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/IBM.html'">IBM </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Intel.html'">Intel </a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Apple.html'">Apple </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/BankofAmerica.html'">Bank of America</a>
        </td>
    </tr>
        

       <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Chevron.html'">Chevron Corporation </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Ford.html'">Ford Motor Company </a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Goldman.html'">Goldman Sachs</a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Honeywell.html'">Honeywell </a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Johnson.html'">Johnson & Johnson </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Kellogg.html'">Kellogg Company</a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Lockheed.html'">Lockheed Martin </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Microsoft.html'">Microsoft Corporation </a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Macy.html'">Macy's Inc </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Nokia.html'">Nokia</a>
        </td>
    </tr>
        

        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Oracle.html'">Oracle Corporation </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Yahoo.html'">Yahoo </a>
        </td>
    </tr>
        
        <tr>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Qualcomm.html'">Qualcomm Inc </a>
        </td>
        <td>
            <a class="btn btn-primary btn-lg" onclick="location.href='https://localhost:44300/Charts/Companies/Procter.html'">Procter and Gamble Company </a>
        </td>
    </tr>
        

    </table>
    </form>
        </center>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <p>
        &nbsp;</p>
    <div class="container body-content">
        <hr />
        <footer>
            <p>&copy; <%= DateTime.Now.Year.ToString() %> - Group 12 Software Engineering Web Application</p>
        </footer>
    </div>
</body>
</html>
