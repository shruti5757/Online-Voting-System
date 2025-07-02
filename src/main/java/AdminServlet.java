import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("name");
        String password = request.getParameter("password");
        
        // JDBC URL, username, and password of your MySQL server
        String url = "jdbc:mysql://localhost/evoting";
        String dbUsername = "root";
        String dbPassword = "root";
        
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            // Create a connection to the database
            Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword);
            
            // SQL query to check if username and password match
            String sql = "SELECT * FROM admin WHERE username=? AND password=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            
            ResultSet result = statement.executeQuery();
            
            if (result.next()) {
                // Login successful, redirect to some page
                response.sendRedirect("Admin.jsp");
            } else {
                // Login failed, display error message
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid username or password');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }
            
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
