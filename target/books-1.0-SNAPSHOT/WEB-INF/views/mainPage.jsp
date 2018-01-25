<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 19.01.2018
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        <%@include file='style.css' %>
    </style>
    <title>Книги</title>
</head>
<body>

<c:if test="${!empty bookList}">
    <table>
        <tr>
            <th width="80">ID</th>
            <th width="120">Название</th>
            <th width="120">Описание</th>
            <th width="120">Автор</th>
            <th width="120">ISBN</th>
            <th width="60">Год печати</th>
            <th width="60">Прочтено</th>
        </tr>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.printYear}</td>
                <td>${book.readAlready}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
