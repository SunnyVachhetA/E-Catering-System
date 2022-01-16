package com.e_catering_system.servlet;

import com.e_catering_system.bean.User;
import com.e_catering_system.services.*;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	CateringServices cservices = new CateringServicesImpl();
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

			String email = request.getParameter("email");
			int ans = cservices.checkMailStatus(email);
			
			System.out.println("Email Status: " + ans);
			if(ans == 0)
			{
				response.getWriter().append("true");
			}
			else
			{
				response.getWriter().append("false");
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User obj = new User();
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		//String copassword = request.getParameter("copassword");
		
		//String encryptedPassword;
		
		obj.setUser_name(name);
		obj.setUser_email(email);
		obj.setUser_contact(contact);
		obj.setUser_password(password);

		//obj = (User)request.getAttribute("userDetails");
		int ans = cservices.saveUserDetails(obj);
		
		System.out.println("User REg: " + obj);
		//System.out.println(name + "\t" + email);
		
		if(ans == 0)
		{
			System.out.println("\n\nRegistration Unsucessfull!\n");
		}
		else
		{
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute("LoggedUser", obj);
			System.out.println("\n\nRegistration Sucessfull!\n");
			
		//	RequestDispatcher rdis = request.getRequestDispatcher("index.jsp");
		//	rdis.forward(request, response);
			
			response.sendRedirect("index.jsp");
		}
		
		//response.getWriter().append("Registration!");		
		//doGet(request, response);
	}

}
