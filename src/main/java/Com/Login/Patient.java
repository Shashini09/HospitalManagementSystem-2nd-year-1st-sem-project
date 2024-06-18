package Com.Login;

public class Patient {


	private int patientid;
	private String name;
	private String email;
	private String number;
	private String username;
	private String password;
	private String MDetails;
	
	
public Patient(int patientid, String name, String email, String number, String username, String password,
			 String MDetails) {
	
		this.patientid = patientid;
		this.name = name;
		this.email = email;
		this.number = number;
		this.username = username;
		this.password = password;
        this.MDetails = MDetails;
	}
	public int getPatientid() {
		return patientid;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}

	public String getNumber() {
		return number;
	}

	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	


	public String getMDetails() {
		return MDetails;
	}
	
	
	

}
