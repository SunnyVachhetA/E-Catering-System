package com.e_catering_system.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.bean.User;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class UserEditProfile
 */
public class UserEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
	User userDetailsObj = new User();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEditProfile() {
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
		String name = request.getParameter("fullName");
		String contact = request.getParameter("mobileNumber");
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		
		userDetailsObj.setArea_pincode(pincode);
		userDetailsObj.setUser_name(name);
		userDetailsObj.setUser_contact(contact);
		
		//doGet(request, response);
	}

}
