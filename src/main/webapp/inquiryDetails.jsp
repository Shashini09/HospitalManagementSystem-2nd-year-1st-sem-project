<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<title>Inquiry Details</title>
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

<table>

<c:forEach var="inquiry" items="${inquiryList}">
		        
		            <c:set var="id" value="${inquiry.inqID}"/>
		        	<c:set var="sub" value="${inquiry.subject}"/>
		        	<c:set var="msg" value="${inquiry.message}"/>
		        	<c:set var="date" value="${inquiry.date}"/>
		        	
		        	
		        	<c:url value="updateInquiry.jsp" var="inqupdate">
		        	<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		        	<c:param name="date" value="${date}"></c:param>
		        	</c:url>
		        	
		        	<tr>
		        		<td>Inquiry ID:</td>
		        		<td>${inquiry.inqID}</td>
		        	
		        	</tr>
		        	
		        	<tr>
		        		<td>Subject:</td>
		        		<td>${inquiry.subject}</td>
		        	
		        	</tr>
		        	
		        	<tr>
		        		<td>Message:</td>
		        		<td>${inquiry.message}</td>
		        	
		        	</tr>
		        	
		        	<tr>
		        		<td>Date:</td>
		        		<td>${inquiry.date}</td>
		        	
		        	</tr>
		        	
		        	<tr>
		        	<td>
		        	
		        	<a href="${inqupdate}">
		        	
		    		<input type = "button" class="updatebutton" name="update" value="Update my inquiry"></a><br>
		    		
		    		
		    		
		    		<c:url value="deleteInquiry.jsp" var="inqdelete">
		    		
		    		<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		        	<c:param name="date" value="${date }"></c:param>
		    		
		    		</c:url>
		    		
		    		
		    		<a href="${inqdelete}">
		    		
		    		<input type="button" class="deletebutton" name="delete" value="Delete my inquiry"></a>
		    		
		    		
		    		</td>
		    		
		        	</tr>
		        	
		        
		        	
		        	
		        
		        	
		        	
		        	
		         
</c:forEach>
</table>
<footer>
        <p>&copy; 2023 QUEEN HOSPITAL All Rights Reserved.</p>
                <p>123 Hospital Street, City, State ZIP</p>
                <p>Email: info@hospital.com</p>
                <p>Phone: +1 (123) 456-7890</p>
    </footer>
</body>
</html>