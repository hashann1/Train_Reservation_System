package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bid = request.getParameter("bid");
		boolean isTrue;
		
		isTrue = bookingDBUtill.deleteBooking(bid);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("book.jsp");
			dispatcher.forward(request, response);
			
		}
		else{
			
			List<booking> bookDetails = bookingDBUtill.getBookingDetails(bid);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("showbooking.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
