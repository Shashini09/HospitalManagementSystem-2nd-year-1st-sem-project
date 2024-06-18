<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cancel Appointment</title>
    <link rel="stylesheet" href="styles.css">
     <link rel="stylesheet" href="styles1.css">
</head>
<body>
<header>
        <h1><marquee>QUEEN HOSPITAL</h1></marquee>
        <div class="logo">
        <img src="image1.png" alt="Hospital Logo" class="custom-image">
        
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
<%
	
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String blood = request.getParameter("blood");
		String date = request.getParameter("date");
		String time= request.getParameter("time");
		String doctor= request.getParameter("doctor");
		String description= request.getParameter("description");
	%>
	
   <div class="container">
        <h2>Cancel Appointment</h2>
        <form action="delete" method="post">
           
            <div class="form-group">
                <label for="patientName">Patient Name</label>
                <input type="text" id="patientName" name="patientName" value="<%=name %>" required readonly>
            </div>
            <div class="form-group">
                <label for="patientAge">Patient Age</label>
                <input type="number" id="patientAge" name="patientAge" value="<%=age %>" required readonly>
            </div>
            <div class="form-group">
                <label for="bloodGroup">Blood Group</label>
                <input type="text" id="bloodGroup" name="bloodGroup" value="<%=blood%>" required readonly>
            </div>
            <div class="form-group">
                <label for="appointmentDate">Appointment Date</label>
                <input type="date" id="appointmentDate" name="appointmentDate" value="<%=date %>" required readonly>
            </div>
            <div class="form-group">
                <label for="appointmentTime">Appointment Time</label>
                <input type="time" id="appointmentTime" name="appointmentTime" value="<%=time %>" readonly required>
            </div>
               <div class="form-group">
                <label for="doctor">Doctor</label>
                <input type="doctor" id="doctor" name="doctor" value="<%=doctor %>" required readonly>
               
            </div>


            
     
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" rows="4" required readonly><%=description %></textarea>
            </div>
        
            <div class="form-group">
                <button type="submit" class="submit-button">Cancel Appointment</button>
            </div>
           
        </form>
    </div>
  <footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>

</body>
</html>