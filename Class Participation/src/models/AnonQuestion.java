package models;

import javax.persistence.Id;
public class AnonQuestion {
	@Id public Long Id;
	private String userName;
	private String question;
	public AnonQuestion(String userName, String question) {
		super();
		this.userName = userName;
		this.question = question;
	}
	public AnonQuestion(){
		
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}

}
