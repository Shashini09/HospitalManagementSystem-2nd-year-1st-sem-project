package Com.Login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Login.PatientDB;

/**
 * Servlet implementation class PatientInsert
 */
@WebServlet("/register")
public class PatientinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
			
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String MDetails = request.getParameter("medical-details");
		
		
		
boolean isTrue;
		
		isTrue = PatientDB.insertpatient(name, email, number, username, password, MDetails);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('You are successfully registered');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		
		
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}