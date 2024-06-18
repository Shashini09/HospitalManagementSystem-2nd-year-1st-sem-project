package Com.Appointment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DeleteappointmentSerevlet
 */
@WebServlet("/delete")
public class DeleteappointmentSerevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String time=request.getParameter("appointmentTime");
boolean isTrue;
		
		isTrue = AppointmentDB.deletepatient(time);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('You are successfully cancel appointment');");
			out.println("location='Appoinment.jsp'");
			out.println("</script>");
		}
		else {
			
			List<Appointment> appointmentdetails = AppointmentDB.getappointmentDetails(time);
			request.setAttribute("appointmentdetails", appointmentdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
