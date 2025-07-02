<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert payment details</title>
<style>
body {
  background-image: url("tt.jpg");
}
</style>
</head>
	
<body>

	<form action="pay" method ="post">
	Customer Name:<input type = "text" name ="name" placeholder ="Enter customer name"></input><br>
	Card Number :<input type ="text" name ="cardnumber" placeholder="Enter card number"></input><br>
	
	<input type ="submit" value ="Show Payment"></input>
	
	
	</form>
	
</body>
</html>