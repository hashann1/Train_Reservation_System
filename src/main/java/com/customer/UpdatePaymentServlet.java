package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pid =request.getParameter("pid");
		String name =request.getParameter("name");
		String cardnumber =request.getParameter("cardnumber");
		String cardtype =request.getParameter("cardtype");
		String date =request.getParameter("date");
		String cvv=request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.updatepayment(pid, name, cardnumber, cardtype, date, cvv);
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("paymentaccount.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis =request.getRequestDispatcher("unsuccesspayment.jsp");
			dis.forward(request, response);
		}
	}

}
