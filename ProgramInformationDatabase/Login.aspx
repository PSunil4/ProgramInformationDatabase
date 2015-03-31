<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/Login_StyleSheet.css" media="screen" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>

<body>
    <div id="login">
        <div id="square"></div>
        <h1>Login to Centralized Database</h1>
        <form id="form1" runat="server">
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <input class="form-control" type="text" placeholder="User ID">
            </div>
            <br />
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-lock"></span>
                </span>
                <input class="form-control" type="password" placeholder="Password">
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </form>
    </div>
        </div>
    <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
    <script src="js/index.js"></script>
</body>
</html>
