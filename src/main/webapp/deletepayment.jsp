<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancel Payment</title>
<style>
body {
  background-image: url("tt.jpg");
}
</style>
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
	<form action = "deletepay" method = "post" >
	<center>
	<table border =1>
	
	 <tr>  
	  <td>Payment ID </td>
	  <td> <input type = "text" name  = "pid" value = "<%=pid %>" readonly></td>
	  
	  </tr>
	 <tr>  
	  <td>Customer Name </td>
	  <td> <input type = "text" name  = "name" value = "<%=name %>" readonly></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Card Number </td>
	  <td> <input type = "text" name = "cardnumber" value = "<%=cardnumber%>" readonly></td>
	  
	  </tr>
	  
	  <tr>
	 <td> Card Type</td>
	 <td> <input type = "text" name  = "cardtype" value = "<%=cardtype%>" readonly></td>
	
	 </tr>
	 
	 <tr>
	  <td>Date </td>
	  <td> <input type = "text" name= "date" value = "<%=date%>" readonly></td>
	  </tr>
	  
	  <tr>
	  <td>CVV  </td>
	  <td><input type = "text" name  = "cvv" value = "<%=cvv%>" readonly></td>
	  
	  </tr>
	  
	  
	  </table>
	  
    <input type = "submit" name = "submit" value = "Cancel Payment Details"><br>
	  
	</form>


</body>
</html>