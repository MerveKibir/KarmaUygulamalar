<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Jquery Örnekler</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <style>
        .kutu {
            width: 200px;
            height: 200px;
            float: left;
            border: #000 solid 2px;
            margin: 3px;
        }
    </style>


</head>

<body>
    <input type="color" id="renk">
    <br>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>
    <div class="kutu"></div>

    <script>
        $(document).ready(function () {
            $(".kutu").click(function () {
                var secilenrenk = $("#renk").val();
                $(this).css("backgroundColor", secilenrenk);
            });
        });
    </script>
</body>
</html>
