<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 31.01.2018
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Поиск</title>
    <style>
        <%@include file='style.css' %>
    </style>
</head>

<body>

<table>
    <tr>
        <th width="2%">ID</th>
        <th>Название</th>
        <th width="50%">Описание</th>
        <th>Автор</th>
        <th>ISBN</th>
        <th width="5%">Год печати</th>
        <th width="5%">Прочтено</th>
        <th>Операции</th>
    </tr>

<c:forEach items="${listBooks}" var="book">
<c:if test="${fn: toLowerCase(book.title) == search}">

    <tr>
        <td>${book.id}</td>
        <td><a href="/update/${book.id}">${book.title}</a></td>
        <td>${book.description}</td>
        <td>${book.author}</td>
        <td>${book.isbn}</td>
        <td>${book.printYear}</td>
        <c:if test="${book.readAlready}">
            <td>Да</td>
        </c:if>
        <c:if test="${!book.readAlready}">
            <td>Нет</td>
        </c:if>
        <td><a href="/delete/${book.id}/">Удалить</a></td>
    </tr>
    </c:if>
    </c:forEach>
</table>
<p>
    <a href="/">На главную</a>
</p>
</body>
</html>
