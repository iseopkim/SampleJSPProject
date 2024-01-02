package com.goodmorning.todo;

import java.sql.*;
import java.util.*;

public class TodoDAO {
	private Connection getConnection() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/goodmorning";
		String user = "iseop";
		String pw = "Password1!";
		Connection con = DriverManager.getConnection(url, user, pw);
		return con;
	}
	
//	public TodoDTO selectAll(String userId) {
//		TodoDTO todo = new TodoDTO();
//		try(Connection con = getConnection();
//				Statement stmt = con.createStatement();
//				ResultSet rs = stmt.executeQuery(String.format("select * from usertable where user_id='%s'", userId));) {
//			rs.next();
//			todo.setUserId(rs.getString("user_id"));
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		return todo;
//	}
	
//	public boolean updateOne(TodoDTO todo) {
//		boolean res = false;
//		try(Connection con = getConnection();
//				Statement stmt = con.createStatement();) {
//			String sql = String.format("update usertable set user_pw='%s' where user_id='%s'", 
//					todo.getUserPw(), todo.getUserId());
//			res = (stmt.executeUpdate(sql) == 1) ? true : false;
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		return res;
//	}
	
	public boolean insertOne(TodoDTO todo, String userId) {
		boolean res = false;
		int todoId = new Random().nextInt();
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();) {
			String sql = String.format("insert into todotable values(%s, '%s', null, '%s', '%s')", 
					todoId, userId, todo.getTodoContent(), todo.getTodoTitle());
			res = (stmt.executeUpdate(sql) == 1) ? true : false;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
//	public boolean deleteOne(String userId) {
//		boolean res = false;
//		try(Connection con = getConnection();
//				Statement stmt = con.createStatement();) {
//			String sql = String.format("delete from usertable where user_id='%s'", userId);
//			res = (stmt.executeUpdate(sql) == 1) ? true : false;
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		return res;
//	}
}
