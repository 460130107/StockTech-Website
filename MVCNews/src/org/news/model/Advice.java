/**
 * 用户建议
 * @author zxy
 * 
 */

package org.news.model;

public class Advice {

	private int adviceId;		//管理员Id
	private String userEmail;	//管理员用户
	private String userName;	//管理员密码
	private String adviceInfo;	//信息	
	
	/**
	 * 初始化函数
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
	 * get set 方法
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
