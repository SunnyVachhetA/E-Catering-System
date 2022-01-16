package com.e_catering_system.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.e_catering_system.bean.Food_items;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class AddProduct
 */
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		String productName = request.getParameter("proName");
		System.out.println("Name: " + productName);
		String description = "";
		try {
			String priceval = request.getParameter("price");
			String getCategory = request.getParameter("category");
			String getType = request.getParameter("ftype").trim().toLowerCase();
			String getqty = request.getParameter("qty");
			int categoryId = cservices.getCategoryId(getCategory);
			System.out.println("PRice: " + priceval);
			Part part = request.getPart("productImage");

			Food_items obj = new Food_items();
			obj.setFood_item_name(productName.trim());
			obj.setFood_item_price(Integer.parseInt(priceval));
			obj.setFood_qty(Integer.parseInt(getqty));
			obj.setFoodType(getType);
			if(categoryId != 0)
				obj.setFood_item_type_id(categoryId);
			
			try {
				description = request.getParameter("description");
				if(description == null)
				{
					description = "Not Specifics";
				}
				obj.setDescription(description);
			} catch (Exception e) {
				System.out.println("Description Error! " + description);
			}
			if (part != null) {
				System.out.println("Part Accepted!");
				obj.setFoodItemImage(part.getInputStream());
			}
			int ans = cservices.saveProductDetails(obj);
			
			if(ans == 0)
				System.out.println("\nProduct Upload Failed!!\n");
			else {
				System.out.println("\nProduct Upload Succeed!!\n");
				response.sendRedirect("index.jsp");
			}
			} catch (Exception e) {
			System.out.println("Error MEssage: " + e.getMessage());
		}
	}

}
