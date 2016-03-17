<!-- //Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query5.aspx.cs" Inherits="SF.Query5" %>

<!DOCTYPE html>

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
              <h1>Companies who have the average stock price lesser than the lowest of Google in the latest one year</h1>
        <p></p>
        <p></p>
        <p></p>
    <form id="form1" runat="server">
    <table style="font-family: sans-serif; height: 200px; width: 700px;">
    <tr>
        <td>
            <h3>22144  : </h3>
        </td>
        <td>
            <h3>Apple</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>662744  : </h3>
        </td>
        <td>
            <h3>Bank of America</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>667226  : </h3>
        </td>
        <td>
            <h3>Chevron Corporation</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>99624  :</h3>
        </td>
        <td>
            <h3>Cisco</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>13606  :</h3>
        </td>
        <td>
            <h3>Ford Motor Company</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>663137  :</h3>
        </td>
        <td>
            <h3>Goldman Sachs</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>666236  :</h3>
        </td>
        <td>
            <h3>Honeywell International</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>18241  :</h3>
        </td>
        <td>
            <h3>IBM</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>284784  :</h3>
        </td>
        <td>
            <h3>Intel</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>666601  :</h3>
        </td>
        <td>
            <h3>Johnson & Johnson</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>20562  :</h3>
        </td>
        <td>
            <h3>Kellogg Company</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>21553  :</h3>
        </td>
        <td>
            <h3>Lockheed Martin Corporation</h3>
        </td>
    </tr>    
    <tr>
        <td>
            <h3>655697  :</h3>
        </td>
        <td>
           <h3>Macy's Inc</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>358464  :</h3>
        </td>
        <td>
            <h3>Microsoft Corporation</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>657729  :</h3>
        </td>
        <td>
            <h3>Nokia Corporation</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>419344  :</h3>
        </td>
        <td>
            <h3>Oracle Corporation</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>656142  :</h3>
        </td>
        <td>
            <h3>Qualcomm Inc</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>29312  :</h3>
        </td>
        <td>
            <h3>Procter and Gamble Company</h3>
        </td>
    </tr>
    <tr>
        <td>
            <h3>658890  :</h3>
        </td>
        <td>
            <h3>Yahoo</h3>
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