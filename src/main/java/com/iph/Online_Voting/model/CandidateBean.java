package com.iph.Online_Voting.model;

public class CandidateBean {
	private String first_name,last_name,email,department,password,dateofbirth,prn,gender,photo;
	
	private int voter_id;
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getPrn() {
		return prn;
	}
	public void setPrn(String prn) {
		this.prn = prn;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getVoter_id() {
		return voter_id;
	}
	public void setVoter_id(int voter_id) {
		this.voter_id = voter_id;
	}
	
	
	
	
}

