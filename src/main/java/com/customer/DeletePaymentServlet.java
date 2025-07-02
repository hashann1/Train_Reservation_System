package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pid =request.getParameter("pid");
		boolean isTrue;
		
		isTrue = PaymentDBUtil.deletepayment(pid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher =request.getRequestDispatcher("payment.jsp");
			dispatcher.forward(request, response);
		}else {
			
			List<Payment> payDetails =PaymentDBUtil.getpaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("paymentaccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
