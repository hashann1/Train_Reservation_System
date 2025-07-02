<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Booking Details</title>
<style>
body {
  background-image: url("train3.jpg");
}
</style>
</head>


<body>
<center><h1>Booking Details</h1></center>
<center>
	<table border =1>
	<c:forEach var = "book" items ="${bookDetails}">
	
	<c:set var ="bid" value = "${ book.bid}"/> 
	<c:set var ="name" value = "${ book.name}"/> 
	<c:set var ="email" value = "${ book.email}"/> 
	<c:set var ="phone" value = "${ book.phone}"/> 
	<c:set var ="journyfrom" value = "${ book.journyfrom}"/> 
	<c:set var ="journyto" value = "${ book.journyto}"/>
	<c:set var ="classtype" value = "${book.classtype}"/> 
	<c:set var ="passengers" value = "${book.passengers}"/> 
	<c:set var ="date" value = "${book.date}"/> 
	 
	
	<tr>	
		<td>Booking ID     :  </td>
		<td>${book.bid }</td>
	</tr><br>
	
	
	<tr>	
		<td>Customer Name :  </td>
		<td>${book.name}</td>
	</tr><br>
	
	<tr>	
		<td>Customer Email  :  </td>
		<td>${book.email}</td>
	</tr><br>
	
	<tr>	
		<td>Customer phone       :  </td>
		<td>${book.phone}</td>
	</tr><br>
		
	
	<tr>	
		<td>Journy From     :  </td>
		<td>${book.journyfrom}</td>
	</tr><br>
	
	
	<tr>	
		<td>Journy To     :  </td>
		<td>${book.journyto }</td>
	</tr><br>
	
	
	<tr>	
		<td>Class Type   :  </td>
		<td>${book.classtype}</td>
	</tr><br>
	
	
	<tr>	
		<td>Number of passengers   :  </td>
		<td>${book.passengers }</td>
	</tr><br>
	
	<tr>	
		<td>Date  :  </td>
		<td>${book.date }</td>
	</tr><br>
	
	</c:forEach>
	</table>

	<c:url value="updatebooking.jsp" var ="bookupdate">
		<c:param name ="bid" value="${bid }"/>
		<c:param name ="name" value="${name}"/>
		<c:param name ="email" value="${email }"/>
		<c:param name ="phone" value="${phone}"/>
		<c:param name ="journyfrom" value="${journyfrom }"/>
		<c:param name ="journyto" value="${journyto }"/>
		<c:param name ="classtype" value="${classtype }"/>
		<c:param name ="passengers" value="${passengers }"/>
		<c:param name ="date" value="${date}"/>
	</c:url> 
	<a href ="${bookupdate  }">
	<input type ="button" name ="update" value ="Update My Booking Details"></input>
	</a>
	
	<c:url value ="deletebooking.jsp" var ="bookdelete">
		<c:param name ="bid" value="${bid }"/>
		<c:param name ="name" value="${name}"/>
		<c:param name ="email" value="${email }"/>
		<c:param name ="phone" value="${phone}"/>
		<c:param name ="journyfrom" value="${journyfrom }"/>
		<c:param name ="journyto" value="${journyto }"/>
		<c:param name ="classtype" value="${classtype }"/>
		<c:param name ="passengers" value="${passengers }"/>
		<c:param name ="date" value="${date}"/>
	
	</c:url>
	<a href="${bookdelete }" target ="_blank">
	<input type ="button" name ="delete" value ="Cancel My Booking"></input>
	</a>
		</center>
	
	
</body>
</html>