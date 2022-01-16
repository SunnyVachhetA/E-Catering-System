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
import com.e_catering_system.util.GenerateOTP;
import com.e_catering_system.util.ThreadEmail;

/**
 * Servlet implementation class ForgetPassword
 */
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPassword() {
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
		//doGet(request, response);
		User obj = new User();
		String email = request.getParameter("email");
		
		obj = cservices.getUserData(email);
		if(obj != null) {
		String otp = GenerateOTP.getOTP();
		
		request.setAttribute("OTP", otp);
		
		String composeMail = "WELCOME BACK " + obj.getUser_name() + ", TO OUR E-CATERING SYSTEM\nINPUT THIS OTP FOR VERIFICATION FOR FORGET PASSWORD: " + otp;
		
		try 
		{
			ThreadEmail threadObj2 = new ThreadEmail(email, composeMail); 
			threadObj2.start();
			request.setAttribute("userDetails", obj);
			RequestDispatcher rdis = request.getRequestDispatcher("SetNewPassword.jsp");
			rdis.forward(request, response);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}

	}
	}
}
