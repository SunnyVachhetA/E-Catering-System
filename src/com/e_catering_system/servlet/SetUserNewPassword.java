package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.e_catering_system.bean.User;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class SetUserNewPassword
 */
public class SetUserNewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetUserNewPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		User obj = new User();
		System.out.println("\nNEw PAssword:!");
		String email = request.getParameter("email");
		obj = cservices.getUserData(email);
		System.out.println("\nSet USer: " + obj);
		String password = (String)request.getParameter("password");
		
		User newObj = cservices.setUserNewPassword(obj, password);
		if(newObj != null) {
			System.out.println("\nPAssword Updated: " + obj);
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute("LoggedUser", obj);
			response.sendRedirect("index.jsp");
		}else
		{
			RequestDispatcher rdis = request.getRequestDispatcher("404.jsp");
			rdis.forward(request, response);
		}
	}
}
