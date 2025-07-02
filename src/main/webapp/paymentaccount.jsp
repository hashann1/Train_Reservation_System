<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show Payment details</title>
<style>
body {
  background-image: url("tt.jpg");
}
</style>
</head>
<body>

	<center>	<h1>Payment Details</h1></center>
	<center>
			<table border =1>
			
			<c:forEach var ="pay" items="${payDetails}">
			<c:set var ="pid" value ="${pay.pid }"/>
			<c:set var ="name" value ="${pay.name }"/>
			<c:set var ="cardnumber" value ="${pay.cardnumber }"/>
			<c:set var ="cardtype" value ="${pay.cardtype }"/>
			<c:set var ="date" value ="${pay.date }"/>		
			<c:set var ="cvv" value ="${pay.cvv }"/>
			
			
			
			<tr>	
				<td>Payment ID     :  </td>
				<td>${pay.pid }</td>
			</tr><br>
			
			<tr>	
				<td>Customer Name    :  </td>
				<td>${pay.name }</td>
			</tr><br>
			
			<tr>	
				<td>Card Number    :  </td>
				<td>${pay.cardnumber }</td>
			</tr><br>
			
			<tr>	
				<td>Card Type    :  </td>
				<td>${pay.cardtype }</td>
			</tr><br>
			
			<tr>	
				<td>Date     :  </td>
				<td>${pay.date }</td>
			</tr><br>
			
			<tr>	
				<td>CVV    :  </td>
				<td>${pay.cvv }</td>
			</tr><br>
				
			</c:forEach>
			</table>
			
			<c:url value ="updatepayment.jsp" var ="payupdate">
			
			<c:param name ="pid" value ="${pid }"/>
			<c:param name ="name" value ="${name}"/>
			<c:param name ="cardnumber" value ="${cardnumber}"/>
			<c:param name ="cardtype" value ="${cardtype}"/>
			<c:param name ="date" value ="${date }"/>
			<c:param name ="cvv" value ="${cvv}"/>
				
			</c:url>
			<a href="${ payupdate}" target="_blank">
			<input type ="button" name ="update" value ="Update My Payment"></input>
			</a>
			
			<c:url value ="deletepayment.jsp" var ="paymentdelete">
			
			<c:param name ="pid" value ="${pid }"/>
			<c:param name ="name" value ="${name}"/>
			<c:param name ="cardnumber" value ="${cardnumber}"/>
			<c:param name ="cardtype" value ="${cardtype}"/>
			<c:param name ="date" value ="${date }"/>
			<c:param name ="cvv" value ="${cvv}"/>
				
			</c:url>
			
			<a href="${ paymentdelete}" target = "_blank">
			<input type ="button" name ="delete" value ="Cancel My Payment"></input>
			</a>
			</center>
</body>
</html>