package com.iph.Online_Voting.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iph.Online_Voting.model.CandidateVoteBean;
import com.iph.Online_Voting.model.StudentBean;

public class CandidateVoteDAO {
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	private String query;
	
	public boolean insertOrUpdateCandidateVote(CandidateVoteBean sb) {
	    ConnectionDao cd = new ConnectionDao();
	    con = cd.getConnection();
	    if (con != null) {
	        System.out.println("candidate Dao");
	    } else {
	        System.out.println("Hello");
	    }

	    try {
	        // Check if voter_id exists in the table
	        query = "SELECT COUNT(*) FROM candidate_vote WHERE voter_id = ?";
	        pst = con.prepareStatement(query);
	        pst.setInt(1, sb.getVoter_id());
	        rs = pst.executeQuery();
	        rs.next();
	        int count = rs.getInt(1);

	        if (count > 0) {
	            // If voter_id exists, update total_votes
	            query = "UPDATE candidate_vote SET total_votes = total_votes + ? WHERE voter_id = ?";
	            pst = con.prepareStatement(query);
	            pst.setInt(1, sb.getTotal_votes());
	            pst.setInt(2, sb.getVoter_id());
	            int rowsAffected = pst.executeUpdate();
	            return rowsAffected > 0;
	        } else {
	            // If voter_id does not exist, insert new record
	            query = "INSERT INTO candidate_vote (voter_id, firstname, lastname, total_votes) VALUES (?, ?, ?, ?)";
	            pst = con.prepareStatement(query);
	            pst.setInt(1, sb.getVoter_id());
	            pst.setString(2, sb.getFirstname());
	            pst.setString(3, sb.getLastname());
	            pst.setInt(4, sb.getTotal_votes());
	            int rowsAffected = pst.executeUpdate();
	            return rowsAffected > 0;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    } finally {
	        // Close resources
	        try {
	            if (rs != null) rs.close();
	            if (pst != null) pst.close();
	            if (con != null) con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}
    }

