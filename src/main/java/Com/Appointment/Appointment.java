package Com.Appointment;

public class Appointment {
	int appointmentid;
	private String name;
	private String age;
	private String blood;
	private String date;
	private String time;
	private String doctor;
	private String description;
	
	public Appointment(int appointmentid, String name, String age, String blood, String date, String time, String doctor,
			String description) {
	
		this.appointmentid = appointmentid;
		this.name = name;
		this.age = age;
		this.blood = blood;
		this.date = date;
		this.time = time;
		this.doctor = doctor;
		this.description = description;
	}

	public int getAppoinmenid() {
		return appointmentid;
	}

	

	public String getName() {
		return name;
	}

	

	public String getAge() {
		return age;
	}

	
	public String getBlood() {
		return blood;
	}

	

	public String getDate() {
		return date;
	}



	public String getTime() {
		return time;
	}



	public String getDoctor() {
		return doctor;
	}



	public String getDescription() {
		return description;
	}
	
	 public void setAppointmentid(int appointmentid) {
	        this.appointmentid = appointmentid;
	    }


	

}
