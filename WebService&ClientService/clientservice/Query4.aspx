<!-- //Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta -->


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query4.aspx.cs" Inherits="SF.Query4" %>

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
        <h1>Lowest stock price for each company in the latest one year</h1>
        <p></p>
        <p></p>
        <p></p>
    <form id="form1" runat="server">
    <table style="font-family: sans-serif">
    <tr>
        <td>
            <h3>Apple</h3>
        </td>
                <td>
            <asp:Label ID="lblResult1" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Bank of America</h3>
        </td>
                <td>
            <asp:Label ID="lblResult2" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Chevron Corporation</h3>
        </td>
                <td>
            <asp:Label ID="lblResult3" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Cisco</h3>
        </td>
                <td>
            <asp:Label ID="lblResult4" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Ford Motor Company</h3>
        </td>
                <td>
            <asp:Label ID="lblResult5" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Goldman Sachs</h3>
        </td>
                <td>
            <asp:Label ID="lblResult6" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Google</h3>
        </td>
                <td>
            <asp:Label ID="lblResult7" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Honeywell International</h3>
        </td>
                <td>
            <asp:Label ID="lblResult8" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>IBM</h3>
        </td>
                <td>
            <asp:Label ID="lblResult9" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Intel</h3>
        </td>
                <td>
            <asp:Label ID="lblResult10" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Johnson & Johnson</h3>
        </td>
                <td>
            <asp:Label ID="lblResult11" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Kellogg Company</h3>
        </td>
                <td>
            <asp:Label ID="lblResult12" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Lockheed Martin Corporation</h3>
        </td>
                <td>
            <asp:Label ID="lblResult13" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>    <tr>
        <td>
           <h3>Macy's Inc</h3>
        </td>
                <td>
            <asp:Label ID="lblResult14" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Microsoft Corporation</h3>
        </td>
                <td>
            <asp:Label ID="lblResult15" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Nokia Corporation</h3>
        </td>
                <td>
            <asp:Label ID="lblResult16" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Oracle Corporation</h3>
        </td>
                <td>
            <asp:Label ID="lblResult17" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Qualcomm Inc</h3>
        </td>
                <td>
            <asp:Label ID="lblResult18" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Procter and Gamble Company</h3>
        </td>
                <td>
            <asp:Label ID="lblResult19" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <h3>Yahoo</h3>
        </td>
                <td>
            <asp:Label ID="lblResult20" runat="server" CssClass="dropdown-toggle btn"></asp:Label>
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
