package dao;
import java.sql.*;
public class DAODB {
	
	public Connection   dbConnection() {
		Connection con=null;
		if(con==null){
			con=dbcon();
			
		}
		
		return con;
	}
	
	
	private Connection  dbcon(){
		Connection con=null;
		try{  
				Class.forName("com.mysql.jdbc.Driver");  
				try{
						 con=DriverManager.getConnection("jdbc:mysql://localhost/d","root","ROOT");    
				}
				catch (Exception e) {
					System.out.print(e+"connection error");
				}						
					
		}catch(Exception e){
			System.out.println(e);
		}  
		return con;
	} 
	/*public static void main(String arg[]) {
		// TODO Auto-generated method stub
		
		DAODB d=new DAODB();
		d.dbConnection();
		System.out.print(d.dbConnection());

	}*/
	    
}
