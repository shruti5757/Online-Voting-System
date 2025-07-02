<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Results</title>
    <link rel="stylesheet" href="display.css"> <!-- Link to external CSS file -->
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="com.iph.Online_Voting.model.*" %> 
</head>
<body>
<% String url="jdbc:mysql://localhost/evoting";
String driver="com.mysql.cj.jdbc.Driver";
String username="root";
String password="root";
String query;
Connection con; %>

<%int tv=0,tv1=0,tv2=0;
%>
<h2>Election Results</h2>

<table>
    <thead>
        <tr>
            <th>Candidate Name</th>
            <th>Total Votes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%query= "select firstname,lastname from candidate_vote where voter_id=1";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				
           				String fn=rs.getString(1); 
           				String ln=rs.getString(2);
       				out.print(fn+" "+ln);
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %></td>
            <td><%query= "select total_votes from candidate_vote where voter_id=1";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				
           			 tv=rs.getInt(1); 
           				
       				out.print(tv);
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %></td>
        </tr>
        <tr>
            <td><%query= "select firstname,lastname from candidate_vote where voter_id=2";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				
           				String fn=rs.getString(1); 
           				String ln=rs.getString(2);
       				out.print(fn+" "+ln);
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %></td>
       		
            <td><%query= "select total_votes from candidate_vote where voter_id=2";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        			 tv1=rs.getInt(1); 
       				
       				out.print(tv1);
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %></td>
        </tr>
        
         <tr>
            <td><%query= "select firstname,lastname from candidate_vote where voter_id=3";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				
           				String fn=rs.getString(1); 
           				String ln=rs.getString(2);
       				out.print(fn+" "+ln);
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %> </td>
       		
            <td><%query= "select total_votes from candidate_vote where voter_id=3";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				
       				 tv2=rs.getInt(1); 
       				
       				out.print(tv2);       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} %></td>
        </tr>
        <!-- Add more rows for additional candidates -->
        <%
    // Calculate the candidate with maximum votes
    String winningCandidateName = "";
    int maxVotes = Math.max(tv, Math.max(tv1, tv2));
    if (maxVotes == tv) {
        // Candidate 1 wins
        query= "select firstname, lastname from candidate_vote where voter_id=1";
    } else if (maxVotes == tv1) {
        // Candidate 2 wins
        query= "select firstname, lastname from candidate_vote where voter_id=2";
    } else {
        // Candidate 3 wins
        query= "select firstname, lastname from candidate_vote where voter_id=3";
    }
    try {
        Class.forName(driver);
        con=DriverManager.getConnection(url,username,password);
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);
        if(rs.next()) {
            String fn=rs.getString(1); 
            String ln=rs.getString(2);
            winningCandidateName = fn + " " + ln;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>



    </tbody>
</table>

<!-- Winner Announcement section -->
<div class="winner-announcement">
    <h3>Winner Announcement</h3>
    <p>Congratulations to <span id="winnerName"><%= winningCandidateName %></span> for winning the election!</p>
    <img src="img/congratulations.jpg" alt="Congratulations">
    <p>You are selected as the President of Bharati Vidyapeeth's College of Engineering, Kolhapur.</p>
</div>

</body>
</html>
