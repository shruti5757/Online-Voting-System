package com.iph.Online_Voting.model;

public class CandidateVoteBean {
    private String firstname;
    private String lastname;
   
	private int voter_id;
	private int total_votes;

    // Constructor
    public CandidateVoteBean(String firstname, String lastname, int voter_id, int total_votes) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.voter_id = voter_id;
        this.total_votes = total_votes;
    }

    // Getters and Setters
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

	public int getVoter_id() {
		return voter_id;
	}

	public void setVoter_id(int voter_id) {
		this.voter_id = voter_id;
	}

	public int getTotal_votes() {
		return total_votes;
	}

	public void setTotal_votes(int total_votes) {
		this.total_votes = total_votes;
	}
	

    
}
