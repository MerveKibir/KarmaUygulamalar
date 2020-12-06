<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Merve Kibir</title>
</head>
<body>
    <style>
        b {
            color: darkolivegreen;
        }
    </style>
    <form name="form" action="index.asp" method="post">
        <b>Kullanıcı Adı:</b><br />
        <input type="text" name="isim" size="24"><br />
        <br />
        <b>Kullanıcı Soyadı:</b><br />
        <input type="text" name="soyisim" size="24"><br />
        <br />
        <b>Şikayet Nedeni:</b><br />
        <input type="text" name="sikayet" size="50"><br />
        <br />
        <b>Şikayetinizi Yazın:</b><br />
        <textarea cols="40" rows="4"></textarea><br />
        <br />
        <input style="background-color: darkolivegreen; color: black;" type="submit" name="gonder" value="Gönder"><br />
        <br />
    </form>
</body>
</html>
