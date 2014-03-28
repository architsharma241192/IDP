package controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.*;
import models.*;

/**
 * Servlet implementation class SeatNumber
 */
@WebServlet("/SeatNumber")
public class SeatNumber extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeatNumber() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		
		UserDAO userDAO = new UserDAO();
		
		Boolean flag=true;
		session.removeAttribute("errorMsg");
		List<User> users = userDAO.retrieveUserList();
		
		int seatNumber=Integer.parseInt(request.getParameter("seatNo"));
		
		for(User user : users){
			if(user.getSeatNumber()==seatNumber ){
				session.setAttribute("seatNo",null);
				session.setAttribute("errorMsg", "Error: Seat Number Taken. Contact  "+user.getUsername()+" to change");
				response.sendRedirect("studentLogin.jsp");
				flag=false;
			}
		}
		
		if(seatNumber < 0){ // check if valid
			session.setAttribute("seatNo",null);
			session.setAttribute("errorMsg", "Error: Invalid Seat Number");
			response.sendRedirect("studentLogin.jsp");
			flag=false;
		}
		
		else if (flag){
			String username = (String) session.getAttribute("username");
			//System.out.println(userName);
			User user1 = userDAO.retrieveUser(username);
			user1.setSeatNumber(seatNumber);
			userDAO.modifyUser(user1);
			session.setAttribute("seatNo","valid");
			response.sendRedirect("studentLogin.jsp");
		}
	}

}
