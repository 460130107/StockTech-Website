/*
 * 系统名称：门户网站
 * 
 * 类名：UserRegisterAction
 * 
 * 创建日期：2014-11-11
 */
package org.news.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.news.model.Users;
import org.news.service.UserService;
import org.news.utils.MD5Code;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 用于用户注册的Action
 * @author zxy
 * @version 14.11.11
 *
 */
public class UserRegisterAction extends ActionSupport {

	private static final long serialVersionUID = -7781938601739345945L;
	private UserService userService = new UserService();
	
	private String name;
	private String password;
	private String company;
	private String realName;
	//private String sex;
	private String email;
	private String userPhone;
	private String idcard;
	
	
	private String result;
	private String user;
	

	public String getResult() {
		return result;
	}




	public void setResult(String result) {
		this.result = result;
	}




	public String getUser() {
		return user;
	}




	public void setUser(String user) {
		this.user = user;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getCompany() {
		return company;
	}




	public void setCompany(String company) {
		this.company = company;
	}




	public String getRealName() {
		return realName;
	}




	public void setRealName(String realName) {
		this.realName = realName;
	}




	/*public String getSex() {
		return sex;
	}




	public void setSex(String sex) {
		this.sex = sex;
	}
*/



	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getUserPhone() {
		return userPhone;
	}




	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}




	public String getIdcard() {
		return idcard;
	}




	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}




	@Override
	public String execute() throws Exception {
		
		
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
		
		String name = this.name;
		String password = new MD5Code().getMD5ofStr(this.password);
		String company = this.company;
		String realName = this.realName;
		String sex = "man";
		String email = this.email;
		String userPhone = this.userPhone;
		String idcard = this.idcard;
		
	
		List<Users> userList = userService.getAllUsers();
	    int userID = ((userList.size() == 0)? 1 : (userList.get(userList.size()-1).getUsersId()+1));
		/*
		
		int userID = 10;
				*/
		Users user = new Users(userID,name,password,company,realName,sex,email,userPhone,idcard);
		
		if (userService.addUsers(user)){//注册成功
			ServletActionContext.getResponse().setHeader("refresh","2;URL= front/account.jsp") ;
		
			setResult("1");
			setUser(name);
			return SUCCESS;
			
		}else{
			setResult("0");
			return ERROR;
		}
	}
	

}
