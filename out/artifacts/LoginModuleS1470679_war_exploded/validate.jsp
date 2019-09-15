<%--
  Created by IntelliJ IDEA.
  User: fernandobraga
  Date: 15/9/19
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<% //database connection %>
<sql:setDataSource var="dbBlog" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/dbBlog?serverTimezone=Australia/Sydney"
                   user="root" password="mysql"/>

<% //retrieve forms parameters %>
<c:set var="username" scope="session" value="${param.username}"/>
<c:set var="password" scope="session" value="${param.password}"/>

<% //open a connection and execute a query %>
<sql:query dataSource="${dbBlog}" var="result">
    SELECT count(*) as returnedUser from users
    where username = ?
    and password = ?
    <sql:param value="${username}"/>
    <sql:param value="${password}"/>
</sql:query>

<html>
<head>
    <title>Verification</title>
</head>
<body>
    <% //handling the query return %>
    <c:forEach items="${result.rows}" var="rs">
        <c:choose>
            <c:when test="${rs.returnedUser > 0}">
                <c:out value="Login Successful"/>
            </c:when>
            <c:otherwise>
                <c:out value="Invalid credentials"/>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <br>

    <a href="login.jsp">Back</a>
</body>
</html>
