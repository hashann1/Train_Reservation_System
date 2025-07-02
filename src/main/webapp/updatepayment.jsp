<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {
  background-image: url("tt.jpg");
}
</style>
<head>
<meta charset="UTF-8">
<title>Payment Details</title>
</head>
<body>

<%
		String pid = request.getParameter("pid");
		String name = request.getParameter("name");
		String cardnumber = request.getParameter("cardnumber");
		String cardtype = request.getParameter("cardtype");
		String date = request.getParameter("date");
		String cvv = request.getParameter("cvv");
		
		
		
	%>

<center>	<h1>Payment Details</h1> </center>
	<form action = "updatepay" method = "post" >
	<center>
	<table border =1>
	
	 <tr>  
	  <td>Payment ID </td>
	  <td> <input type = "text" name  = "pid" value = "<%=pid %>" readonly></td>
	  
	  </tr>
	 <tr>  
	  <td>Customer Name </td>
	  <td> <input type = "text" name  = "name" value = "<%=name %>" ></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Card Number </td>
	  <td> <input type = "text" name = "cardnumber" value = "<%=cardnumber%>"></td>
	  
	  </tr>
	  
	  <tr>
	 <td> Card Type</td>
	 <td> <input type = "text" name  = "cardtype" value = "<%=cardtype%>"></td>
	
	 </tr>
	 
	 <tr>
	  <td>Date </td>
	  <td> <input type = "text" name= "date" value = "<%=date%>"></td>
	  </tr>
	  
	  <tr>
	  <td>CVV  </td>
	  <td><input type = "text" name  = "cvv" value = "<%=cvv%>"></td>
	  
	  </tr>
	  
	  
	  </table>
	  
    <input type = "submit" name = "submit" value = "Update Payment Details"><br>
	  
	</form>




</body>
</html>