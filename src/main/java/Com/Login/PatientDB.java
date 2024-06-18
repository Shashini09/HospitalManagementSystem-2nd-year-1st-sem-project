package Com.Login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.Appointment.DBConnection;
;


public class PatientDB {
	
		private static boolean isSuccess;
		private static Connection con=null;
		private static Statement stmnt=null;
		private static ResultSet rs=null;
		
		public static boolean validate(String username,String password)
		{
		
			
			
			
			  try {
				 con=DBConnection.getconnection();
				 stmnt=con.createStatement();
				  String sql="select * from patient where username='"+username+"' and password='"+password+"'";
				  rs=stmnt.executeQuery(sql);
				  
				  if(rs.next()) {
					  isSuccess=true;
					  }else {
						  isSuccess=false;
					  }
		          
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			  return isSuccess;
			
			
			
		}
		public static List<Patient>getpatient(String username) {
			
			ArrayList<Patient> patient = new ArrayList<>();
			
			try {
				
				con = DBConnection.getconnection();
				stmnt = con.createStatement();
				String sql = "select * from patient where username='"+username+"'";
				rs = stmnt.executeQuery(sql);
				
				  if(rs.next()) {
					  int patientid=rs.getInt(1);
					  String name=rs.getString(2);
					  String email=rs.getString(3);
					  String number=rs.getString(4);
					  String Uname=rs.getString(5);
					  String passU=rs.getString(6);
					 String MDetails=rs.getString(7);
					  
					  Patient P=new Patient(patientid,name,email,number,Uname,passU,MDetails);
					  
					  patient.add(P);
				}
				
			} catch (Exception e) {
				
			}
			
			return patient;	
		}
		 public static boolean insertpatient(String name, String email, String number, String username, String password,String MDetails) {
		    	
		    	boolean isSuccess = false;
		    	
		    	
		    	
		    	try {
		    		
		             con=DBConnection.getconnection();    		
					  stmnt=con.createStatement();
		    	    String sql = "insert into patient values (0,'"+name+"','"+email+"','"+number+"','"+username+"','"+password+"','"+MDetails+"')";
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
		 public static boolean updatepatient(String patientid, String name, String email, String number, String username, String password,String MDetails) {
		    	
			    
				try {
		    		
		    		con = DBConnection.getconnection();
		    		stmnt = con.createStatement();
		    		String sql = "update patient set name='" + name + "', email='" + email + "', number='" + number + "', username='" + username + "', password='" + password + "', MDetails='" + MDetails + "'"
		    		           + " where patientid='" + patientid + "'";

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
		 public static List<Patient> getpatientDetails(String id)  {
			 
			    int convertedID = Integer.parseInt(id);
				ArrayList<Patient> pat = new ArrayList<>();
				
		try {
		    		
		    		con = DBConnection.getconnection();
		    		stmnt = con.createStatement();
		    		String sql = "select * from patient where patientid='"+convertedID+"'";
		    		rs = stmnt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			  int patientid=rs.getInt(1);
						  String name=rs.getString(2);
						  String email=rs.getString(3);
						  String number=rs.getString(4);
						  String username=rs.getString(5);
						  String password=rs.getString(6);
						  String MDetails=rs.getString(7);
		    			
		    			
		    			Patient P = new Patient(patientid,name,email,number,username,password,MDetails);
		    			pat.add(P);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
				
				
				
				
				
				return pat;
			}
		 public static boolean deletepatient(String id) {
			 	
			 	int convId = Integer.parseInt(id);
			 	
			 	try {
			 		
			 		con = DBConnection.getconnection();
			 		stmnt = con.createStatement();
			 		String sql = "delete from patient where patientid='"+convId+"'";
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
