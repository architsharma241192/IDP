package DAO;

import java.util.*;
import com.googlecode.objectify.*;
import models.*;

public class UserDAO {
	
	static {
		ObjectifyService.register(User.class);
	}
	
	private Objectify ofy;
	
	public UserDAO(){
        ofy = ObjectifyService.begin();
    }
  
    public void addMember(User user){
        ofy.put(user);
    }
    
    public void addMembers(List<User> users){
        ofy.put(users);
    }
      
    public List<User> retrieveUserList(){
        Query<User> query = ofy.query(User.class);        
        return query.list();
    }
      
    public void modifyUser(User user){
        ofy.put(user);
    }
      
    public void deleteUsers(){
        Query<User> query = ofy.query(User.class);
        for(User u:query) {
            ofy.delete(u);
        }          
    }
      
    public User retrieveUser(String username){
    	Query<User> query = ofy.query(User.class);              
        for(User user:query) {
        	if(user.getUsername().equals(username)) {
        		return user;
        	}
        }
        return null;
    }
    
    public User retrieveUser(int seatNumber){
    	Query<User> query = ofy.query(User.class);              
        for(User user:query) {
        	if(user.getSeatNumber()==seatNumber) {
        		return user;
        	}
        }
        return null;
    }
      
}