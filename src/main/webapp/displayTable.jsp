<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Table</title>
    <style>
     body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    padding: 12px 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f2f2f2;
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #e9e9e9;
}


    </style>
    <%@ page import="java.sql.ResultSet" %>
</head>
<body>
    <h1>Table Contents</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>First_Name</th>
            <th>last_Name</th>
            <th>Email</th>
            <th>PRN</th>
        </tr>
        <% 
            ResultSet rs = (ResultSet)request.getAttribute("resultSet");
            while(rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("voter_id") %></td>
            <td><%= rs.getString("firstname") %></td>
                <td><%= rs.getString("lastname") %></td>
            <td><%= rs.getString("email") %></td>
             <td><%= rs.getInt("prn") %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
