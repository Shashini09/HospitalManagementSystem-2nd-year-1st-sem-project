package Com.Appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("patientName");
		String age = request.getParameter("patientAge");
		String blood = request.getParameter("bloodGroup");
		String date = request.getParameter("appointmentDate");
		String time = request.getParameter("appointmentTime");
		String doctor = request.getParameter("doctor");
		String description = request.getParameter("description");
		
		
		boolean isTrue;
		
		isTrue=AppointmentDB.updateappointment(name, age, blood, date, time, doctor, description);
		
		if(isTrue==true)
		{
			
			
			List<Appointment> appointmentdetails=AppointmentDB.getappointmentDetails(time);
			request.setAttribute("appointmentdetails", appointmentdetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Appointment> appointmentdetails=AppointmentDB.getappointmentDetails(time);
			request.setAttribute("appointmentdetails", appointmentdetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
	
			
			
		}

	}

}
