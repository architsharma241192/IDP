package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import DAO.*;
import models.*;

/**
 * Servlet implementation class AnonServlet
 */
@WebServlet("/AnonServlet")
public class AnonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnonServlet() {
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
		String email=request.getParameter("name");
		Boolean addPoint=Boolean.parseBoolean(request.getParameter("points"));
		if(addPoint){
			AnonQuestion ask = AnonQuestionDAO.queryName(email);
			Long Id = ask.Id; 
			AnonQuestionDAO.remove(Id);
			Student s1 = StudentDAO.queryName(email);
			s1.setPoints(s1.getPoints()+1);
			StudentDAO.modify(s1);
			//add student points
			//delete question
		}
		else{
			AnonQuestion ask = AnonQuestionDAO.queryName(email);
			Long Id = ask.Id; 
			AnonQuestionDAO.remove(Id);
		}
	}

}
