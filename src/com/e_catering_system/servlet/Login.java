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
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    //User obj2 = new User();
    CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String email = request.getParameter("email").toLowerCase();
		String password = request.getParameter("password");
		User obj2 = new User();
		obj2.setUser_email(email);
		obj2.setUser_password(password);
		User logUser = null;
		logUser = cservices.checkLoginDetails(obj2);
		
		//request.setAttribute("LoggedUser", logUser);
	/*	HttpSession oldSession = request.getSession(false);
		System.out.println("Old Session : "+ oldSession);
		oldSession.invalidate();*/
		String loginWarningMessage;
		int flag = 0;
		if(logUser != null)
		{
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute("LoggedUser", logUser);
			
			System.out.println("NEw Session : "+ httpSession);
			
			flag = 1;
			
			request.setAttribute("message", "Valid");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			//response.sendRedirect("index.jsp");
		}
		else
		{
			//loginWarningMessage = "Invalid Login Details!";
			request.setAttribute("message","Invalid Login Details!");			
			flag = 0;
			RequestDispatcher rd2 = request.getRequestDispatcher("UpLogin.jsp");
			rd2.forward(request, response);
		}
		
	/*	if(flag == 1 || flag == 0)
		{
			if(flag == 1)
				loginWarningMessage = "Logged In Sucessfull!";
			else
				loginWarningMessage = "Logged In UnSucessfull!";
			
			request.setAttribute("loginWarning", loginWarningMessage);
			
			if(flag == 1)
			{
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd2 = request.getRequestDispatcher("UpLogin.jsp");
				rd2.forward(request, response);
			}
		}*/
		//doGet(request, response);
	}

}
