package controller;

import java.io.*;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		//System.out.println("HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII");
		//userName="akash";
		String password = request.getParameter("password");
		//password="123";
		if(userName.equalsIgnoreCase("akash") && password.equalsIgnoreCase("123")){
			mySession.setAttribute("email", userName);
			mySession.setAttribute("seatNo",null);
			response.sendRedirect("studentLogin.jsp");
		}
		//pw.println("HI2");
	}

}
