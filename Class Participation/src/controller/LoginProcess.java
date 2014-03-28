package controller;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

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
		HttpSession session = request.getSession(false);
		
		UserDAO userDAO = new UserDAO();
		response.setContentType( "text/html" );
		HttpSession mySession = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		List<User> users = userDAO.retrieveUserList();
		for(User user: users){
			if (user.getUsername().equals(username) && user.getPassword().equals(password)){
				mySession.setAttribute("username", username);
				mySession.setAttribute("seatNo",null);
				if (user.getType()) {
					session.setAttribute("username",username);
					response.sendRedirect("prof.jsp");
				}
				else {
					session.setAttribute("username",username);
					response.sendRedirect("studentLogin.jsp");
				}
			}
		}
	}
}
