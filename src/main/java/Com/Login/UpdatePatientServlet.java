package Com.Login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



;

/**
 * Servlet implementation class UpdatePatientServlet
 */
@WebServlet("/update1")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String Details = request.getParameter("details");
		
		boolean isTrue;
		
		isTrue=PatientDB.updatepatient(id, name, email, number, username, password, Details);
		
		if(isTrue==true)
		{
			List<Patient> patientdetails=PatientDB.getpatientDetails(id);
			request.setAttribute("patientdetails", patientdetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("useraccount2.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Patient> patientdetails=PatientDB.getpatientDetails(id);
			request.setAttribute("patientdetails", patientdetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("useraccount2.jsp");
			dis.forward(request, response);
		
			
			
		}
	
	}

}
