<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Booking Details</title>
<style>
body {
  background-image: url("train3.jpg");
}
</style>
</head>
<body>

<center><h1>Success Booking</h1></center>

<%
		String bid = request.getParameter("bid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String journyfrom = request.getParameter("journyfrom");
		String journyto = request.getParameter("journyto");
		String classtype = request.getParameter("classtype");
		String passengers = request.getParameter("passengers");
		String date = request.getParameter("date");
		
		
	%>


 <form action = "updateb" method = "post" >
	<center>
	<table border =1>
	
	 <tr>  
	  <td>Booking ID </td>
	  <td> <input type = "text" name  = "bid" value = "<%= bid %>" readonly></td>
	  
	  </tr>
	 <tr>  
	  <td>Customer Name </td>
	  <td> <input type = "text" name  = "name" value = "<%= name %>" ></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Email </td>
	  <td> <input type = "text" name = "email" value = "<%= email%>"></td>
	  
	  </tr>
	  
	  <tr>
	 <td> Phone</td>
	 <td> <input type = "text" name  = "phone" value = "<%= phone %>"></td>
	
	 </tr>
	 
	 <tr>
	  <td>Journy From  </td>
	  <td> <input type = "text" name= "journyfrom" value = "<%= journyfrom %>"></td>
	  </tr>
	  
	  <tr>
	  <td>Journy To  </td>
	  <td><input type = "text" name  = "journyto" value = "<%= journyto %>"></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Class Type </td>
	  <td> <input type = "text" name  = "classtype" value = "<%= classtype %>"></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Number Of Passengers </td>
	  <td> <input type = "text" name  = "passengers" value = "<%= passengers %>"></td>
	  
	  </tr>
	  
	  <tr>
	  <td>Date </td>
	  <td> <input type = "text" name  = "date" value = "<%= date %>"></td>
	  
	  </tr>
	  
	  
	  </table>
	  
    <input type = "submit" name = "submit" value = "Update Booking Details"><br>
	  
	</form>



</body>
</html>