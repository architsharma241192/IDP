package controller;

import java.io.IOException;
import java.util.*;

import DAO.*;
import models.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bootstrap
 */
@WebServlet("/Bootstrap")
public class Bootstrap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bootstrap() {
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
		ArrayList<Student> student = StudentDAO.queryAll();
		for ( Student s : student){
			StudentDAO.remove(s.Id);
		}
		StudentDAO.add("akash","123",0);
		StudentDAO.add("archit","123",0);
		StudentDAO.add("abhilasha","123",0);
		StudentDAO.add("jenny","123",0);
		StudentDAO.add("jaenetta","123",0);
		StudentDAO.add("jeremy","123",0);
		StudentDAO.add("hung","123",0);
		StudentDAO.add("joyce","123",0);
		StudentDAO.add("brad","123",0);
		StudentDAO.add("tommy","123",0);
		
	}

}
