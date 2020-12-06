<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Internet Programlama Vize</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        #kutu1 {
            height: 200px;
            width: 200px;
            background-color: #357aac;
            position: absolute;
        }
    </style>
</head>

<body onload="yerdegistirme()">
    <div id="kutu1"></div>

    <script>
        var kutuId;

        function yerdegistirme() {
            kutuId = setInterval(yerdegis, 5000);
        }

        function yerdegis() {
            var xpos = parseInt(Math.random() * 1000);
            var ypos = parseInt(Math.random() * 800);

            kutu1.style.left = xpos + "px";
            kutu1.style.top = ypos + "px";
            kutu1.style.width = this.clientWidth + 10 + "px";
            kutu1.style.height = this.clientHeight + 10 + "px";
        }
    </script>
</body>
</html>
