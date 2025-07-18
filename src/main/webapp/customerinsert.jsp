<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

  <head>
    <meta charset="utf-8">
    <title>Form</title>
    <link href="css/regicss.css" type="text/css" rel="stylesheet">    
  </head>
  
  <body>
    <!-- Body of Form starts -->
    <img class="w-100" src="img/nine.jpg" alt="Image"></img>

  	<div class="container">
      <form action = "insert" method="post" autocomplete="on">
	  
	  <center> 
	  	<h2 style = "color: #ff6600;">Registration Form</h2>
	  </center><br>
       
       
            <!--First name-->
    		<div class="box">
            <label for="firstName" class="fl fontLabel"> First Name: </label>
    			<div class="new iconBox">
            <i class="fa fa-user" aria-hidden="true"></i>
            </div>    		
    		<div class="fr">
    		  <input type="text" name="firstName" placeholder="First Name" class="textBox" autofocus="on" required>
    		</div>    		
    		<div class="clr"></div>
    		</div>
    		

            <!--Second name-->
    		<div class="box">
            <label for="secondName" class="fl fontLabel">Last Name: </label>
    			<div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="text" required name="secondName" placeholder="Last Name" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    		


			<div class="box">
            <label for="secondName" class="fl fontLabel"> NIC: </label>
    			<div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="text" required name="NIC" placeholder="NIC" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>


			

    		<!---Phone No.------>
    		<div class="box">
            <label for="phone" class="fl fontLabel"> Phone No.: </label>
    			<div class="fl iconBox"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="text" required name="phoneNo" maxlength="10" placeholder="Phone No." class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
  

    		<!-----------------------------Email------------------------------->
    		<div class="box">
            <label for="email" class="fl fontLabel"> Email: </label>
    			<div class="fl iconBox"><i class="fa fa-envelope" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="email" required name="email" placeholder="Email" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    	
    		


 			<!--user name-->
    		<div class="box">
            <label for="secondName" class="fl fontLabel"> user Name: </label>
    			<div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="text" required name="username" placeholder="user name" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!--user name-->


    		<!---Password------>
    		<div class="box">
            <label for="password" class="fl fontLabel"> Password </label>
    			<div class="fl iconBox"><i class="fa fa-key" aria-hidden="true"></i></div>
    			<div class="fr">
    					<input type="Password" required name="password" placeholder="Password" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!---Password---->



    	
    		<!--Terms and Conditions------>
    		<div class="box terms">
    				<input type="checkbox" name="Terms" required> &nbsp; I accept the terms and conditions
    		</div>
    		<!--Terms and Conditions------>



    		<!---Submit Button------>
    		<div class="box" style="background: #2d3e3f">
    				<input type="Submit" name="Submit" class="submit" value="SUBMIT">
    		</div>
    		<!---Submit Button----->
      </form>
  </div>
  
  
  <!--Body of Form ends--->
  </body>
</html>