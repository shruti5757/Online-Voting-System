package com.iph.Online_Voting.model;

public class StudentBean {
    private String first_name;
    private String last_name;
    private String date_of_birth;
    private String email;
    private String password;
    private String confirm_password;
    private String student_mobile_no;
    private String parents_mobile_no;
    private String address;
    private String standard;
    private String gender;

    // Constructors, getters, and setters
    public StudentBean() {
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm_password() {
        return confirm_password;
    }

    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
    }

    public String getStudent_mobile_no() {
        return student_mobile_no;
    }

    public void setStudent_mobile_no(String student_mobile_no) {
        this.student_mobile_no = student_mobile_no;
    }

    public String getParents_mobile_no() {
        return parents_mobile_no;
    }

    public void setParents_mobile_no(String parents_mobile_no) {
        this.parents_mobile_no = parents_mobile_no;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
