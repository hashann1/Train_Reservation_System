<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert booking </title>
<style>
body {
  background-image: url("tt.jpg");
}
</style>
</head>
<body>
<form action ="show" method ="post">

Customer Name :<input type="text" name="name" placeholder="Enter your name"></input><br>
Customer Email :<input type="email" name="email" placeholder="Enter your email"></input><br>

<input type ="submit" name ="submit"  value ="Show Booking"></input><br>

<a href ="payment.jsp"  target="_blank">Payment</a>



</form>

</body>
</html>