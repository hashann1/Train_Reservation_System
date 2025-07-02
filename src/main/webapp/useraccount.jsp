<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Customer Details</title>
<style>
body {
  background-image: url("train1.jpg");
}
</style>
</head>


<body>
<center>
<h1>Customer Details</h1>
	<table border =1>
	<c:forEach var = "cus" items ="${cusDetails}">
	
	<c:set var ="id" value = "${ cus.id}"/> 
	<c:set var ="fname" value = "${ cus.fname}"/> 
	<c:set var ="lname" value = "${ cus.lname}"/> 
	<c:set var ="nic" value = "${ cus.nic}"/> 
	<c:set var ="phone" value = "${ cus.phone}"/> 
	<c:set var ="email" value = "${ cus.email}"/>
	<c:set var ="userName" value = "${cus.userName}"/> 
	<c:set var ="password" value = "${cus.password}"/> 
	 
	
	<tr>	
		<td>Customer ID     :  </td>
		<td>${cus.id }</td>
	</tr><br>
	
	
	<tr>	
		<td>Customer First Name :  </td>
		<td>${cus.fname}</td>
	</tr><br>
	
	<tr>	
		<td>Customer Last Name  :  </td>
		<td>${cus.lname}</td>
	</tr><br>
	
	<tr>	
		<td>Customer NIC        :  </td>
		<td>${cus.nic}</td>
	</tr><br>
		
	
	<tr>	
		<td>Customer Phone      :  </td>
		<td>${cus.phone }</td>
	</tr><br>
	
	
	<tr>	
		<td>Customer Email      :  </td>
		<td>${cus.email }</td>
	</tr><br>
	
	
	<tr>	
		<td>Customer User name   :  </td>
		<td>${cus.userName}</td>
	</tr><br>
	
	
	<tr>	
		<td>Customer Password   :  </td>
		<td>${cus.password }</td>
	</tr><br>
	
	</c:forEach>
	</table>
	
	<c:url value = "updatecustomer.jsp" var ="cusupdate">
		<c:param name ="id" value = "${id }"/>
		<c:param name ="fname" value = "${fname}"/> 
		<c:param name ="lname" value = "${ lname}"/> 
		<c:param name ="nic" value = "${ nic}"/> 
		<c:param name ="phone" value = "${ phone}"/> 
		<c:param name ="email" value = "${email}"/>
		<c:param name ="userName" value = "${userName}"/> 
		<c:param name ="password" value = "${ password}"/> 
	 
	</c:url>
	
	<a href = "${cusupdate }">
	<input type = "button" name = "update" value= "update my data">
	</a>
	
	
	<c:url value = "deletecustomer.jsp" var ="cusdelete">
	
		<c:param name ="id" value = "${id }"/>
		<c:param name ="fname" value = "${fname}"/> 
		<c:param name ="lname" value = "${ lname}"/> 
		<c:param name ="nic" value = "${ nic}"/> 
		<c:param name ="phone" value = "${ phone}"/> 
		<c:param name ="email" value = "${email}"/>
		<c:param name ="userName" value = "${userName}"/> 
		<c:param name ="password" value = "${ password}"/> 
	 
	</c:url>
	
	<a href = "${cusdelete }">
	<input type = "button" name = "delete" value= "Delete my account ">
	</a>
</center>	

</body>
</html>