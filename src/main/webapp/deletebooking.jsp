<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
  background-image: url("train3.jpg");
}
</style>
</head>
<body>

<%
		String bid = request.getParameter("bid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String journyfrom = request.getParameter("journyfrom");
		String journyto = request.getParameter("journyto");
		String classtype = request.getParameter("classtype");
		String passengers = request.getParameter("passengers");
		
		
	%>
	<h1>Cancel Booking</h1>
	
	<form action = "deleteb" method = "post" >
	
	<table>
	
	<tr>	
		<td>Booking Id :  </td>
		<td> <input type = "text" name  = "bid" value = "<%= bid %>" readonly></td>
		
	 </tr> 
	
	<tr>	
		<td>Customer Name :  </td>
		<td> <input type = "text" name  = "name" value = "<%= name %>" readonly></td>
		
	 </tr> 
	
	<tr>	
		<td>Email  :  </td>
		 <td> <input type = "text" name = "email" value = "<%= email%>" readonly></td>
		
	</tr>
	
	<tr>	
		<td>Phone No      :  </td>
		<td> <input type = "text" name  = "phone" value = "<%= phone %>" readonly></td>
		
	</tr>
		
	
	<tr>	
		<td>Journy From     :  </td>
		<td> <input type = "text" name= "journyfrom" value = "<%= journyfrom %>" readonly></td>
		
		</tr>
	
	
	<tr>	
		<td>Journy To      :  </td>
		<td><input type = "text" name  = "journyto" value = "<%= journyto %>" readonly></td>
		
	</tr>
	
	
	<tr>	
		<td>Class Type   :  </td>
		<td> <input type = "text" name  = "classtype" value = "<%= classtype %>" readonly></td>
		
	</tr>
	
	
	<tr>	
		<td>Passengers  :  </td>
		<td> <input type = "text" name  = "passengers" value = "<%= passengers %>" readonly></td>
		
	</tr>

</table>
<input type = "submit" name = "submit" value = "Delete My booking "><br>
</form>

</body>
</html>