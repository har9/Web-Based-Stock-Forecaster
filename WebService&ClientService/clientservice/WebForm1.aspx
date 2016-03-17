<!-- //Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta -->


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SF.WebForm1" %>

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
            <h4>Enter the company Name</h4>
        </td>
        <td>
            <h4><asp:TextBox ID="txtFirstNumber" CssClass="breadcrumb" runat="server"></asp:TextBox></h4>
        </td>
            <td>
            <center><h4><asp:Button ID="btnAdd" class="btn btn-primary btn-lg" runat="server" Text="Go!"
            OnClick="btnAdd_Click"/></h4></center>
        </td>
    </tr>
        
        
    <tr>
        <td>
            <h4>Current stock price is: </h4>
        </td>
        <td>
            <h4><asp:Label ID="lblResult" runat="server"></asp:Label></h4>
        </td>
    </tr>


    </table>
    </form>

        </table>
    </form>
        <table style="height: 100px; width: 800px;">
        <h4>List of companies to choose from:</h4>
            <tr>
                <td>
                    <h4><strong><p style="color:#b15315">Google</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Cisco</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">IBM</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Intel</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Apple</p></strong></h4>
                </td>
            </tr>
            <tr>
                <td>
                    <h4><strong><p style="color:#b15315">Bank of America</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Chevron Corporation</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Ford Motor Company</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Goldman Sachs</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Honeywell International</p></strong></h4>
                </td>
            </tr>
            <tr>
                <td>
                    <h4><strong><p style="color:#b15315">Johnson & Johnson</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Kellogg Company</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Lockheed Martin Corporation</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Microsoft Corporation</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Macy's Inc</p></strong></h4>
                </td>
            </tr>
            <tr>
                <td>
                    <h4><strong><p style="color:#b15315">Nokia Corporation</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Oracle Corporation</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Yahoo</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Qualcomm Inc</p></strong></h4>
                </td>
                <td>
                    <h4><strong><p style="color:#b15315">Procter and Gamble company</p></strong></h4>
                </td>
            </tr>
            </table>
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