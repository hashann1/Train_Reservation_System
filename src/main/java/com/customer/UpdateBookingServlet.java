package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String bid = request.getParameter("bid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String journyfrom = request.getParameter("journyfrom");
		String journyto = request.getParameter("journyto");
		String classtype = request.getParameter("classtype");
		String passengers = request.getParameter("passengers");
		String date =request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = bookingDBUtill.updatebooking(bid,name, email, phone, journyfrom, journyto, classtype, passengers,date );
		
		if(isTrue == true ) {
			
			List <booking> bookDetails = bookingDBUtill.getBookingDetails(bid);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookingaccount.jsp");
			dis.forward(request, response);
			
		}else {
				
			List <booking> bookDetails = bookingDBUtill.getBookingDetails(bid);
			request.setAttribute("bookDetails", bookDetails);
			    
			RequestDispatcher dis1 = request.getRequestDispatcher("bookingaccount.jsp");
			dis1.forward(request, response);
		}
		
		
	}

}
