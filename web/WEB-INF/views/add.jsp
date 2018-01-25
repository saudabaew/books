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
        <input name="title" type="text"><br>
        <label>
            Описание:<br>
            <textarea name="description" rows="3"></textarea><br>
            <label>
                Автор:<br>
                <input name="author" type="text"><br>
                <label>
                    ISBN:<br>
                    <input name="isbn" type="text"><br>
                    <label>
                        Год печати:<br>
                        <input name="printYear" type="text"><br><br>
                        <input type="submit" value="Добавить книгу">
</form>

</body>
</html>
