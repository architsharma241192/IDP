package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.mail.Session;
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
		Boolean flag=true;
		session.removeAttribute("errorMsg");
		ArrayList<Student> student = StudentDAO.queryAll();
		int seatNumber=Integer.parseInt(request.getParameter("seatNo"));
		for(Student s : student){
			if(s.getSeatNumber()==seatNumber ){
				session.setAttribute("seatNo",null);
				session.setAttribute("errorMsg", "Error: Seat Number Taken. Contact  "+s.getUserName()+" to change");
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
			String userName = (String) session.getAttribute("email");
			//System.out.println(userName);
			Student s1 = StudentDAO.queryName(userName);
			s1.setSeatNumber(seatNumber);
			StudentDAO.modify(s1);
			session.setAttribute("seatNo","valid");
			response.sendRedirect("studentLogin.jsp");
		}
	}

}
