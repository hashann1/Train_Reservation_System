package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentInsert")
public class PaymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String cardnumber =request.getParameter("cardnumber");
		String cardtype =request.getParameter("cardtype");
		String date = request.getParameter("date");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		isTrue = PaymentDBUtil.insertpayment(name, cardnumber, cardtype, date, cvv);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("successpayment.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccesspayment.jsp");
			dis1.forward(request, response);

			
		}
		
	}

}
