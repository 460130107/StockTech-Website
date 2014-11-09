package org.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.news.model.Admin;
import org.news.model.Advice;
import org.news.utils.DB_UTILS;

public class AdviceDAO {

	private String sql;								//DAO中用到的SQL语句
	private Connection con = null; 					//数据库的连接对象
	private PreparedStatement pstmt = null; 		//数据库的操作
	private ResultSet rs = null ;					//数据库结果集
	
	

	/**
	 * 添加管理员
	 * @param user 传入VO对象
	 * @return 操作是否成功
	 */
	public boolean addAdvice(Advice advice){
		boolean b = false;//操作成功与否
		sql = "insert into advice(adviceId,userEmail,userName,adviceInfo) " +
				"values(?,?,?,?)"; 
		
		con = DB_UTILS.getConnectionbyjdbc();//获取连接
		try {
			pstmt = con.prepareStatement(sql);//实例化操作
			int adviceId = advice.getAdviceId();
			String userEmail = advice.getUserEmail();
			String userName = advice.getUserName();
			String adviceInfo = advice.getAdviceInfo();

			//按照类型设置管理员信息具体的属性值
			pstmt.setInt(1, adviceId);
			pstmt.setString(2, userEmail);				
			pstmt.setString(3, userName);
			pstmt.setString(4, adviceInfo);
			
			int i = pstmt.executeUpdate();							//更新表格
			if (i > 0) {
				b = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB_UTILS.closejdbc(con, pstmt, rs);
		}
		return b;
	}
	
	
	
	/**
	 * 查询所有的管理员信息
	 * @return 管理员集合
	 */
     public List<Advice> getAllAdvice(){
    	 List<Advice> advices = new ArrayList<Advice>();		//定义集合，接收全部数据
    	 sql = "select * from advice order by adviceId";
    	 con = DB_UTILS.getConnectionbyjdbc();
    	 
    	 try {
 			 pstmt = con.prepareStatement(sql);		//实例化查询对象
 			 rs = pstmt.executeQuery();				//取得查询结果
 				
 			Advice advice = null;
 		     while(rs.next()) {//当结果不为空，则取得管理员信息的各个元素
 
 		    	String userEmail= rs.getString("userEmail");
 				String userName = rs.getString("userName");
 				String adviceInfo= rs.getString("adviceInfo");
 				int adviceId = rs.getInt("adviceId");
 				advice = new Advice(adviceId, userEmail ,userName ,adviceInfo);
 				advices.add(advice);
 			}
 			
    	 }catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			DB_UTILS.closejdbc(con, pstmt, rs);
 		}
 		
    	 return advices;
     }
}
