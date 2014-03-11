package controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		session.removeAttribute("errorMsg");
		int seatNumber=Integer.parseInt(request.getParameter("seatNo"));
		if(seatNumber>0){ // check if valid
			session.setAttribute("seatNo","valid");
			response.sendRedirect("studentLogin.jsp");
		}
		else{
			session.setAttribute("seatNo",null);
			session.setAttribute("errorMsg", "Error: Invalid Seat Number");
			response.sendRedirect("studentLogin.jsp");
		}
	}

}