package Inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/delete2")
public class DeleteInquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("inqId");
		boolean isTrue;
		
		isTrue=inquiryDB.deleteInquiry(id);
		
		if(isTrue==true) {
			RequestDispatcher disp = request.getRequestDispatcher("createInquiry.jsp");
			disp.forward(request,response);
			
		}
		else {
			List<inquiry> inqDetails = inquiryDB.getInquiryDetails(id);
			request.setAttribute("inqDetails", inqDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("inquiryDetails.jsp");
			disp.forward(request,response);
		}
		
	}

}
