<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 20.01.2018
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <style>
        <%@include file='style.css' %>
    </style>
    <title>Добавить книгу</title>
</head>
<body>

<form method="post">
    <label>Название:<br>
        <input name="title" type="text" required="required"><br>
    </label>
    <label>
        Описание:<br>
        <textarea name="description" rows="3" required="required"></textarea><br>
    </label>
    <label>
        Автор:<br>
        <input name="author" type="text" required="required"><br>
    </label>
    <label>
        ISBN:<br>
        <input name="isbn" type="text" required="required"><br>
    </label>
    <label>
        Год печати:<br>
        <input name="printYear" type="text" required="required"><br><br>
        <input type="submit" value="Добавить книгу"><br>
    </label>
</form>

<p>
    <a href="/">На главную</a>
</p>

</body>
</html>
