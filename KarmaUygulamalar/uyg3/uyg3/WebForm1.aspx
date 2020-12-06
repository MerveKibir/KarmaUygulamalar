<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Jquery Örnekler</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


</head>

<body>
    <textarea id="t1" rows="6"></textarea>
    <div id="d1"></div>


    <script>
        //Text kutusuna yazdığımız yazının karakter sayısı text kutusunda görünsün
        $(document).ready(function () {
            $("#t1").on("keyup", function () {
                var yazi = $("#t1").val();
                $("#d1").html(yazi.length);
            });
        });
    </script>
</body>
</html>
