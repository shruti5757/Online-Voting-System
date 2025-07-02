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
<form action="${pageContext.request.contextPath}/LoginServlet", method="post">
<h1>Login</h1>

<div class="input-box">
<label>*PRN NO.: </label>
<input type="prn" name="prn">
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