package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginBooking")
public class LoginBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String email =request.getParameter("email");
		
		
		try {
			List<booking> bookDetails = bookingDBUtill.validate(name,email);
			request.setAttribute("bookDetails", bookDetails);
	}catch(Exception e){
		e.printStackTrace();
	}
		
	RequestDispatcher dis1 =request.getRequestDispatcher("bookingaccount.jsp");
	dis1.forward(request, response);
		
		
	}

}
