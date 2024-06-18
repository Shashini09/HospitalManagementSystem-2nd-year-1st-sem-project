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
.button {
  border: none;
  color: white;
  width:200px;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  
  font-size: 16px;
  margin: auto;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
    color:#fff;
    background-color: #bb2eb4;
    border-color: #d864d2;
    font-size: 20px;
    align-items:center;
    
  
}

.button1:hover {
  background-color:#d864d2;
  color: white;
}

</style>
<meta charset="ISO-8859-1">
<title>Inquire Now</title>
<link rel="stylesheet" type="text/css" href="styles4.css">

</head>

<body>

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
    <img src="https://img.freepik.com/free-photo/young-female-doctor-with-patient-clinic_1303-23186.jpg?size=626&ext=jpg&ga=GA1.1.1413502914.1696636800&semt=ais"  width="450" height="570">
    </div>
    <div class="right">
    
    <form action="inq" method="post">
    <h2>Do you have any Questions or Complaints/Feedback about our hospital?</h2>
    
    		
    		Inquiry  Subject:<br><input type = "text" class="field" name ="subject" ><br>
    		Inquiry  Date:<br><input type = "text" class="field" name ="date" ><br>
    		
    		<label for="message">Inquiry Message:</label><br>
    		<textarea id="message" class="field" name="message" rows="4" cols="50">Enter text here...</textarea><br>
    	    
    	    <input type = "submit" class="submitbutton" name = "submit" value = "Send Inquiry">
    		
    </form><br><br>
    </div>
    </div>
    </div>
    
    
  
   <a href="inqde" style = "margin:auto;" ><button class="button button1">My Inquires</button></a>
    
    
    
    
    <footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>
    
    
    
    
    
    
    
    
    
     

</body>
</html>