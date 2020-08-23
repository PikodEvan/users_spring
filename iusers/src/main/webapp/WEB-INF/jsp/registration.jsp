<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 21.08.2020
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <title>Регистрация</title>
</head>

<body>
<div class="m">
    <div class="auth2">
        <div style="margin-left: 50px;">
    <form:form method="POST" modelAttribute="userForm">
        <h2>Регистрация</h2>
        <div>
            <form:input type="text" path="username" placeholder="Имя"
                        autofocus="true"></form:input><br>
            <div class="error"><form:errors path="username"></form:errors>
            ${usernameError}</div>
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Пароль"></form:input>
        </div>
        <div>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Повторите пароль"></form:input><br>
            <div class="error"><form:errors path="password"></form:errors>
            ${passwordError}</div>
        </div>
        <button type="submit">Зарегистрироваться</button>
    </form:form><br>
    <a href="/">Войти</a>
        </div>
</div>
</div>
</body>
</html>
