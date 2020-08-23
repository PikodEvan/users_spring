<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 21.08.2020
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <title>Вход в систему</title>
</head>

<body>
<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="m">
    <div class="auth">
        <form method="POST" action="/login">
            <h2>Вход в систему</h2>
            <div>
                <input name="username" type="text" placeholder="Имя"
                       autofocus="true"/>
                <input name="password" type="password" placeholder="Пароль"/>
                <button type="submit">Войти</button>
                <h4><a href="/registration">Зарегистрироваться</a></h4>
            </div>
        </form>
    </div>
</div>

</body>
</html>
