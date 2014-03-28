package models;

import javax.persistence.Id;
import java.io.*;
import com.googlecode.objectify.*;


public class User implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id private String username;
	private String name;
	private String password;
	private boolean type; 		// true is professor, false is student
	private int points; 		// class participation points
	private int seatNumber;
	
	public User(String username, String name, String password, boolean type, int points, int seatNumber) {
		this.username = username;
		this.name = name;
		this.password = password;
		this.type = type;
		this.points = points;
		this.seatNumber = seatNumber;
	}
	
	public User() {		
	}
	
	public User add(String username, String name, String password, boolean type, int points, int seatNumber) {
		Objectify objectify = ObjectifyService.begin();
		User user = new User(username, name, password, type, points, seatNumber);
		objectify.put(user);
		return user;
	}
	
	public User retrieve(String username) {
		Objectify objectify = ObjectifyService.begin();
		return objectify.find(User.class, username);		
	}
	
	public String getUsername(){
		return username;
	}
	
	public String getName(){
		return name;
	}
	
	public String getPassword(){
		return password;
	}
	
	public boolean getType(){
		return type;
	}
	
	public int getPoints(){
		return points;
	}
	
	public int getSeatNumber(){
		return seatNumber;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public void setType(boolean type){
		this.type = type;
	}
	
	public void setPoints(int points){
		this.points = points;
	}
	
	public void setSeatNumber(int seatNumber){
		this.seatNumber = seatNumber;
	}
	
}