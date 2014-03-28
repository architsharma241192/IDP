package models;

import javax.persistence.Id;

public class AnswerQuestion {
	
	@Id private String username;
	
	public AnswerQuestion(String username){
		this.username=username;
	}
	
	public AnswerQuestion(){
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
}
