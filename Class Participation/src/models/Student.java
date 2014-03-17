package models;
import javax.persistence.Id;
public class Student {
	
	@Id public Long Id;
	private String userName;
	private String password;
	private int seatNumber;
	private int points=0;
	
	
	public Student(String userName, String password, int seatNumber) {
		super();
		this.userName = userName;
		this.password = password;
		this.seatNumber = seatNumber;
	}
	
	public Student(){
		
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(int seatNumber) {
		this.seatNumber = seatNumber;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}
	

}
