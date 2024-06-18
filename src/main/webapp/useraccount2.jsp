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
            margin: 0;
            padding: 0;
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

        .delete-button {
            background-color: #FF4D4D;
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
<c:forEach var="patient" items="${patientdetails}">
  <div class="container">
        <h2>User Account Details</h2>
        <div class="user-details">
            <p>Patient ID: ${patient.patientid}</p>
            <p>Name: ${patient.name}</p>
            <p>Email: ${patient.email}</p>
            <p>Phone number: ${patient.number}</p>
            <p>Username: ${patient.username}</p>
            <p>Password: ${patient.password}</p>
            <p>Medical Details: ${patient.MDetails}</p>
        </div>

  <c:set var="id" value="${patient.patientid}"/>
	<c:set var="name" value="${patient.name}"/>
	<c:set var="email" value="${patient.email}"/>
	<c:set var="number" value="${patient.number}"/>
	<c:set var="username" value="${patient.username}"/>
	<c:set var="password" value="${patient.password}"/>
	<c:set var="MDetails" value="${patient.MDetails}"/>

</c:forEach>

<c:url value="UpdatePatient.jsp" var="patupdate">
         <c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="number" value="${number}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="MDetails" value="${MDetails}"/>

</c:url>
<div class="buttons">
            <a href="${patupdate }" class="button">Update My Data</a>
           
        </div>

<c:url value="DeletePatient.jsp" var="patdelete">
         <c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="number" value="${number}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="details" value="${MDetails}"/>

</c:url>
<div class="buttons">
       
            <a href="${patdelete }" class="button delete-button">Delete My Account</a>
        </div>
   <footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>
</body>
</html>