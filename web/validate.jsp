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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/b4abea9736.js"></script>
</head>
<body>
    <% //handling the query return %>
    <c:forEach items="${result.rows}" var="rs">
        <c:choose>
            <c:when test="${rs.returnedUser > 0}">

                <div class="mx-auto alert alert-success text-center" role="alert">
                    <h4 class="alert-heading">Login was succesful!
                        <i class="far fa-check-circle"></i>
                    </h4>
                    <p>Welcome, <c:out value="${username}"/></p>
                </div>

            </c:when>
            <c:otherwise>

                <div class="mx-auto alert alert-danger text-center" role="alert">
                    <h4 class="alert-heading">Access denied!
                        <i class="far fa-times-circle"></i>
                    </h4>
                    <p><c:out value="You have entered the wrong credentials!"/></p>
                </div>

            </c:otherwise>
        </c:choose>
    </c:forEach>

    <br>

    <p>
        <a href="login.jsp">Back</a>
    </p>
</body>
</html>
