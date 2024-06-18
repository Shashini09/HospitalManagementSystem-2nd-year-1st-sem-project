<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
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
    <div class="container">
        <h2>Book an Appointment</h2>
        <form action="insert1" method="post">
            <div class="form-group">
                <label for="patientName">Patient Name</label>
                <input type="text" id="patientName" name="patientName" required>
            </div>
            <div class="form-group">
                <label for="patientAge">Patient Age</label>
                <input type="number" id="patientAge" name="patientAge" required>
            </div>
            <div class="form-group">
                <label for="bloodGroup">Blood Group</label>
                <input type="text" id="bloodGroup" name="bloodGroup" required>
            </div>
            <div class="form-group">
                <label for="appointmentDate">Appointment Date</label>
                <input type="date" id="appointmentDate" name="appointmentDate" required>
            </div>
            <div class="form-group">
                <label for="appointmentTime">Appointment Time</label>
                <input type="time" id="appointmentTime" name="appointmentTime" required>
            </div>
            <div class="form-group">
                <label for="doctor">Doctor</label>
                <select id="doctor" name="doctor" required>
                    <option value="Dr. Smith">Dr. Smith</option>
                    <option value="Dr. Johnson">Dr. Johnson</option>
                    <option value="Dr. Lee">Dr. Lee</option>
                </select>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="submit-button">Request an appointment</button>
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