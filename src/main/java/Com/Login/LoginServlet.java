package Com.Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Appointment.DBConnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Log1")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
         boolean isTrue;
		
		isTrue = PatientDB.validate(username, password);
		
		if (isTrue == true) {
			List<Patient> patientdetails = PatientDB.getpatient(username);
			request.setAttribute("patientdetails", patientdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount2.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}
		
	
		
		
		
	}
	}


