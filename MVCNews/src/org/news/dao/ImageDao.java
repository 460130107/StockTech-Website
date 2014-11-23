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
	private String sql;								//DAO���õ���SQL���
	private Connection con = null; 					//���ݿ�����Ӷ���
	private PreparedStatement pstmt = null; 		//���ݿ�Ĳ���
	private ResultSet rs = null ;					//���ݿ�����
	
	public List<Image> getAllImages(){
		
		 List<Image> images = new ArrayList<Image>();		//���弯�ϣ�����ȫ������
    	 sql = "select * from image ";
    	 //con = DB_UTILS.getConnection();
    	 con = DB_UTILS.getConnectionbyjdbc();
    	 try {
 			 pstmt = con.prepareStatement(sql);		//ʵ������ѯ����
 			 rs = pstmt.executeQuery();				//ȡ�ò�ѯ���
 				
 			 Image image = null;
 		     while(rs.next()) {//�������Ϊ�գ���ȡ��������Ϣ�ĸ���Ԫ��
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
		boolean b = false;//�����ɹ����
		sql = "insert into image(imageId,newsInfoId,imageName,imageDescript) " +
				"values(?,?,?,?)"; 
		con = DB_UTILS.getConnectionbyjdbc();
		//con = DB_UTILS.getConnection();//��ȡ����
		try {
			pstmt = con.prepareStatement(sql);		//ʵ��������
			int imageId = image.getImageId();
			int newsInfoId = image.getNewsInfoId();
			String imageName = image.getImageName();
			String imageDescript = image.getImageDescript();

			//������������������Ϣ���������ֵ
			pstmt.setInt(1, imageId);
			pstmt.setInt(2, newsInfoId);				
			pstmt.setString(3, imageName);			
			pstmt.setString(4, imageDescript);	
			
			
			int i = pstmt.executeUpdate();							//���±��
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
		boolean b = false;//�����ɹ����
		sql = "delete from image where imageName = ?"; 
		//con = DB_UTILS.getConnection();//��ȡ����
		con = DB_UTILS.getConnectionbyjdbc();
		/*ѭ��ִ��SQL��䣬��ÿ�����·ֱ�ɾ��*/
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, name);
			int j = pstmt.executeUpdate();//���±��
			if (j > 0) {//ֻҪ��һ��ɾ���ɹ�������ɹ�
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
