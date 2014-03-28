package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.*;
import models.*;

/**
 * Servlet implementation class ProcessAnswerServlet
 */
@WebServlet("/ProcessAnswerServlet")

public class ProcessAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		
		UserDAO userDAO = new UserDAO();		
		User user = userDAO.retrieveUser(username);
		
		user.setPoints(user.getPoints()+1);
		userDAO.modifyUser(user);
			
		AnswerQuestionDAO answerQuestionDAO = new AnswerQuestionDAO();
		answerQuestionDAO.deleteAnswer(new AnswerQuestion(username));
		
		response.sendRedirect("prof.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

}
