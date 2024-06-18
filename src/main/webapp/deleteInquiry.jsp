<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
    background:linear-gradient(to right, #9796f0, #fbc7d4);
    margin: 0%;
    padding: 0%;
 }
table, td, th {
  border: 1px solid;
  padding: 10px;
  /* margin: 50px; */
}

table {
  width: 100%;
  border-collapse: collapse;
}
.updatebutton{
    color:#fff;
    background-color: #bb2eb4;
    padding: 10px 20px 10px 20px;
    border: none;
    border-radius: 5px;
    border-color: #d864d2;
    font-size: 20px;
}
.updatebutton:hover{
  background-color:#d864d2;
  color: white;
}
.deletebutton{
    color:#fff;
    background-color:rgb(0, 128, 255);
    padding: 10px 20px 10px 20px;
    border: none;
    border-radius: 5px;
    border-color:rgb(0, 128, 255);
    font-size: 20px;
}
.deletebutton:hover{
  background-color:rgb(0, 128, 255);
  color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>Delete Inquire</title>
<link rel="stylesheet" type="text/css" href="styles4.css">
</head>
<body>

	<%
	
	String id = request.getParameter("iid");
	String subject = request.getParameter("isub");
	String message = request.getParameter("imsg");
	String date = request.getParameter("date");
	
	
	%>
	
	<header>
        <h1><marquee>QUEEN HOSPITAL</h1></marquee>
        <div class="logo">
            <img src="157-1578780_health-administration-hospital-database-health-administration-hd-png.png" alt="Hospital Logo" class="custom-image">
        </div>
        <nav>
            <ul>
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="Appoinment.jsp">Appointments</a></li>
                <li><a href="#">Payments</a></li>
                <li><a href="createInquiry.jsp">Inquire Now</a></li>
               <li><a href="Login.jsp">Login</a></li>
            </ul>
        </nav>
    
    </header>
    
    <div class="container">
    <div class="contact-box">
    
    <div class="left">
    <img src="https://img.freepik.com/free-photo/young-female-doctor-with-patient-clinic_1303-23186.jpg?size=626&ext=jpg&ga=GA1.1.1413502914.1696636800&semt=ais"  width="450" height="580">
    </div>
    <div class="right">
	
	
	<form action="delete2" method="post">
	<h2>Are you sure delete your own inquire?....</h2>
  
  			Inquiry Id:<br><input type = "text" class="field" name ="inqId" value="<%= id %>" readonly><br>
    
    		Subject:<br><input type = "text" class="field" name ="subject" value="<%= subject%>" readonly><br>
    		Inquire Date:<br><input type = "text" class="field" name ="date" value="<%= date%>" readonly><br>
    		
    		
    		<label for="message">Inquiry Message:</label><br>
    		
			<textarea id="message" class="field" name="message"   rows="4" cols="50" readonly><%= message%>
			</textarea><br>
			
			<input type = "submit" class="deletebutton" name= "submit" value="Delete Inquire"> <br>
			
			
    		
    </form><br><br>
    </div>
    </div>
    </div>

<footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>

</body>
</html>