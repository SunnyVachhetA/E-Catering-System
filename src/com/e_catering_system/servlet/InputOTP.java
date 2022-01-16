package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.bean.User;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;
import com.e_catering_system.util.GenerateOTP;
import com.e_catering_system.util.SendEmail;
import com.e_catering_system.util.ThreadEmail;

/**
 * Servlet implementation class InputOTP
 */
public class InputOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputOTP() {
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
		User obj = new User();
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email").toLowerCase();
		String password = request.getParameter("password");
		String copassword = request.getParameter("copassword");
		
		//String encryptedPassword;
		
		obj.setUser_name(name);
		obj.setUser_email(email);
		obj.setUser_contact(contact);
		obj.setUser_password(password);

		
		
		String otp = GenerateOTP.getOTP();
		
		request.setAttribute("OTP", otp);
		
		String composeMail = "WELCOME " + obj.getUser_name() + ", TO OUR E-CATERING SYSTEM\nYour REGISTRATION OTP IS: " + otp;
		
		
		try {
			ThreadEmail threadObj = new ThreadEmail(email, composeMail); 
			threadObj.start();
			request.setAttribute("userDetails", obj);
		
			RequestDispatcher rdis = request.getRequestDispatcher("inputOtpPage.jsp");
			rdis.forward(request, response);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}

	}
	
}
