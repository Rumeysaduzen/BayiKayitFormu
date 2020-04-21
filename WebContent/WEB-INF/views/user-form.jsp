<%--
  Created by IntelliJ IDEA.
  User: rumeysa
  Date: 21.04.2020
  Time: 00:40
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="css/style.css"></jsp:include>
<!DOCTYPE html>
<style>
    html {
        height: 100%;
    }
    body {
        margin:0;
        padding:0;
        font-family: sans-serif;
        background: linear-gradient(#141e30, #243b55);
    }

    .login-box {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 400px;
        padding: 40px;
        transform: translate(-50%, -50%);
        background: rgba(0,0,0,.5);
        box-sizing: border-box;
        box-shadow: 0 15px 25px rgba(0,0,0,.6);
        border-radius: 10px;
    }

    .login-box h2 {
        margin: 0 0 30px;
        padding: 0;
        color: #fff;
        text-align: center;
    }

    .login-box .user-box {
        position: relative;
    }

    .login-box .user-box input {
        width: 100%;
        padding: 10px 0;
        font-size: 16px;
        color: #fff;
        margin-bottom: 30px;
        border: none;
        border-bottom: 1px solid #fff;
        outline: none;
        background: transparent;
    }
    .login-box .user-box label {
        position: absolute;
        top:0;
        left: 0;
        padding: 10px 0;
        font-size: 16px;
        color: #fff;
        pointer-events: none;
        transition: .5s;
    }

    .login-box .user-box input:focus ~ label,
    .login-box .user-box input:valid ~ label {
        top: -20px;
        left: 0;
        color: #03e9f4;
        font-size: 12px;
    }

    .login-box form a {
        position: relative;
        display: inline-block;
        padding: 10px 20px;
        color: #03e9f4;
        font-size: 16px;
        text-decoration: none;
        text-transform: uppercase;
        overflow: hidden;
        transition: .5s;
        margin-top: 40px;
        letter-spacing: 4px
    }

    .login-box a:hover {
        background: #03e9f4;
        color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 5px #03e9f4,
        0 0 25px #03e9f4,
        0 0 50px #03e9f4,
        0 0 100px #03e9f4;
    }

    .login-box a span {
        position: absolute;
        display: block;
    }

    .login-box a span:nth-child(1) {
        top: 0;
        left: -100%;
        width: 100%;
        height: 2px;
        background: linear-gradient(90deg, transparent, #03e9f4);
        animation: btn-anim1 1s linear infinite;
    }

    @keyframes btn-anim1 {
        0% {
            left: -100%;
        }
        50%,100% {
            left: 100%;
        }
    }

    .login-box a span:nth-child(2) {
        top: -100%;
        right: 0;
        width: 2px;
        height: 100%;
        background: linear-gradient(180deg, transparent, #03e9f4);
        animation: btn-anim2 1s linear infinite;
        animation-delay: .25s
    }

    @keyframes btn-anim2 {
        0% {
            top: -100%;
        }
        50%,100% {
            top: 100%;
        }
    }

    .login-box a span:nth-child(3) {
        bottom: 0;
        right: -100%;
        width: 100%;
        height: 2px;
        background: linear-gradient(270deg, transparent, #03e9f4);
        animation: btn-anim3 1s linear infinite;
        animation-delay: .5s
    }

    @keyframes btn-anim3 {
        0% {
            right: -100%;
        }
        50%,100% {
            right: 100%;
        }
    }

    .login-box a span:nth-child(4) {
        bottom: -100%;
        left: 0;
        width: 2px;
        height: 100%;
        background: linear-gradient(360deg, transparent, #03e9f4);
        animation: btn-anim4 1s linear infinite;
        animation-delay: .75s
    }

    @keyframes btn-anim4 {
        0% {
            bottom: -100%;
        }
        50%,100% {
            bottom: 100%;
        }
    }

</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Bayi Başvuru Formu</title>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: tomato">


        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/user-form"
                   class="nav-link">Kayıtlar</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">


                <c:if test="${user == null}">
                <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${user != null}">
                               kayıt güncelle
                            </c:if>
                            <c:if test="${user == null}">
                                kayıt ekle
                            </c:if>
                        </h2>
                    </caption>

                    <c:if test="${user != null}">
                        <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>Ad</label> <input type="text"
                                                        value="<c:out value='${user.name}' />" class="form-control"
                                                        name="name" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Soyad</label> <input type="text"
                                                         value="<c:out value='${user.surname}' />" class="form-control"
                                                         name="email">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Adres</label> <input type="text"
                                                           value="<c:out value='${user.address}' />" class="form-control"
                                                           name="country">
                    </fieldset>
                        <fieldset class="form-group">
                            <label>Tc</label> <input type="text"
                                                               value="<c:out value='${user.tc}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Telefon</label> <input type="text"
                                                               value="<c:out value='${user.phone}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Email</label> <input type="email"
                                                               value="<c:out value='${user.email}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Lokumcu Babayi tercih etme sebebiniz nedir? </label> <input type="text"
                                                               value="<c:out value='${user.que1}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Hangi il ilçe semt için Lokumcu Babayi düsünüyorsunuz?</label> <input type="text"
                                                               value="<c:out value='${user.que2}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Yatirim miktariniz nedir?</label> <input type="text"
                                                               value="<c:out value='${user.que3}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Parekende ticareti ile ugrastiniz mi?</label> <input type="text"
                                                               value="<c:out value='${user.que4}' />" class="form-control"
                                                               name="country">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Eklemek istedikleriniz :</label> <input type="text"
                                                               value="<c:out value='${user.note}' />" class="form-control"
                                                               name="country">
                        </fieldset>

                        <button type="submit" class="btn btn-success">KAYDET</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>
