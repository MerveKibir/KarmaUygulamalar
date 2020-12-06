<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Buton Yakalama Oyunu</title>
    <style>
        #nesne {
            width: 100px;
            height: 100px;
            position: absolute;
            background: #36A4FF;
        }
    </style>
</head>

<body>

    <button id="nesne"></button>

    <script>
        var sayac = 0;
        var nesne = document.getElementById("nesne");

        nesne.onmouseover = function (e) {
            sayac++;
            var xpos = parseInt(Math.random() * 1000);
            var ypos = parseInt(Math.random() * 800);

            nesne.style.left = xpos + "px";
            nesne.style.top = ypos + "px";
            nesne.style.width = this.clientWidth + 10 + "px";
            nesne.style.height = this.clientHeight + 10 + "px";
        }
        nesne.onclick = function () {
            window.alert(sayac + " Seferde Yakalandı");
            nesne.style.width = "100px";
            nesne.style.height = "100px";
            sayac = 0;
        }
    </script>
</body>
</html>
