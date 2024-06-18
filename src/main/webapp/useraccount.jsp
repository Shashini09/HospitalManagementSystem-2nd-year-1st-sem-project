<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <link rel="stylesheet" href="styles1.css">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
        }

        .user-details {
            font-size: 18px;
        }

        .user-details p {
            margin: 10px 0;
        }

        .buttons {
            text-align: center;
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
        }
    </style>
 
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


<c:forEach var="apt" items="${appointmentdetails}">


 <div class="container">
        <h2>Appointment Details</h2>
        <div class="user-details">
            <p>Patient Name: ${apt.name}</p>
            <p>Age: ${apt.age}</p>
            <p>Blood Group: ${apt.blood}</p>
            <p>Appointment Date: ${apt.date}</p>
            <p>Appointment Time: ${apt.time}</p>
            <p>Doctor: ${apt.doctor}</p>
            <p>Description: ${apt.description}</p>
        </div>

  <c:set var="name" value="${apt.name}"/>
	<c:set var="age" value="${apt.age}"/>
	<c:set var="blood" value="${apt.blood}"/>
	<c:set var="date" value="${apt.date}"/>
	<c:set var="time" value="${apt.time}"/>
	<c:set var="doctor" value="${apt.doctor}"/>
	<c:set var="description" value="${apt.description}"/>







</c:forEach>

<c:url value="UpdateAppointment.jsp" var="aptupdate">
      
		<c:param name="name" value="${name}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="blood" value="${blood}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="doctor" value="${doctor}"/>
		<c:param name="description" value="${description}"/>
		
		
</c:url>
 <div class="buttons">
            <a href="${aptupdate }" class="button">Change Details</a>
           
        </div>
    







	<c:url value="Deleteappointment.jsp" var="aptdelete">
		<c:param name="name" value="${name}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="blood" value="${blood}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="doctor" value="${doctor}"/>
		<c:param name="description" value="${description}"/>
	</c:url>

	 <div class="buttons">
            
            <a href="${aptdelete}" class="button" style="background-color: #FF4D4D;">Cancel Appointment</a>
        </div>
	
	   <footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>
	


</body>
</html>