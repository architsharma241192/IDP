package controller;

import java.io.*;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import DAO.*;
import models.*;

/**
 * Servlet implementation class LoginProcess
 */
@WebServlet("/LoginProcess")
public class LoginProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginProcess() {
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
		response.setContentType( "text/html" );
		HttpSession mySession = request.getSession();
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		ArrayList<Student> student = StudentDAO.queryAll();
		Boolean flag = true;
		for( Student s: student){
			if (s.getUserName().equals(userName)&&s.getPassword().equals(password)){
				mySession.setAttribute("email", userName);
				mySession.setAttribute("seatNo",null);
				response.sendRedirect("studentLogin.jsp");
				flag = false;
			}
		}
		 if (userName.equalsIgnoreCase("richard") && password.equalsIgnoreCase("davis")){
			mySession.setAttribute("profEmail", userName);
			//mySession.setAttribute("seatNo",null);
			response.sendRedirect("prof.jsp");
			flag = false;
		}
		if(flag){
			response.sendRedirect("Login.jsp");
			}
	
		}
		

}
