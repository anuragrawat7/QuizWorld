package Usersdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	public static Connection getConnection(){  
		Connection con = null;
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
	}
	catch(Exception ex) {
	System.out.print("Message : " + ex);	
	}
	return con;
	}
	public static void insert(Users u) {
		try {
		Connection con = Dao.getConnection();  
		PreparedStatement stmt = con.prepareStatement("Insert into userinfo(username,Email,Password) values(?,?,?)");
		stmt.setString(1,u.getUsername());
		stmt.setString(2,u.getEmail());
		stmt.setString(3,u.getPassword());
		stmt.executeUpdate();
		con.close();
		}
		catch(Exception ex) {
			System.out.print("Message : " + ex);	
			}
		}
	public static boolean validate(String username,String password){  
		boolean status=false;  
		try{  	
			Connection con = Dao.getConnection(); 
			PreparedStatement ps=con.prepareStatement("Select * from userinfo where username=? AND Password=?;");  
			ps.setString(1,username);  
			ps.setString(2,password); 
			ResultSet rs=ps.executeQuery(); 
			status=rs.next();  
		}
		catch(Exception e){
			System.out.println(e);
		}  
		return status;  
		}
	public static Boolean isUserExist(String username) {
		boolean app = false;
		try{  
		Connection con = Dao.getConnection(); 
		PreparedStatement ps=con.prepareStatement("Select * from userinfo where username=?;");
		ps.setString(1,username);
		ResultSet rs=ps.executeQuery(); 
		app = rs.next();
		}
		catch(Exception e){
			System.out.println(e);
		}  
		return app;
	}
}

