package org.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.struts2.ServletActionContext;
import org.news.model.Image;
import org.news.utils.DB_UTILS;

public class NewsInterfaceDao {
	
	private String sql;								//DAO���õ���SQL���
	private Connection con = null; 					//���ݿ�����Ӷ���
	private PreparedStatement pstmt = null; 		//���ݿ�Ĳ���
	private ResultSet rs = null ;					//���ݿ�����
	
	
	public String getImage(int newsInfoId){
		
		sql = "select * from image where newsInfoId = ?"; 
		//con = DB_UTILS.getConnection();//��ȡ����
		con = DB_UTILS.getConnectionbyjdbc();
		/*ѭ��ִ��SQL��䣬��ÿ�����·ֱ�ɾ��*/
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, newsInfoId);
			rs = pstmt.executeQuery();

			String outImage="";
		    while(rs.next()) {//�������Ϊ�գ���ȡ��������Ϣ�ĸ���Ԫ��
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
