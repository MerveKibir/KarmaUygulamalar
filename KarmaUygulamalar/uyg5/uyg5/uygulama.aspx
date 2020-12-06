<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uygulama.aspx.cs" Inherits="uyg5.uygulama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Merve Kibir</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
    <p id="p1" style="font-size: 20px">Aşağıda seçilen renge göre p etiketli yazının rengi değişmektedir.</p>
    <select id="secim">
        <option value="red">Kırmızı</option>
        <option value="green">Yeşil</option>
        <option value="blue">Mavi</option>
        <option value="pink">Pembe</option>
        <option value="purple">Mor</option>
    </select>

    <script>
        $("#secim").change(function () {
            var deger = $("#secim").val();
            $("#p1").css({ "color": deger });
        });
    </script>

</body>
</html>
