package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookinginsert")
public class bookinginsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		
		String name = request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String journyfrom =request.getParameter("journyfrom");
		String journyto =request.getParameter("journyto");
		String classtype=request.getParameter("classtype");
		String passengers=request.getParameter("passengers");
		String date =request.getParameter("date");
		
		
				
		boolean isTrue;
		
		isTrue = bookingDBUtill.insertbooking(name, email, phone, journyfrom, journyto, classtype,passengers,date);
		
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("successbooking.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccessbooking.jsp");
			dis2.forward(request, response);
		}
		
	}

}
