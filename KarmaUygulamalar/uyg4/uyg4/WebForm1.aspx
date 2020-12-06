﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uyg4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>VAR MISIN YOK MUSUN MERVE KİBİR</title>
    <style>
        .para-dizisi {
            width: 220px;
            position: fixed;
            text-align: center;
        }

            .para-dizisi .para {
                margin: 5px auto;
                height: 40px;
                width: 100px;
                float: left;
                margin-left: 10px;
            }

        .kutular {
            position: absolute;
            left: 250px;
            width: 1000px;
        }

            .kutular .kutu {
                float: left;
                background-color: dodgerblue;
                font-size: 1em;
                color: #fff;
                width: 150px;
                height: 100px;
                line-height: 100px;
                margin: 5px;
                text-align: center;
            }

        .hamdi {
            background-color: bisque;
            width: 935px;
            padding: 10px;
            color: #fff;
        }

        .kutular .aktif {
            background: #CD2847;
        }

        .kutular .pasif {
            background: #3E3033;
        }

        .kirmizi {
            background-color: darkred;
            font-size: 1.5em;
            color: #fff;
        }

        .mavi {
            background-color: cornflowerblue;
            font-size: 1.5em;
            color: #fff;
        }

        .sari {
            background-color: yellow;
            font-size: 1.5em;
            color: #000;
        }
    </style>
</head>

<body>
    <div class="para-dizisi">
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
        <div class="para">1</div>
    </div>
    <div class="kutular">
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
        <div class="kutu"></div>
        <div class="kutu"></div>
        <div class="kutu"></div>
        <div class="kutu"></div>
        <div style="clear: both"></div>
        <div class="hamdi">
            <h1 style="color: purple;">HAMDİ BEY:</h1>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
    <script>
        var paraListe = [1, 2, 5, 10, 15, 25, 50, 100, 400, 500, 750, 1000, 2500, 5000, 10000, 15000, 20000, 25000, 50000, 150000, 250000, 500000, 500000, 500000];
        var paraAcilan = [];/*hamdibey için gerkli olan açılan para listesi*/
        var karisikListe = paraListe.slice();/*listenin yeni bir örneğini oluşturuyoruz.*/
        karistir(karisikListe);/*örneği oluşturulan listenin içindeki değerleri karıştırıyoruz.*/
        var kutum = null;/*ileride seçtiğim kutuya ait onlan index numarası içinde olacak.*/
        var sayac = 1;/*her 3 değerde bir hamdibey teklif yapacak*/
        /*sol paneldeki para listesinin oluşturulması*/
        $(".para").each(function (index, element) {

            if (paraListe[index] < 1000) {
                $(element).addClass("mavi").html(paraListe[index]);

            }
            else if (paraListe[index] < 100000) {
                $(element).addClass("sari").html(paraListe[index]);
            }
            else {
                $(element).addClass("kirmizi").html(paraListe[index]);
            }
        });

        /*ekranın ortasındaki para kutularına değerlerin atanması*/
        $(".kutu").each(function (index, element) {
            $(element).html(index + 1);
        });

        /*kutu açma işleminin yapılması*/
        $(".kutu").click(function () {

            var secilenKutuNo = Number($(this).html());
            if (kutum == null) {
                $(this).css({ "background": "#CD2847" });
                kutum = secilenKutuNo;
            }
            else if (kutum != secilenKutuNo) {
                $(this).css({ "background": "#3E3033" });
                var kutuno = Number($(this).html() - 1);/*karisikListe içindeki para index ile eşleştirdik*/
                $(this).html(karisikListe[kutuno]);
                $(".para-dizisi .para:contains(" + karisikListe[kutuno] + ")").first().html("").css({ "background": "#202000" });
                sayac++;
                paraAcilan.push(+karisikListe[kutuno]);
            }

            if (paraAcilan.length == 23) {
                alert("KUTUNUZDAKİ PARA:" + karisikListe[kutum - 1]);
                location.reload();
                return false;
            }

            if (sayac % 3 == 0) {

                $(".hamdi h1").html("HAMDİ BEY:" + hamdiBey(paraListe, paraAcilan));
                var kabul = window.confirm("Teklifi Kabul ediyormusunuz");
                if (kabul) {
                    alert("KUTUNUZDAKİ PARA:" + karisikListe[kutum - 1]);
                    location.reload();
                    return false;
                }
            }


        });

        function karistir(a) {
            var j, x, i;
            for (i = a.length; i; i -= 1) {
                j = Math.floor(Math.random() * i);
                x = a[i - 1];
                a[i - 1] = a[j];
                a[j] = x;
            }
            return a;
        }

        function hamdiBey(liste, para) {
            /*liste açılan paralaarı*/
            /*para tüm  paralaarı*/
            var p1 = 0;
            var p2 = 0;
            for (i in para) {
                p1 = p1 + para[i];

            }

            for (i in liste) {
                p2 = p2 + liste[i];
            }
            return ((p1 - p2) / (para.length - liste.length)).toFixed(0);

        }
    </script>
</body>
</html>
