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


	<form action = "update" method = "post" >
	
	<table border =1>
	<tr>
	   <td>Customer ID </td>
	   <td> <input type = "text" name  = "id" value = "<%= id %>" readonly></td>
	 </tr>
	 
	 <tr>  
	  <td>Customer first Name </td>
	  <td> <input type = "text" name  = "fname" value = "<%= fname %>"></td>
	  </tr>
	  
	  <tr>
	  <td>Customer last Name </td>
	  <td> <input type = "text" name = "lname" value = "<%= lname %>"></td>
	  </tr>
	  
	  <tr>
	 <td> Customer NIC </td>
	 <td> <input type = "text" name  = "nic" value = "<%= nic %>"></td>
	 </tr>
	 
	 <tr>
	  <td>Phone number  </td>
	  <td> <input type = "text" name= "phone" value = "<%= phone %>"></td>
	  </tr>
	  
	  <tr>
	  <td>Email  </td>
	  <td><input type = "text" name  = "email" value = "<%= email %>"></td>
	  </tr>
	  
	  <tr>
	  <td>User name </td>
	  <td> <input type = "text" name  = "userName" value = "<%= userName %>"></td>
	  </tr>
	  
	  <tr>
	  <td>Password </td>
	  <td> <input type = "text" name  = "password" value = "<%= password %>"></td>
	  </tr>
	  
	  </table>
    <input type = "submit" name = "submit" value = "Update my data"><br>
	  
	</form>




	 

</body>
</html>