<%--
  Created by IntelliJ IDEA.
  User: fernandobraga
  Date: 15/9/19
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="validate.jsp" method="post">
        <p>
            <label for="username">
                <strong>Username: </strong>
            </label>
                <input type="text" placeholder="username" name="username" required>
        </p>
        <p>
            <label for="password">
                <strong>Password: </strong>
            </label>
            <input type="text" placeholder="password" name="password" required>
        </p>
        <button type="submit">Login</button>
    </form>
</body>
</html>
