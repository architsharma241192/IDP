package DAO;

import java.util.ArrayList;
import com.googlecode.objectify.*;
import models.*;

public class AnonQuestionDAO {
	static {
	    ObjectifyService.register(AnonQuestion.class);
	  }
	public static AnonQuestion add(String userNname, String question ) {
		  Objectify objectify = ObjectifyService.begin();
		  AnonQuestion question1 = new AnonQuestion(userNname, question);
		  objectify.put(question1); // id was auto-generated
		  return question1;
		}
	public static AnonQuestion retrieve(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  return objectify.find(AnonQuestion.class, id);
		}
	public static void modify(AnonQuestion modified) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.put(modified);
		}
	public static void remove(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.delete(AnonQuestion.class, id);
		}
	public static ArrayList<AnonQuestion> queryAll()
	{
		Objectify objectify = ObjectifyService.begin();
		ArrayList<AnonQuestion> ask= new ArrayList<AnonQuestion>();
		Query<AnonQuestion> q = objectify.query(AnonQuestion.class);
		//System.out.println("COUNT: "+q.count());
		for ( AnonQuestion a : q){
			ask.add(a);
		}
		//System.out.println("HERE"+ask.size());
		return ask;
		
	}
	public static AnonQuestion queryName(String name){
		Objectify objectify = ObjectifyService.begin();
		Query<AnonQuestion> q = objectify.query(AnonQuestion.class);
		q.filter("userName =", name);
		for ( AnonQuestion a : q){
			return a;
		}
		return null;

	}

}
