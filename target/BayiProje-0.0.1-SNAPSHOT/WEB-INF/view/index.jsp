<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>	bayi kayıt formu</title>

</head>

<body><center>

    <br>

    <br>

    <h3><b style="color:black;background-color:#a0ffff">bayi</b> Kayıt <b style="color:black;background-color:#ff9999">Formu</b></h3>

    <form action="<%= request.getContextPath() %>/register" method="post">

        <table>
            <tr>

                <td>AD: </td>

                <td><input type="text" name="name" /></td>

            </tr>

            <tr>

                <td>SOYAD:</td>

                <td><input type="text" name="surname" /></td>

            </tr>

            <tr>

                <td>TC No:</td>

                <td><input type="text" name="tc" /></td>

            </tr>

            <tr>

            <tr>

                <td>Adres:</td>

                <td><textarea name="adres" rows="3" cols="16"></textarea></td>

            </tr>

            <tr>

                <td>E-MAİL:</td>

                <td><input type="text" name="email" /></td>

            </tr>


            <tr>

                <td>TELEFON:</td>

                <td><input type="text" name="phone" /></td>

            </tr>

            <tr>

                <td>LOKUMCU BABA’YI TERCİH ETMENİZİN SEBEBİ NEDİR? </td>

                <td><input type="text" name="que1"/></td>

            </tr>

            <tr>

                <td>HANGİ İL/İLÇE/SEMT İÇİN LOKUMCU BABA İŞLETMECİLİĞİ
                    DÜŞÜNÜYORSUNUZ? </td>

                <td><input type="text" name="que2"/></td>

            </tr>



            <tr>

                <td>YATIRIM MİKTARINIZ NEDİR? </td>

                <td><input type="text" name="que3"/></td>

            </tr>

            <tr>

                <td>PERAKENDE TİCARETİ İLE UĞRAŞTINIZ MI?</td>

                <td><input type="text" name="que4"/></td>

            </tr>
            <td>EKLEMEK İSTEDİKLERİNİZ:</td>

            <td><input type="text" name="note"/></td>

            </tr>

            <tr>

                <td><input type="submit" value="Kaydet" /></td>

            </tr>

        </table>

    </form></center>

</body>

</html>