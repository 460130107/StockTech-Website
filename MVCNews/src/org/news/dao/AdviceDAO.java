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

	private String sql;								//DAO���õ���SQL���
	private Connection con = null; 					//���ݿ�����Ӷ���
	private PreparedStatement pstmt = null; 		//���ݿ�Ĳ���
	private ResultSet rs = null ;					//���ݿ�����
	
	

	/**
	 * ��ӹ���Ա
	 * @param user ����VO����
	 * @return �����Ƿ�ɹ�
	 */
	public boolean addAdvice(Advice advice){
		boolean b = false;//�����ɹ����
		sql = "insert into advice(adviceId,userEmail,userName,adviceInfo) " +
				"values(?,?,?,?)"; 
		
		con = DB_UTILS.getConnectionbyjdbc();//��ȡ����
		try {
			pstmt = con.prepareStatement(sql);//ʵ��������
			int adviceId = advice.getAdviceId();
			String userEmail = advice.getUserEmail();
			String userName = advice.getUserName();
			String adviceInfo = advice.getAdviceInfo();

			//�����������ù���Ա��Ϣ���������ֵ
			pstmt.setInt(1, adviceId);
			pstmt.setString(2, userEmail);				
			pstmt.setString(3, userName);
			pstmt.setString(4, adviceInfo);
			
			int i = pstmt.executeUpdate();							//���±��
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
	 * ��ѯ���еĹ���Ա��Ϣ
	 * @return ����Ա����
	 */
     public List<Advice> getAllAdvice(){
    	 List<Advice> advices = new ArrayList<Advice>();		//���弯�ϣ�����ȫ������
    	 sql = "select * from advice order by adviceId";
    	 con = DB_UTILS.getConnectionbyjdbc();
    	 
    	 try {
 			 pstmt = con.prepareStatement(sql);		//ʵ������ѯ����
 			 rs = pstmt.executeQuery();				//ȡ�ò�ѯ���
 				
 			Advice advice = null;
 		     while(rs.next()) {//�������Ϊ�գ���ȡ�ù���Ա��Ϣ�ĸ���Ԫ��
 
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
