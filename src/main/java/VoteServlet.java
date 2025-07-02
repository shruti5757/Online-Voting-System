import com.iph.Online_Voting.Dao.CandidateVoteDAO;
import com.iph.Online_Voting.model.CandidateVoteBean;
import com.mysql.cj.Session;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.*;
import java.sql.*;

public class VoteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String candidateIdStr = request.getParameter("candidate");
        String candidateIdStr1 = request.getParameter("lastname");
        int candidateId = Integer.parseInt(request.getParameter("voter_id"));
        System.out.println(candidateIdStr);
        System.out.println(candidateIdStr1);
        System.out.println(candidateId);

           int total_votes=1;
          // HttpSession session = request.getSession();
         //.invalidate();  session

          // session.setAttribute("hasVoted", true);

    

        // Create a CandidateVoteBean instance
        CandidateVoteBean candidate = new CandidateVoteBean(candidateIdStr, candidateIdStr1, candidateId, total_votes);

        // Assuming you have obtained the database connection elsewhere and passed it to DAO constructor
        Connection connection = null; // Obtain your database connection
        CandidateVoteDAO candidateVoteDAO = new CandidateVoteDAO();

        // Insert candidate vote into the database
        boolean success = candidateVoteDAO.insertOrUpdateCandidateVote(candidate);

        if (success) {
            response.sendRedirect("home.jsp");

          
        } else {
            response.getWriter().println("Failed to cast vote. Please try again later.");
        }
    }
}
