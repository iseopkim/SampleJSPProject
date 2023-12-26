package com.weather;

import java.sql.*;

public class RegionIdDao {
	
	private Connection getConnection() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/goodmorning";
		String user = "iseop";
		String pw = "Password1!";
		Connection con = DriverManager.getConnection(url, user, pw);
		return con;
	}
	
	public String resolve(String name) {
		String id = "";
		try(Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(String.format("select reg_id from region where reg_name='%s'", name));) {
			rs.next();
			id = rs.getString(1);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}

}
