<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>my profile</title>
<link rel="stylesheet" type="text/css" href="canreg.css">
</head>
<body>
<div class="container">
<form action="${pageContext.request.contextPath}/CanregServlet", method="post">
<h1>Candidate Registration </h1>

<div class="content">

<div class="input-box">
<label>First name: </label>
<input type="text" placeholder="Enter firstname" name="firstname">
</div>

<div class="input-box">
<label>last name: </label>
<input type="text" placeholder="Enter lastname" name="lastname">
</div>

<div class="input-box">
<label>Date of Birth: </label>
<input type="date" placeholder="Enter date of birth" name="dateofbirth">
</div>
<div class="input-box">
<label for="Department">
*choose your Department: 
</label>
<select name="department" id="Department">
<option>Computer Science and Engineering</option>
<option>Civil Engineering</option>
<option>Mechanical Engineering</option>
<option>Electronics and Telecommunication Engineering</option>
<option>Artificial intelligence and Machine Learning Engineering</option>



</select>


<div class="input-box">
<label>Email: </label>
<input type="email" placeholder="Enter valid email" name="email">
</div>

<div class="input-box">
<label>Password: </label>
<input type="password" placeholder="Enter password" name="password">
</div>

<div class="input-box">
<label>PRN No. </label>
<input type="text" placeholder="Enter PRN no." name="prn">
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
<div class="form-group">
     <input type="checkbox" id="agree-term" name="agree-term" class="agree-term" required="required"> 
     <label for="agree-term" class="label-agree-term"><span></span><span></span>I agree all statements in <a href="#" class="term-service">Terms of Service</a></label>
     
</div>

<div class="button-container">
<button type="submit" name="submit">submit</button>
</div>
</div>
</form>
</div>



</body>
</html>