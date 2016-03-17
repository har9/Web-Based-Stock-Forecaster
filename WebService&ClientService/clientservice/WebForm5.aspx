<!-- //Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="SF.WebForm5" %>

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
    <form id="form1" runat="server">
    <table style="font-family: sans-serif; height: 200px; width: 800px;">
    
        <tr>
        <td>
            <h4>Trending up</h4>
        </td>
            <td>
            <h4><asp:Label ID="Label1" runat="server"></asp:Label></h4>
        </td>
    </tr>
        
        
    <tr>
        <td>
            <h4>Trending down </h4>
        </td>
        <td>
            <h4><asp:Label ID="lblResult" runat="server"></asp:Label></h4>
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

