/*
 * ϵͳ���ƣ��Ż���վ
 * 
 * ������UserLoginAction
 * 
 * �������ڣ�2014-11-11
 */
package org.news.action;

import org.news.model.Users;
import org.news.service.UserService;
import org.news.utils.MD5Code;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * �����û���¼��Action
 * @author zxy
 * @version 14.11.11
 * 
 */



public class UserLoginAction extends ActionSupport {


	private static final long serialVersionUID = 1770159728321803442L;

	private UserService userService = new UserService();
	
	private String code;
	private String mid;
	private String password;
	private String info;

	
	public String getInfo() {
		return info;
	}





	public void setInfo(String info) {
		this.info = info;
	}





	public String getCode() {
		return code;
	}





	public void setCode(String code) {
		this.code = code;
	}





	public String getMid() {
		return mid;
	}





	public void setMid(String mid) {
		this.mid = mid;
	}





	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	@Override
	public String execute() throws Exception {
		
		ActionContext ctx = ActionContext.getContext();
				
		String rand = "";
		rand = (String) ctx.getSession().get("rand") ;	// ��session��ȡ����֤��
	
		
		if(code.equals("") || code == null){
			setInfo("��������֤��");
			return ERROR;
			
		}else if(!rand.equalsIgnoreCase(code)){//��֤�벻��ȷ
			setInfo("��������֤��");
			return ERROR;
		}
		
		Users user = new Users(0,mid,new MD5Code().getMD5ofStr(password),"","","","","","") ;
		try {
			if(userService.findLogin(user)){//��¼�ɹ�
				
				ctx.getSession().put("id", mid);	// ����mid
				return SUCCESS;
			} else {
				setInfo("������û��������룡");
				return ERROR;
			}
		} catch (Exception e) {
			return ERROR;
		}

	}
	
}
