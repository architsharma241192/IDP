package DAO;
import java.util.ArrayList;

import com.googlecode.objectify.*;

import models.*;

public class AskQuestionDAO {
	static {
	    ObjectifyService.register(AskQuestion.class);
	  }
	public static AskQuestion add(String userNname, Boolean ask ) {
		  Objectify objectify = ObjectifyService.begin();
		  AskQuestion question = new AskQuestion(userNname, ask);
		  objectify.put(question); // id was auto-generated
		  return question;
		}
	public static AskQuestion retrieve(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  return objectify.find(AskQuestion.class, id);
		}
	public static void modify(AskQuestion modified) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.put(modified);
		}
	public static void remove(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.delete(AskQuestion.class, id);
		}
	public static ArrayList<AskQuestion> queryAll()
	{
		Objectify objectify = ObjectifyService.begin();
		ArrayList<AskQuestion> ask= new ArrayList<AskQuestion>();
		Query<AskQuestion> q = objectify.query(AskQuestion.class);
		//System.out.println("COUNT: "+q.count());
		for ( AskQuestion a : q){
			ask.add(a);
		}
		//System.out.println("HERE"+ask.size());
		return ask;
		
	}
	public static AskQuestion queryName(String name){
		Objectify objectify = ObjectifyService.begin();
		Query<AskQuestion> q = objectify.query(AskQuestion.class);
		q.filter("userName =", name);
		for ( AskQuestion a : q){
			return a;
		}
		return null;

	}
}
