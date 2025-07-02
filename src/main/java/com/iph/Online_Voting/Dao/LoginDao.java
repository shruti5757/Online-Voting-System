package com.iph.Online_Voting.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iph.Online_Voting.model.CandidateBean;
import com.iph.Online_Voting.model.LoginBean;
import com.iph.Online_Voting.model.StudentBean;

public class LoginDao {
	private Connection con=null;
	private String  prn, password, query, fname;
	private PreparedStatement pst;
	private ResultSet rs=null;
	LoginBean lb=new LoginBean();
	
	
	
  public boolean login(StudentBean sb) {
	prn=sb.getPrn();
	password=sb.getPassword();
	
	ConnectionDao cd= new ConnectionDao();
	
	try {
		con=cd.getConnection();
	
		if(con!=null) {
			System.out.println("login Dao");
		}else {
			System.out.println("Hello");
		}
	
			 query= "select firstname,stud_password,prn from voter_registration where prn=? and stud_password=?";

		pst=con.prepareStatement(query);
		pst.setString(1, prn);
		pst.setString(2, password);
		
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			fname=rs.getString(1);
			password=rs.getString(2);
			prn=rs.getString(3);
			
			lb.setFirstname(fname);
			lb.setPassword(password);
			lb.setPrn(prn);
			System.out.println(prn);
			System.out.println(fname);
		}
			
	
    
	}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
				
		}	
	return true;
    }
  
  public boolean login(CandidateBean cb) {
		prn=cb.getPrn();
		password=cb.getPassword();
		
		ConnectionDao cd= new ConnectionDao();
		
		try {
			con=cd.getConnection();
			
		
				 query= "select firstname,candidate_password,prn from voter_registration where prn=? and candidate_password=?";

			pst=con.prepareStatement(query);
			pst.setString(1, prn);
			pst.setString(2, password);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				fname=rs.getString(1);
				password=rs.getString(2);
				prn=rs.getString(3);
				
				cb.setFirst_name(fname);
				cb.setPassword(password);
				cb.setPrn(prn);
				System.out.println(prn);
				System.out.println(fname);
			}
				
		
	    
		}
			 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
					
			}	
		return true;
	    }}

