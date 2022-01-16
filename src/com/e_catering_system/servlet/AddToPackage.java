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
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class AddToPackage
 */
public class AddToPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
	
	List<Integer> food_item_list = new ArrayList<Integer>();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddToPackage() {
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
		// response.getWriter().append("Served at: ").append(request.getContextPath())

		String pid2 = request.getParameter("pid2");
		if (pid2 == null) {

			String product_id = request.getParameter("pid");

			System.out.println("\nProduct ID: " + product_id);

			Integer temp = Integer.parseInt(product_id);
			int flag  = 0;
			for(Integer x: food_item_list)
			{
				if(temp == x) {
					System.out.println("Removed ID: " + x);
					food_item_list.remove(x);
					flag = 1;
					break;
				}
			}
			if(flag == 0)
			{
				food_item_list.add(temp);
				System.out.println("\nAdded ID: " + temp);
			}
			
		}
		else if(pid2.equals("9999"))
		{
			
			System.out.println("List: \n");
			for(Integer x : food_item_list)
				System.out.println(x + "\n");
			
			String package_id = request.getParameter("pack_id");
			request.setAttribute("package_id", Integer.parseInt(package_id));
			request.setAttribute("food_item_list", food_item_list);
			RequestDispatcher rdis = request.getRequestDispatcher("showPackageInfo.jsp");
			rdis.forward(request, response);
		}
		/*
		 * System.out.println("\nPAckage ID: " + package_id); List_of_food_items obj =
		 * new List_of_food_items(); obj.setPackage_id(Integer.parseInt(package_id));
		 * obj.setFood_item_id(Integer.parseInt(product_id)); int getResult =
		 * cservices.setListOfFoodItems(obj);
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
