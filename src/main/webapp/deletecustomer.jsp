<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  background-image: url("train1.jpg");
}
</style>
</head>
<body>


	
	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
	%>
	
	<h1>Customer Account Delete</h1>


	<form action = "delete" method = "post" >
	
	<table>
	<tr>
	   <td>Customer ID </td>
	   <td> <input type = "text" name  = "id" value = "<%= id %>" readonly></td>
	 </tr>
	 
	 <tr>  
	  <td>Customer first Name </td>
	  <td> <input type = "text" name  = "fname" value = "<%= fname %>" readonly></td>
	  </tr>
	  
	  <tr>
	  <td>Customer last Name </td>
	  <td> <input type = "text" name = "lname" value = "<%= lname %>" readonly ></td>
	  </tr>
	  
	  <tr>
	 <td> Customer NIC </td>
	 <td> <input type = "text" name  = "nic" value = "<%= nic %>" readonly ></td>
	 </tr>
	 
	 <tr>
	  <td>Phone number  </td>
	  <td> <input type = "text" name= "phone" value = "<%= phone %>" readonly ></td>
	  </tr>
	  
	  <tr>
	  <td>Email  </td>
	  <td><input type = "text" name  = "email" value = "<%= email %>" readonly ></td>
	  </tr>
	  
	  <tr>
	  <td>User name </td>
	  <td> <input type = "text" name  = "userName" value = "<%= userName %>" readonly ></td>
	  </tr>
	  
	  
	  
	  </table>
    <input type = "submit" name = "submit" value = "Delete My Account"><br>
	  
	</form>

</body>
</html>