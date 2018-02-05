<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 30.01.2018
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Книги</title>
    <style>
        <%@include file='style.css' %>
    </style>
</head>
<body>

<form method="post" action="/search">
    <label>
        <input name="title" type="text" placeholder="Название книги">
        <input type="submit" value="Поиск">
    </label>
</form>

<c:if test="${!empty listBooks}">
    <table>
        <tr>
            <th width="2%">ID</th>
            <th>Название</th>
            <th width="45%">Описание</th>
            <th>Автор</th>
            <th>ISBN</th>
            <th width="5%">Год печати</th>
            <th width="10%">
                <form method="post" action="/books">
                    <select name="read">
                        <option value="all">Все</option>
                        <option value="true">Прочтены</option>
                        <option value="false">Не прочтены</option>
                    </select>
                    <p><input type="submit" value="Применить"></p>
                </form>
            </th>
            <th>Операции</th>
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
            <td colspan="8" align="center"><a href="/add">ДОБАВИТЬ КНИГУ</a></td>
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
