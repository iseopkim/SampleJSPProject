package com.goodmorning.member;

import java.sql.*;

public class MemberDAO {
	private Connection getConnection() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/goodmorning";
		String user = "iseop";
		String pw = "Password1!";
		Connection con = DriverManager.getConnection(url, user, pw);
		return con;
	}
	
	public MemberDTO selectOne(String userId) {
		MemberDTO member = new MemberDTO();
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(String.format("select * from usertable where user_id='%s'", userId));) {
			rs.next();
			member.setUserId(rs.getString("user_id"));
			member.setUserPw(rs.getString("user_pw"));
		} catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	public boolean updateOne(MemberDTO member) {
		boolean res = false;
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();) {
			String sql = String.format("update usertable set user_pw='%s' where user_id='%s'", 
					member.getUserPw(), member.getUserId());
			res = (stmt.executeUpdate(sql) == 1) ? true : false;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean insertOne(MemberDTO member) {
		boolean res = false;
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();) {
			String sql = String.format("insert into usertable values('%s', '%s')", 
					member.getUserId(), member.getUserPw());
			res = (stmt.executeUpdate(sql) == 1) ? true : false;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean deleteOne(String userId) {
		boolean res = false;
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();) {
			String sql = String.format("delete from usertable where user_id='%s'", userId);
			res = (stmt.executeUpdate(sql) == 1) ? true : false;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean isMember(String userId) {
		boolean res = false;
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(String.format("select * from usertable where user_id='%s'", userId));) {
			res = rs.next();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean isCorrectCred(String userId, String userPw) {
		boolean res = false;
		try(Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(String.format("select * from usertable where user_id='%s' and user_pw='%s'", userId, userPw));) {
			res = rs.next();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
}
