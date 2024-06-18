package Inquiry;

public class inquiry {
	
	private int inqID;
	private String subject;
	private String message;
	private String date;
	
	
	public inquiry(int inqID,String subject, String message,String date) {
		this.inqID = inqID;
		this.subject = subject;
		this.message = message;
		this.date = date;
		
	}
	
	public int getinqID() {
		return inqID;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public String getMessage() {
		return message;
	}
	
	public String getdate() {
		return date;
	}
	

}
