package Inquiry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class inquiryDB {
	private static ResultSet rs; 
	private static boolean isSuccess = false;
	
	
	
	public static boolean insertinquiry(String subject, String message,String date) {
		
		

		
		try{
			
			String sql = "insert into inquiry (inqID,subject,message,date) values (0,'" +subject+"','" +message+"','"+date+"') ";
			int rs = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	
		
		return isSuccess;
		
	}

	

		
	
public static List<inquiry> getinquiry(){
	
		
		ArrayList<inquiry> inq = new ArrayList<>();
		
		try {
		
			String sql = "select * from inquiry";
		    rs = DBConnect.getDBConnection().executeQuery(sql);
			
			while(rs.next()) {
				int inqID = rs.getInt(1);
				String subject = rs.getString(2);
				String message = rs.getString(3);
				String date = rs.getString(4);
				
				
				inquiry inquiry1 = new inquiry(inqID,subject,message,date);
				
				inq.add(inquiry1);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return inq;
		
	}

	public static boolean updateinquiry(String id, String subject, String message,String date ) {
		
		
		
		try {
			
			String sql = "update inquiry set subject='"+subject+"', message='"+message+"',date='"+date+"'  where inqID ='"+id+"' ";
		    int rs = DBConnect.getDBConnection().executeUpdate(sql);
		    
		    if(rs > 0) {
		    	isSuccess = true;
		    }
		    
		    else {
		    	isSuccess = false;
		    }
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return isSuccess; 
		
	}
	
	public static List<inquiry> getInquiryDetails(String inqID){
		int convertedID = Integer.parseInt(inqID);
		
		ArrayList<inquiry> inq = new ArrayList<>();
		
		try {
			
			String sql = "select * from inquiry where inqID='"+convertedID+"' ";
		     rs = DBConnect.getDBConnection().executeQuery(sql);
		    
		    while(rs.next()) {
		    	
		    	int id = rs.getInt(1);
		    	String subject = rs.getString(2);
		    	String message = rs.getString(3);
		    	String date = rs.getString(4);
		    	
		    	inquiry i = new inquiry(id,subject,message,date);
		    	inq.add(i);
		    	
		    	
		    }
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		
		
		return inq;
	}
	
	public static boolean deleteInquiry(String id) {
		int convId=Integer.parseInt(id);
		
		try {
			String sql = "delete from inquiry where inqID='"+convId+"' ";
		    int rs = DBConnect.getDBConnection().executeUpdate(sql);
		    
		    if(rs>0) {
		    	
		    	isSuccess=true;
		    	
		    	
		    }else {
		    	
		    	isSuccess=false;
		    }
			
			
		}
		catch (Exception e){
			e.printStackTrace();
			
			
		}
		
		return isSuccess;
	}
		
	


}


