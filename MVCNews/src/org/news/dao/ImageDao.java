package org.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.news.model.Image;
import org.news.model.NewsInfo;
import org.news.utils.DB_UTILS;

public class ImageDao {
	private String sql;								//DAO中用到的SQL语句
	private Connection con = null; 					//数据库的连接对象
	private PreparedStatement pstmt = null; 		//数据库的操作
	private ResultSet rs = null ;					//数据库结果集
	
	public List<Image> getAllImages(){
		
		 List<Image> images = new ArrayList<Image>();		//定义集合，接收全部数据
    	 sql = "select * from image ";
    	 //con = DB_UTILS.getConnection();
    	 con = DB_UTILS.getConnectionbyjdbc();
    	 try {
 			 pstmt = con.prepareStatement(sql);		//实例化查询对象
 			 rs = pstmt.executeQuery();				//取得查询结果
 				
 			 Image image = null;
 		     while(rs.next()) {//当结果不为空，则取得新闻信息的各个元素
 		    	 	int imageId = rs.getInt("imageId");
 		    	 	int newsInfoId = rs.getInt("newsInfoId");
 					String imageName = rs.getString("imageName");
 					String imageDescript = rs.getString("imageDescript");
 				
 					image = new Image(imageId,newsInfoId, imageName,imageDescript);
 					images.add(image);
 				}
 		     
 		     return images;
    	 }catch (SQLException e) {
 			e.printStackTrace();
 			return null;
 		} finally {
 			//DB_UTILS.close(con, pstmt, rs);
 			DB_UTILS.closejdbc(con, pstmt, rs);
 		}
	}
	
	
	public boolean addImage(Image image){
		boolean b = false;//操作成功与否
		sql = "insert into image(imageId,newsInfoId,imageName,imageDescript) " +
				"values(?,?,?,?)"; 
		con = DB_UTILS.getConnectionbyjdbc();
		//con = DB_UTILS.getConnection();//获取连接
		try {
			pstmt = con.prepareStatement(sql);		//实例化操作
			int imageId = image.getImageId();
			int newsInfoId = image.getNewsInfoId();
			String imageName = image.getImageName();
			String imageDescript = image.getImageDescript();

			//按照类型设置新闻信息具体的属性值
			pstmt.setInt(1, imageId);
			pstmt.setInt(2, newsInfoId);				
			pstmt.setString(3, imageName);			
			pstmt.setString(4, imageDescript);	
			
			
			int i = pstmt.executeUpdate();							//更新表格
			if (i > 0) {
				b = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB_UTILS.close(con, pstmt, rs);
			DB_UTILS.closejdbc(con, pstmt, rs);
		}
		return b;

	}
	
	public boolean deletImage(String name){
		boolean b = false;//操作成功与否
		sql = "delete from image where imageName = ?"; 
		//con = DB_UTILS.getConnection();//获取连接
		con = DB_UTILS.getConnectionbyjdbc();
		/*循环执行SQL语句，对每个文章分别删除*/
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, name);
			int j = pstmt.executeUpdate();//更新表格
			if (j > 0) {//只要有一个删除成功，就算成功
				b = true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB_UTILS.close(con, pstmt, rs);
			DB_UTILS.closejdbc(con, pstmt, rs);
		}
		return b;
	}
	
}
