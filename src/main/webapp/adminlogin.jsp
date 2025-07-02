<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login form</title>
<link rel="stylesheet" type="text/css" href="login1.css">
</head>
<body>
<section>
<div class="container">
<form action="${pageContext.request.contextPath}/AdminServlet", method="post">
<h1>Login</h1>

<div class="input-box">
<label>*Username.: </label>
<input type="name" name="name">
</div><br><br>

<div class="input-box">
<label>Password: </label>
<input type="password"  name="password">
</div><br><br>

<div class="remember">
<label><input type="checkbox"> Remember me </label>

</div><br><br>

<button type="submit" name="login">Login</button>

</form>
</div>
</section>
</body>
</html>