<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>my profile</title>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<div class="container">
<form action="${pageContext.request.contextPath}/RegisterServlet", method="post">
<h1>Student Registration </h1>

<div class="content">

<div class="input-box">
<label>*First name: </label>
<input type="text" placeholder="Enter firstname" name="firstname"required>
</div>

<div class="input-box">
<label>Last name: </label>
<input type="text" placeholder="Enter lastname" name="lastname"required>
</div>

<div class="input-box">
<label>*Date of Birth: </label>
<input type="date" placeholder="Enter date of brith" name="dateofbirth"required>
</div>

<div class="input-box">
<label>Email: </label>
<input type="email" placeholder="Enter valid email" name="email"required>
</div>

<div class="input-box">
<label>*Password: </label>
<input type="password" placeholder="Enter password" name="password"required>
</div>

<div class="input-box">
<label>*Confirm password: </label>
<input type="password" placeholder="confirm password" name="confirmpassword"required>
</div>

<div class="input-box">
<label for="Department">
*choose your Department: 
</label>
<select name="department" id="department">
<option>Computer Science and Engineering</option>
<option>Civil Engineering</option>
<option>Mechanical Engineering</option>
<option>Electronics and Telecommunication Engineering</option>
<option>Artificial intelligence and Machine Learning Engineering</option>




</select>
</div>



<div class="input-box">
<label>*PRN NO.: </label>
<input type="text" placeholder="Enter PRN no." name="prn"required>
</div>


<div>
<span class="gender-title">Gender</span>
<div class="gender-category">
    <input type="radio" id="Male" name="gender" >
    <label for="Male">Male</label>
    <input type="radio" id="Female" name="gender">
    <label for="Female">Female</label>
    <input type="radio" id="Other" name="gender">
    <label for="Other">Other</label>
</div>
</div>


<div class="button-container">
<button type="submit" name="submit">submit</button>
</div>
</div>
</form>
</div>



</body>
</html>