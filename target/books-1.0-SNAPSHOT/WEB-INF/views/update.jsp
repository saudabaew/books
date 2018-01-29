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
</head>
<body>

<form method="get">
    <label>ID:<br>
        <input name="title" type="hidden" value="${book.id}"><br>
    </label>
    <label>Название:<br>
        <input name="title" type="text" value="${book.title}"><br>
    </label>
    <label>
        Описание:<br>
        <textarea name="description" rows="3"></textarea><br>
    </label>
    <label>
        Автор:<br>
        <input name="author" type="text"><br>
    </label>
    <label>
        ISBN:<br>
        <input name="isbn" type="text"><br>
    </label>
    <label>
        Год печати:<br>
        <input name="printYear" type="text"><br><br>
        <input type="submit" value="Обновить"><br>
    </label>
</form>

<p>
    <a href="/">На главную</a>
</p>

</body>
</html>
