package dao;
import been.*;
import java.sql.*;
public class RegDao extends DAODB {
	
	public int register( RegBean  rb){
		int i=0;
		PreparedStatement pst;
		try {
			System.out.println("INSERT INTO  REGIS (NAME,address,age )VALUES( "+rb.getName()+","+rb.getAddress()+","+rb.getAge()+")");
			pst = super.dbConnection().prepareStatement("INSERT INTO  REGIS (NAME,address,age )VALUES( '"+rb.getName()+"','"+rb.getAddress()+"',"+rb.getAge()+")");
			pst.executeUpdate();
			i=1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  i;
	}	
	

}
