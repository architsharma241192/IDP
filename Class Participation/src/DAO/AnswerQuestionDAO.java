package DAO;

import java.util.*;
import com.googlecode.objectify.*;
import models.*;

public class AnswerQuestionDAO {
	
	static {
		ObjectifyService.register(AnswerQuestion.class);
	}
	
	private Objectify ofy;
	
	public AnswerQuestionDAO(){
        ofy = ObjectifyService.begin();
    }
  
    public void addAnswer(AnswerQuestion answer){
        ofy.put(answer);
    }
    
    public void addAnswers(List<AnswerQuestion> answers){
        ofy.put(answers);
    }
      
    public List<AnswerQuestion> retrieveAnswerList(){
        Query<AnswerQuestion> query = ofy.query(AnswerQuestion.class);        
        return query.list();
    }
      
    public void deleteAnswers(){
        Query<AnswerQuestion> query = ofy.query(AnswerQuestion.class);
        for(AnswerQuestion answer :query) {
            ofy.delete(answer);
        }          
    }
      
    public void deleteAnswer(AnswerQuestion answer){
    	ofy.delete(answer);         
    }
      
}