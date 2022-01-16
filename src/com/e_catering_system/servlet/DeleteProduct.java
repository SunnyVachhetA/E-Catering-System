package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class DeleteProduct
 */
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String pid = request.getParameter("product_id");
		System.out.println("Delete Product ID: " + pid);
		int product_id = Integer.parseInt(pid);
		int reply = cservices.deleteProductDetails(product_id);
		
		if(reply != 0)
		{
			request.setAttribute("message", "Product Removed!");
			RequestDispatcher rdis = request.getRequestDispatcher("restaurant-found.jsp");
			rdis.forward(request, response);
		}
		else
		{
			request.setAttribute("message", "Removal Failed!");
			RequestDispatcher rdis = request.getRequestDispatcher("restaurant-found.jsp");
			rdis.forward(request, response);
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
