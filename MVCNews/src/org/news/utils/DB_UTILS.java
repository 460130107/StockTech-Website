/*
 * 系统名称：新闻发布系统
 * 
 * 类名：DB_UTILS
 * 
 * 创建日期：2014-06-18
 */
package org.news.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.news.utils.Pools;

/**
 * 用于连接数据库的专有类
 * @author tt
 * @version 14.6.18
 */
public class DB_UTILS {
	
	/**
	 * 从连接池中获取数据库连接
	 * @return
	 */
	public static Connection getConnection(){
		
		return Pools.getPoolsConnectionSingle();
	}
	
	/**
	 * 将数据库连接放回到池中去
	 * @param connection
	 * @param pstmt
	 * @param rs
	 */
	public synchronized static void close(Connection connection, PreparedStatement pstmt, ResultSet rs) {

		try {
			if (rs != null){
				rs.close();
			}
			if (pstmt != null){
				pstmt.close();
			}
			Pools.freeConnection(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 从连接池中获取数据库连接
	 * @return
	 */
	public static Connection getConnectionbyjdbc(){
					
		String dbDriver = "com.mysql.jdbc.Driver";   
		String dbUrl = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_stocktech";   
		String dbUser = "lyjxmwm422";           
		String dbPassword = "5xmmyxk4h5m1xwh2hy2313wz02jimj04myi3353x";  
			
		/*	
		String dbDriver = "com.mysql.jdbc.Driver";   // 与本地设置相同
		String dbUrl = "jdbc:mysql://localhost:3306/news_all?useUnicode=true&characterEncoding=UTF-8";   
		String dbUser = "root";           // 为[应用信息]->[汇总信息]->[key]中的access key
		String dbPassword = "root";    // 为[应用信息]->[汇总信息]->[key]中的secret key
*/
		try{
			
			Class.forName(dbDriver);
			return DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 将数据库连接放回到池中去
	 * @param connection
	 * @param pstmt
	 * @param rs
	 */
	public synchronized static void closejdbc(Connection connection, PreparedStatement pstmt, ResultSet rs) {

		try {
			if (rs != null){
				rs.close();
			}
			if (pstmt != null){
				pstmt.close();
			}
			if (connection != null){
				connection.close();
			}
			//Pools.freeConnection(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
