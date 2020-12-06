<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Merve Kibir</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        #kutu1 {
            height: 100px;
            width: 100px;
            background-color: darkslateblue;
            position: absolute;
        }
    </style>
</head>

<body>
    <div id="kutu1"></div>

    <script>
        var x = 10, y = 10;
        $(document).ready(function () {
        }).keydown(function (event) {

            var code = (event.which) ? event.which : event.keyCode;
            if (code == 37) {
                x = x - 3;
                $("#kutu1").css("left", x + "px")
            }
            if (code == 38) {
                y = y - 3;
                $("#kutu1").css("top", y + "px");
            }
            if (code == 39) {
                x = x + 3;
                $("#kutu1").css("left", x + "px");
            }
            if (code == 40) {
                y = y + 3;
                $("#kutu1").css("top", y + "px");
            }
        });
    </script>
</body>
</html>
