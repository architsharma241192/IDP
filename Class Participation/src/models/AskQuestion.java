
package models;

import javax.persistence.Id;
public class AskQuestion {
	@Id public Long Id;
	private String userName;
	private Boolean askedQuestion;
	public AskQuestion(String userName, Boolean askedQuestion){
		this.userName=userName;
		this.askedQuestion=askedQuestion;
	}
	public AskQuestion(){
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Boolean getAskedQuestion() {
		return askedQuestion;
	}
	public void setAskedQuestion(Boolean askedQuestion) {
		this.askedQuestion = askedQuestion;
	}
}
