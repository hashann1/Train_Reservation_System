package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name =request.getParameter("name");
		String cardnumber =request.getParameter("cardnumber");
		
		try {
		
				List<Payment> payDetails =PaymentDBUtil.validate(name, cardnumber);
				request.setAttribute( "payDetails",payDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("paymentaccount.jsp");
		dis.forward(request, response);
		
	}

}
