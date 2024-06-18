<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
 <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="styles2.css">
     <link rel="stylesheet" href="styles1.css">
    <title>Patient Registration</title>
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
                <li><a href="createInquiry.jsp">Inquire</a></li>
                  <li><a href="Login.jsp">Login</a></li>
            </ul>
        </nav>
    
    </header>

<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String Details = request.getParameter("details");
	%>
    <div class="container">
        <h2>Update Profile</h2>
        <form id="registration-form" action="delete1" method="post">
            <div class="form-group">
                <label for="id">Patient ID:</label>
                <input type="text" id="name" name="id"  value="<%=id%>"required readonly>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%=name%>" required readonly>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email"  value="<%=email%>" required readonly>
            </div>
            <div class="form-group">
                <label for="phone">Phone number:</label>
                <input type="tel" id="phone" name="phone"  value="<%=number%>"required readonly>
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username"  value="<%=username%>"required readonly>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password"  value="<%=password%>"required readonly>
            </div>
            <div class="form-group">
                <label for="medical-details">Medical Details:</label>
            <textarea id="medical-details" name="details"><%= Details %></textarea>
            
            </div>
            <div class="form-group">
                <button type="submit">Delete Account</button>
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