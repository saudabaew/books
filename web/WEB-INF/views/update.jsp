<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 26.01.2018
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Редактировать</title>
    <style>
        <%@include file='style.css' %>
    </style>
</head>
<body>

<form method="post">
    <label>ID:<br>
        <input name="title" disabled value="${book.id}" required="required"><br>
    </label>
    <label>Название:<br>
        <input name="title" type="text" value="${book.title}" required="required"><br>
    </label>
    <label>
        Описание:<br>
        <input name="description" size="100" value="${book.description}" required="required"><br>
    </label>
    <label>
        Автор:<br>
        <input name="author" type="text" value="${book.author}" disabled><br>
    </label>
    <label>
        ISBN:<br>
        <input name="isbn" type="text" value="${book.isbn}" required="required"><br>
    </label>
    <label>
        Год печати:<br>
        <input name="printYear" type="number" value="${book.printYear}" required="required"><br>
    </label>

    <label>
        <input name="readAlready" type="radio" value="1">Прочтено<br>
    </label>

    <label>
        <input name="readAlready" type="radio" value="0" checked="checked">Не прочтено<br>
    </label>

    <input type="submit" value="Обновить">
</form>

<p>
    <a href="/">На главную</a>
</p>

</body>
</html>
