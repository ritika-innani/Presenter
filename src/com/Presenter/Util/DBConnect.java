package com.Presenter.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	public static Connection getConn(){
		Connection con=null;
		try{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/presenter", "root", "1234");
			System.err.println("In get conn "+con);
		}
		catch(SQLException e){
			System.err.println(e);
			e.printStackTrace();
		}
		
		return con;
		
	}
}
