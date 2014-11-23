package org.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.struts2.ServletActionContext;
import org.news.model.Image;
import org.news.utils.DB_UTILS;

public class NewsInterfaceDao {
	
	private String sql;								//DAO中用到的SQL语句
	private Connection con = null; 					//数据库的连接对象
	private PreparedStatement pstmt = null; 		//数据库的操作
	private ResultSet rs = null ;					//数据库结果集
	
	
	public String getImage(int newsInfoId){
		
		sql = "select * from image where newsInfoId = ?"; 
		//con = DB_UTILS.getConnection();//获取连接
		con = DB_UTILS.getConnectionbyjdbc();
		/*循环执行SQL语句，对每个文章分别删除*/
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, newsInfoId);
			rs = pstmt.executeQuery();

			String outImage="";
		    while(rs.next()) {//当结果不为空，则取得新闻信息的各个元素
				String imageName = rs.getString("imageName");
				String outPath = ServletActionContext.getServletContext().getRealPath("/");
				outImage=outPath+"images\\"+imageName;
				
			}
		    return outImage;
		
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			//DB_UTILS.close(con, pstmt, rs);
			DB_UTILS.closejdbc(con, pstmt, rs);
		}
	}

}
