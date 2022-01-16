package com.e_catering_system.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class GetCategoryList
 */
public class GetCategoryList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategoryList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<String> list_of_category = new ArrayList<String>();
		
		list_of_category = cservices.getCategoryList();
		if(list_of_category != null)
		{
			request.setAttribute("listCategory", list_of_category);
		}
		else
		{
			System.out.println("\nCategory List Is Empty!");
			request.setAttribute("listCategory", null);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
