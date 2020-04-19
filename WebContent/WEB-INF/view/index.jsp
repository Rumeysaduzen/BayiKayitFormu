<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<link href="css/style.css" rel="stylesheet" />
<!DOCTYPE html>

<html>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<div class="login-box">
    <h2>BAYI KAYIT FORMU</h2>
    <form action="<%= request.getContextPath() %>/register" method="post">
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Ad</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Soyad</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Tc</label>
        </div>
        <div class="user-box">
            <input type="email" name="" required="">
            <label>E-mail</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Adres</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Telefon</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Lokumcu Babayi tercih etme sebebiniz nedir? </label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Hangi il ilçe semt için Lokumcu Babayi düsünüyorsunuz?</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Yatirim miktariniz nedir?</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Parekende ticareti ile ugrastiniz mi?</label>
        </div>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Eklemek istedikleriniz :</label>
        </div>
        <a href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <td><input type="submit" value="Kaydet" /></td>
        </a>
    </form>
</div>