package com.iph.Online_Voting.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDao {
  private static final String Driver = "com.mysql.cj.jdbc.Driver";
  private static final String URL="jdbc:mysql://localhost/evoting";
  private static final String Username = "root";
  private static final String Password = "root";
  
  private Connection con;
  public Connection getConnection() {
	try {
		Class.forName(Driver);
		con=DriverManager.getConnection(URL,Username,Password);
		if(con!=null) {
			System.out.println("Connection established");
			return con;
		}
		else {
			System.out.println("Connection not established");
		}
		//return false;
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
	  
  }
}
