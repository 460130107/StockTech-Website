/*
 * ϵͳ���ƣ����ŷ���ϵͳ
 * 
 * ������UserRegisterAction
 * 
 * �������ڣ�2014-08-21
 */
package org.news.action;

import java.util.List;

import org.news.model.Users;
import org.news.service.UserService;
import org.news.utils.MD5Code;

import com.opensymphony.xwork2.ActionSupport;

/**
 * ���ڻ�Աע���Action
 * 
 * @author tt
 * @version 14.8.18
 */
public class UserRegisterAction extends ActionSupport {

	private static final long serialVersionUID = -4247316758713012823L;
	private UserService userService;

	/**
	 * @param userService the userService to set
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	String mid;//�˺�
	String password;//����
	String info;//��ע
	String realName;//��ʵ����
	String sex;//�Ա�
	String email;//�����ʼ�
	String phone;//�绰����
	String idNum;//����֤��
	
	String conf;//��֤����
	
	int result;//���	
	String user;//�û��˺�
	
	/**
	 * @return the conf
	 */
	public String getConf() {
		return conf;
	}

	/**
	 * @param conf the conf to set
	 */
	public void setConf(String conf) {
		this.conf = conf;
	}

	/**
	 * @return the result
	 */
	public int getResult() {
		return result;
	}

	/**
	 * @param result the result to set
	 */
	public void setResult(int result) {
		this.result = result;
	}

	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}

	/**
	 * @return the mid
	 */
	public String getMid() {
		return mid;
	}

	/**
	 * @param mid the mid to set
	 */
	public void setMid(String mid) {
		this.mid = mid;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = new MD5Code().getMD5ofStr(password);
	}

	/**
	 * @return the info
	 */
	public String getInfo() {
		return info;
	}

	/**
	 * @param info the info to set
	 */
	public void setInfo(String info) {
		this.info = info;
	}

	/**
	 * @return the realName
	 */
	public String getRealName() {
		return realName;
	}

	/**
	 * @param realName the realName to set
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the idNum
	 */
	public String getIdNum() {
		return idNum;
	}

	/**
	 * @param idNum the idNum to set
	 */
	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	/**
	 * @return
	 */
	public String execute() {
		List<Users> userList = userService.getAllUsers();
	    int userID = ((userList.size() == 0)? 1 : (userList.get(userList.size()-1).getUsersId()+1));
		
		Users user = new Users(userID,mid,password,info,realName,sex,email,phone,idNum);
		
		if (userService.addUsers(user)){//ע��ɹ�
			setResult(1);
			setUser(mid);
			return SUCCESS;
		}else{
			setResult(0);
			return ERROR;
		}
		
	}
}