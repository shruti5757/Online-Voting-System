import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DisplayTableServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String url = "jdbc:mysql://localhost/evoting";
        String dbUsername = "root";
        String dbPassword = "root";
        
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            // Create a connection to the database
            Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);
            PreparedStatement ps = con.prepareStatement("SELECT * FROM candidate_registration");
            ResultSet rs = ps.executeQuery();
            
            // Store the result set in request attribute
         // Store the result set in request attribute
            request.setAttribute("resultSet", rs);

            // Forward to JSP
            request.getRequestDispatcher("/displayTable1.jsp").forward(request, response);

            // Close resources
            rs.close();
            ps.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
