package com.iph.Online_Voting.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.iph.Online_Voting.model.StudentBean;

public class RegisterDao {
    private Connection con;
    private PreparedStatement preparedStatement;

    public boolean studentRegister(StudentBean stud) {
        boolean registered = false;
        try {
            ConnectionDao connectionDao = new ConnectionDao();
            con = connectionDao.getConnection();
            String query = "INSERT INTO voter_registration (first_name, last_name, date_of_birth, email, password, student_mobile_no, parents_mobile_no, address, standard, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, stud.getFirst_name());
            preparedStatement.setString(2, stud.getLast_name());
            preparedStatement.setString(3, stud.getDate_of_birth());
            preparedStatement.setString(4, stud.getEmail());
            preparedStatement.setString(5, stud.getPassword());
            preparedStatement.setString(6, stud.getStudent_mobile_no());
            preparedStatement.setString(7, stud.getParents_mobile_no());
            preparedStatement.setString(8, stud.getAddress());
            preparedStatement.setString(9, stud.getStandard());
            preparedStatement.setString(10, stud.getGender());

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                registered = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return registered;
    }
}
