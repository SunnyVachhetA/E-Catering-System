package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.bean.Food_items;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class EditProduct
 */
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		int pid = 1;
		String productId = request.getParameter("product_id");
		if(productId != null)
			 pid = Integer.parseInt(productId);
		Food_items obj = new Food_items();
		
		System.out.println("\nProduct ID: " + productId);
		obj = cservices.getProductDetails(pid);
	
		if(obj!=null)
		{
			request.setAttribute("product_details", obj);
			RequestDispatcher rdis = request.getRequestDispatcher("edit_product.jsp");
			rdis.forward(request, response);
		}
		else
		{
			System.out.println("Get PRoduct Op Failed!");
			response.sendRedirect("index.jsp");
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
