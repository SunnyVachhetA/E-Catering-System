package com.e_catering_system.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e_catering_system.bean.PackageCust;
import com.e_catering_system.services.CateringServices;
import com.e_catering_system.services.impl.CateringServicesImpl;

/**
 * Servlet implementation class CreatePackageInfo
 */
public class CreatePackageInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CateringServices cservices = new CateringServicesImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreatePackageInfo() {
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
		//doGet(request, response);
		
		String getName = request.getParameter("name").trim().toLowerCase();
		String getType = request.getParameter("packType").trim().toLowerCase();
		String getDescription = request.getParameter("description").toLowerCase().trim();
		String getEvent = request.getParameter("eventName").toLowerCase().trim();
		PackageCust obj = new PackageCust();
		obj.setPackage_name(getName);
		obj.setPackage_type(getType);
		obj.setPackage_description(getDescription);
		obj.setEvent_name(getEvent);
		
		int ans = cservices.savePackageInfo(obj);
		
		if(ans != 0)
		{
			int getPackageId = cservices.getPackId(obj);
			System.out.println("Package ID: " + getPackageId);
			if(getPackageId != 0)
				request.setAttribute("getPackId", getPackageId);
			else
				request.setAttribute("getPackId", 0);
			request.setAttribute("pack_id", getPackageId);
			RequestDispatcher rdis = request.getRequestDispatcher("GetPackageInfo");
			rdis.forward(request, response);
		}
		else
		{
			RequestDispatcher rdis = request.getRequestDispatcher("create_package.jsp");
			rdis.forward(request, response);
		}
	}

}
