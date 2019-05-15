package com.Presenter.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class DatabaseUtil {
	private static DatabaseUtil jdbc;
	private DatabaseUtil(){
		
	}
	
	public static DatabaseUtil getInstance(){
		if(jdbc == null){
			jdbc = new DatabaseUtil();
		}
		return jdbc;
	}
	
	 public int insert(  String tableName, List<Object> dataList, List<Object> columnList )throws SQLException{
		Connection con = null;
		PreparedStatement ps= null;
		int recordCounter = 0;
		int generatedKey = 0;
		
		try{
			con = DBConnect.getConn();
			String argumentList = "(";
			String columnNames = "(";
			for(int dataIndex = 1; dataIndex <= columnList.size(); dataIndex++){
				argumentList += "?,";
				columnNames += columnList.get(dataIndex - 1) + ",";
			}
			columnNames = columnNames.substring(0,columnNames.length()-1);
			argumentList = argumentList.substring(0,argumentList.length()-1);
			columnNames += ")";
			argumentList += ")";
			
			String query="insert into " + tableName + columnNames + "values" + argumentList;
			System.out.print(query);
			ps = con.prepareStatement(query);
			for(int dataIndex = 0; dataIndex < dataList.size(); dataIndex++ ){
				ps.setObject(dataIndex+1 , dataList.get(dataIndex));
			}
			recordCounter=ps.executeUpdate();
			System.out.println(recordCounter +"record inserted" );
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
			    generatedKey = rs.getInt(1);
			}
			System.out.println("Inserted record's ID: " + generatedKey);
		}
		catch(Exception e){
			e.printStackTrace();
		} finally{
			if (ps != null)
				ps.close();
			if(con != null)
				con.close();
		}
		return generatedKey;
	} 
	
	
	public ResultSet fetchAllData(String tableName)throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet res = null;
		try{
			con = DBConnect.getConn();
			String query = "select * from " + tableName;
			ps = con.prepareStatement(query);
			res = ps.executeQuery();
		}
		catch(Exception e){
			e.printStackTrace();
		}/* finally{
			if(ps != null){
				ps.close();
			}
			if(con != null){
				con.close();
			}
		}*/
		return res;
	}
	
	public ResultSet fetchDataByParameter(String tableName, List<Object> dataList, List<Object> columnList )throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet res = null;
		try{
			con = DBConnect.getConn();
			String argumentList = "";
			for(int dataIndex = 1; dataIndex <= columnList.size(); dataIndex++){
				argumentList += columnList.get(dataIndex-1) + "=? && ";
			}
			argumentList = argumentList.substring(0,argumentList.length()-3);
			String query="select * from " + tableName + " where " + argumentList;
			System.out.print(query);
			ps=con.prepareStatement(query);
			for(int Index = 1; Index <= dataList.size(); Index++){
				ps.setObject(Index , dataList.get(Index-1));
			}
			res = ps.executeQuery();
		}
		catch(Exception e){
			e.printStackTrace();
		} /*finally{
			if (ps != null)
				ps.close();
			if(con != null)
				con.close();
		}*/
		return res;
	} 
	
	public void delete(  String tableName, List<Object> dataList, List<Object> columnList )throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		int recordCounter=0;
		try{
			con = DBConnect.getConn();
			String argumentList = "";
			for(int dataIndex = 1; dataIndex <= columnList.size(); dataIndex++){
				argumentList += columnList.get(dataIndex-1) + "=? && ";
			}
			argumentList = argumentList.substring(0,argumentList.length()-3);
			String query="delete from " + tableName + " where " + argumentList;
			System.out.println(query);
			ps=con.prepareStatement(query);
			for(int Index = 1; Index <= dataList.size(); Index++){
				ps.setObject(Index , dataList.get(Index-1));
			}
			recordCounter = ps.executeUpdate();
			System.out.print(recordCounter + "records deleted");
		}
		catch(Exception e){
			e.printStackTrace();
		} finally{
			if (ps != null)
				ps.close();
			if(con != null)
				con.close();
		}
	}
	
	 public int updateSlides(  String tableName, List<Object> dataList, List<Object> columnList )throws SQLException{
			Connection con = null;
			PreparedStatement ps= null;
			int recordCounter = 0;
			int generatedKey = 0;
			
			try{
				con = DBConnect.getConn();
				String argumentList = "(";
				String columnNames = "(";
				for(int dataIndex = 1; dataIndex <= columnList.size(); dataIndex++){
					argumentList += "?,";
					columnNames += columnList.get(dataIndex - 1) + ",";
				}
				columnNames = columnNames.substring(0,columnNames.length()-1);
				argumentList = argumentList.substring(0,argumentList.length()-1);
				columnNames += ")";
				argumentList += ")";
				
				String query="insert into " + tableName + columnNames + "values" + argumentList;
				System.out.print(query);
				ps = con.prepareStatement(query);
				for(int dataIndex = 0; dataIndex < dataList.size(); dataIndex++ ){
					ps.setObject(dataIndex+1 , dataList.get(dataIndex));
				}
				recordCounter=ps.executeUpdate();
				System.out.println(recordCounter +"record inserted" );
				ResultSet rs = ps.getGeneratedKeys();
				if (rs.next()) {
				    generatedKey = rs.getInt(1);
				}
				System.out.println("Inserted record's ID: " + generatedKey);
			}
			catch(Exception e){
				e.printStackTrace();
			} finally{
				if (ps != null)
					ps.close();
				if(con != null)
					con.close();
			}
			return generatedKey;
		}

	public void updateAccount1(String tableName, List<Object> dataList)throws SQLException {
		Connection con = null;
		PreparedStatement ps= null;
		int recordCounter = 0;
		
		
		try{
			con = DBConnect.getConn();
			ps = con.prepareStatement("update user set First_name=?, Email_id=?, Username=?, Password=? where User_id=?");
			for(int dataIndex = 0; dataIndex < dataList.size(); dataIndex++ ){
				ps.setObject(dataIndex+1 , dataList.get(dataIndex));
			}
			recordCounter=ps.executeUpdate();
			System.out.println(recordCounter +"record updated" );
		}
		catch(Exception e){
			e.printStackTrace();
		} finally{
			if (ps != null)
				ps.close();
			if(con != null)
				con.close();
		}
		
	}
	
	public void updateAccount2(String tableName, List<Object> dataList)throws SQLException {
		Connection con = null;
		PreparedStatement ps= null;
		int recordCounter = 0;
		
		
		try{
			con = DBConnect.getConn();
			ps = con.prepareStatement("update user set First_name=?, Email_id=?, Username=? where User_id=?");
			for(int dataIndex = 0; dataIndex < dataList.size(); dataIndex++ ){
				ps.setObject(dataIndex+1 , dataList.get(dataIndex));
			}
			recordCounter=ps.executeUpdate();
			System.out.println(recordCounter +"record updated" );
		}
		catch(Exception e){
			e.printStackTrace();
		} finally{
			if (ps != null)
				ps.close();
			if(con != null)
				con.close();
		}
		
	}
}
