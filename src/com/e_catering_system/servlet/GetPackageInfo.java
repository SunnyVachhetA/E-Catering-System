package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.bean.List_of_food_items;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class GetPackageInfo
 */
public class GetPackageInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPackageInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Hello PAckage!!!");
		int getPackageId = (int)request.getAttribute("pack_id");
		System.out.println("PAckage Id: " + getPackageId);
		List_of_food_items obj = new List_of_food_items();
		
		//int pid = Integer.parseInt(getPackageId);
		//System.out.println("\npid: " + pid);
		obj = cservices.getPackageInfo(getPackageId);
		
		request.setAttribute("package_info", obj);
		
		request.setAttribute("getPackId", getPackageId);
		RequestDispatcher rdis = request.getRequestDispatcher("create_package.jsp");
		rdis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
