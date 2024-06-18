package Com.Appointment;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class AppointmentDB {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmnt=null;
	private static ResultSet rs=null;
	
	 public static boolean insertappointment(String name,String age, String blood, String date, String time, String doctor,String description) {
	    	
	    	boolean isSuccess = false;
	    	
	    	
	    	
	    	try {
	    		
	             con=DBConnection.getconnection();    		
				  stmnt=con.createStatement();
	    	    String sql = "insert into appointment values (0,'"+name+"','"+age+"','"+blood+"','"+date+"','"+time+"','"+doctor+"','"+description+"')";
	    		int rs = stmnt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 public static List<Appointment> getappointment(String name)  {
		 
	
			ArrayList<Appointment> apt = new ArrayList<>();
			
	try {
	    		
	    		con = DBConnection.getconnection();
	    		stmnt = con.createStatement();
	    		String sql = "select * from appointment where name='"+name+"'";
	    		rs = stmnt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			 int appointmentid=rs.getInt(1);
					  String Name=rs.getString(2);
					  String age=rs.getString(3);
					  String blood=rs.getString(4);
					  String date=rs.getString(5);
					  String time=rs.getString(6);
					  String doctor=rs.getString(7);
					  String description=rs.getString(8);
	    			
	    			
	    			Appointment A = new Appointment(appointmentid,Name,age,blood,date,time,doctor,description);
	    			apt.add(A);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
			
			
			
			
			
			return apt;
		}
	 public static boolean updateappointment(String name, String age, String blood, String date, String time, String doctor, String description) {
	    	
		    
			try {
	    		
	    		con = DBConnection.getconnection();
	    		stmnt = con.createStatement();
	    		String sql = "update appointment set name='" + name + "', age='" + age + "', blood='" + blood + "', date='" + date + "', time='" + time + "', doctor='" + doctor + "', description='" + description + "' where time='" + time+ "'";

	    		int rs = stmnt.executeUpdate(sql);
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    		
	  }
	 public static List<Appointment> getappointmentDetails(String time)  {
		 
		 
			ArrayList<Appointment> apt = new ArrayList<>();
			
	try {
	    		
	    		con = DBConnection.getconnection();
	    		stmnt = con.createStatement();
	    		String sql = "select * from appointment where time='"+time+"'";
	    		rs = stmnt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			 int appointmentid=rs.getInt(1);
					  String name=rs.getString(2);
					  String age=rs.getString(3);
					  String blood=rs.getString(4);
					  String date=rs.getString(5);
					  String Time=rs.getString(6);
					  String doctor=rs.getString(7);
					  String description=rs.getString(8);
	    			
	    			
	    			
	    			Appointment A = new Appointment(appointmentid,name,age,blood,date,time,doctor,description);
	    			apt.add(A);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
			
			
			
			
			
			return apt;
		}
	 public static boolean deletepatient(String time) {
		 	
	
		 	
		 	try {
		 		
		 		con = DBConnection.getconnection();
		 		stmnt = con.createStatement();
		 		String sql = "delete from appointment where time='"+time+"'";
		 		int r = stmnt.executeUpdate(sql);
		 		
		 		if (r > 0) {
		 			isSuccess = true;
		 		}
		 		else {
		 			isSuccess = false;
		 		}
		 		
		 	}
		 	catch (Exception e) {
		 		e.printStackTrace();
		 	}
		 	
		 	return isSuccess;
		 }



}


