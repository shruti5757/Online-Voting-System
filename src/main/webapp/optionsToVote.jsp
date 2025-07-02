<!DOCTYPE html>
<%@page import="com.mysql.cj.Session"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Voting</title>
    <link rel="stylesheet" href="vote.css">
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="com.iph.Online_Voting.model.*" %> 



    
</head>
<body><%                CandidateBean cb=new CandidateBean();
 %>
 
    <div class="container">
        <h2>President Voting 2K24</h2>
        
        <div class="candidates">
            <div class="candidate">
                <img src="img/flower.jpg" alt="Candidate 1 Photo" width="200" height="200">
                <p id="x"><%
                
                String url="jdbc:mysql://localhost/evoting";
                String driver="com.mysql.cj.jdbc.Driver";
                String username="root";
                String password="root";
                String query;
                Connection con;
               
                query= "select voter_id,firstname,lastname from candidate_registration where voter_id=1";
       		 try {
       			 Class.forName(driver);
       			 con=DriverManager.getConnection(url,username,password);
       			 Statement st=con.createStatement();
       			 ResultSet rs=st.executeQuery(query);
       			 if(rs.next()) {
        				int i=rs.getInt(1);
           				String fn=rs.getString(2); 
           				String ln=rs.getString(3);
       				out.print(fn+" "+ln);
       				cb.setVoter_id(i);
       				cb.setFirst_name(fn);
       				cb.setLast_name(ln);
       				
       				
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		}
                %></p>
                <form action="VoteServlet" method="post">
                    <input type="hidden" name="candidate" value="<%= cb.getFirst_name()%>">
                    <input type="hidden" name="voter_id" value="<%= cb.getVoter_id() %>">
                     <input type="hidden" name="lastname" value="<%= cb.getLast_name()%>">
          
                    <input type="submit" value="Vote">
                </form>
            </div>
            
            <div class="candidate">
                <img src="img/flower1.jpg" alt="Candidate 2 Photo" width="200" height="200">
             <p id="x"><%
                String url1="jdbc:mysql://localhost/evoting";
                String driver1="com.mysql.cj.jdbc.Driver";
                String username1="root";
                String password1="root";
                String query1;
                Connection con1;
               
                query1= "select voter_id,firstname,lastname from candidate_registration where voter_id=2";
       		 try {
       			 Class.forName(driver);
       			 con1=DriverManager.getConnection(url,username,password);
       			 Statement st1=con1.createStatement();
       			 ResultSet rs1=st1.executeQuery(query1);
       			 if(rs1.next()) {
       				int i=rs1.getInt(1);
       				String fn=rs1.getString(2); 
       				String ln=rs1.getString(3);
       				out.print(fn+" "+ln);
       				cb.setVoter_id(i);
       				cb.setFirst_name(fn);
       				cb.setLast_name(ln);
       				
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		}
                %></p>
                <form action="VoteServlet" method="post">
                     <input type="hidden" name="candidate" value="<%= cb.getFirst_name()%>">
                     <input type="hidden" name="voter_id" value="<%= cb.getVoter_id() %>">
                      <input type="hidden" name="lastname" value="<%= cb.getLast_name()%>">
                    <input type="submit" value="Vote">
                </form>
            </div>
            
            <div class="candidate">
                <img src="img/rose.jpg" alt="Candidate 3 Photo" width="200" height="200">
               <p id="x"><%
                String url2="jdbc:mysql://localhost/evoting";
                String driver2="com.mysql.cj.jdbc.Driver";
                
                String username2="root";
                String password2="root";
                String query2;
                Connection con2;
               
                query2= "select voter_id,firstname,lastname from candidate_registration where voter_id=3";
       		 try {
       			 Class.forName(driver);
       			 con2=DriverManager.getConnection(url,username,password);
       			 Statement st2=con2.createStatement();
       			 ResultSet rs2=st2.executeQuery(query2);
       			 if(rs2.next()) {
       				int i=rs2.getInt(1);
       				 String fn=rs2.getString(2); 
       				String ln=rs2.getString(3);
       				
       				out.print(fn+" "+ln);
       				cb.setVoter_id(i);
       				cb.setFirst_name(fn);
       				cb.setLast_name(ln);
       			
       			 }
       		} catch (SQLException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		}
       		 
                %></p>
                <form action="VoteServlet" method="post">
                    <input type="hidden" name="candidate" value="<%= cb.getFirst_name()%>">
                    <input type="hidden" name="voter_id" value="<%= cb.getVoter_id() %>">
                    <input type="hidden" name="lastname" value="<%= cb.getLast_name()%>">
                    <input type="submit" value="Vote">
                </form>
            </div>
        </div>
    </div>
    <%
    // Get the session object
   //  session = request.getSession();
    

    // Check if the user has already voted
//    Boolean hasVoted = (Boolean)session.getAttribute("hasVoted");
  //  if (hasVoted != null && hasVoted) {
        // If the user has already voted, disable all the voting buttons
%>
   // <script>
        // JavaScript to disable all voting buttons
      //  document.querySelectorAll('input[type="submit"]').forEach(function(button) {
        //    button.disabled = true;
       // });
    //</script>
//<%
   // }
//%>



</body>
</html>
