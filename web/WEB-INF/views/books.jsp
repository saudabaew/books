<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 30.01.2018
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        <%@include file='style.css' %>
    </style>
</head>
<body>

<c:if test="${!empty listBooks}">
    <table>
        <tr>
            <th width="80">ID</th>
            <th width="120">Название</th>
            <th width="120">Описание</th>
            <th width="120">Автор</th>
            <th width="120">ISBN</th>
            <th width="60">Год печати</th>
            <th width="60">Прочтено</th>
            <th width="60">Операции</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
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
        </c:forEach>
        <tr>
            <td colspan="8"><a href="/add">ДОБАВИТЬ КНИГУ</a></td>
        </tr>
    </table>
</c:if>

<c:url value="/" var="prev">
    <c:param name="page" value="${page-1}"/>
</c:url>
<c:if test="${page > 1}">
    <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
</c:if>
<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
    <c:choose>
        <c:when test="${page == i.index}">
            <span>${i.index}</span>
        </c:when>
        <c:otherwise>
            <c:url value="/" var="url">
                <c:param name="page" value="${i.index}"/>
            </c:url>
            <a href='<c:out value="${url}" />'>${i.index}</a>
        </c:otherwise>
    </c:choose>
</c:forEach>
<c:url value="/" var="next">
    <c:param name="page" value="${page + 1}"/>
</c:url>
<c:if test="${page + 1 <= maxPages}">
    <a href='<c:out value="${next}" />' class="pn next">Next</a>
</c:if>

</body>
</html>
