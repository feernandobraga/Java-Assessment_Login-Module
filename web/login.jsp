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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="signin.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b4abea9736.js"></script>
</head>
<body class="text-center">
    <form class="form-signin" action="validate.jsp" method="post"  style="margin-top: 0px">

        <span style="font-size: 13em; color: #464D77;">
          <i class="fas fa-user-astronaut"></i>
        </span>
        <br>
        <br>
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

        <label for="username" class="sr-only">
            Enter username
        </label>
            <input class="form-control" type="text" placeholder="Enter Username" name="username" required autofocus>

        <label for="password" class="sr-only">
            Password:
        </label>
        <input class="form-control" type="text" placeholder="Password" name="password" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </form>
</body>
</html>
