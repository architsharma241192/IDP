package DAO;
import java.util.ArrayList;

import com.googlecode.objectify.*;

import models.*;

public class StudentDAO {
	static {
	    ObjectifyService.register(Student.class);
	  }
	public static Student add(String userNname, String password, int seatNumber ) {
		  Objectify objectify = ObjectifyService.begin();
		  Student student = new Student(userNname, password,seatNumber);
		  objectify.put(student); // id was auto-generated
		  return student;
		}
	public static Student retrieve(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  return objectify.find(Student.class, id);
		}
	public static void modify(Student modified) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.put(modified);
		}
	public static void remove(Long id) {
		  Objectify objectify = ObjectifyService.begin();
		  objectify.delete(Student.class, id);
		}
	public static ArrayList<Student> queryAll()
	{
		Objectify objectify = ObjectifyService.begin();
		ArrayList<Student> ask= new ArrayList<Student>();
		Query<Student> q = objectify.query(Student.class);
		//System.out.println("COUNT: "+q.count());
		for ( Student a : q){
			ask.add(a);
		}
		//System.out.println("HERE"+ask.size());
		return ask;
		
	}
	public static Student queryName(String name){
		Objectify objectify = ObjectifyService.begin();
		Query<Student> q = objectify.query(Student.class);
		q.filter("userName =", name);
		for ( Student a : q){
			return a;
		}
		return null;

	}
}
