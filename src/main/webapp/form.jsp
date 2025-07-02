<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>form</title>
</head>
<body>

<label for="selectMenu">Choose a file:</label>
<select id="selectMenu" onchange="navigate()">
 
  <option value="register.jsp">User registration</option>
  <option value="login.jsp">Candidate registration</option>
</select>

<script>
function navigate() {
  var selectedValue = document.getElementById("selectMenu").value;
  if (selectedValue) {
    window.location.href = selectedValue;
  }
}
</script>

</body>
</html>
