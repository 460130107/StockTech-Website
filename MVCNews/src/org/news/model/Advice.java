/**
 * �û�����
 * @author zxy
 * 
 */

package org.news.model;

public class Advice {

	private int adviceId;		//����ԱId
	private String userEmail;	//����Ա�û�
	private String userName;	//����Ա����
	private String adviceInfo;	//��Ϣ	
	
	/**
	 * ��ʼ������
	 * @param adviceId
	 * @param userEmail
	 * @param userName
	 * @param adviceInfo
	 */
	public Advice(int adviceId, String userEmail, String userName,
			String adviceInfo) {
		super();
		this.adviceId = adviceId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.adviceInfo = adviceInfo;
	}

	/**
	 * get set ����
	 * 
	 */
	
	public int getAdviceId() {
		return adviceId;
	}

	public void setAdviceId(int adviceId) {
		this.adviceId = adviceId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAdviceInfo() {
		return adviceInfo;
	}

	public void setAdviceInfo(String adviceInfo) {
		this.adviceInfo = adviceInfo;
	}


}
