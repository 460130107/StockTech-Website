/*
 * ϵͳ���ƣ�˹��˸�����վ����ϵͳ
 * 
 * ������AdminLogin
 * 
 * �������ڣ�2014-09-24
 */
package org.mystock.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import org.mystock.model.Admin;
import org.mystock.utils.MD5Code;
import org.mystock.utils.MessageUtil;
import org.mystock.service.AdminService;

/**
 * ���ڹ���Ա��¼��Action
 * 
 * @author tt
 * @version 14.9.16
 */
public class AdminLogin extends ActionSupport {

	private static final long serialVersionUID = -602385738754427947L;
	AdminService adminService;
	
	/**
	 * @param adminService the adminService to set
	 */
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	private String adminName;
	private String code;
	private String password;

	/**
	 * @return the adminName
	 */
	public String getAdminName() {
		return adminName;
	}

	/**
	 * @param adminName the adminName to set
	 */
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
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
		this.password = password;
	}

	/**
	 * @return
	 */
	public String execute() {
		ActionContext ctx = ActionContext.getContext();
		List<String> errors = new ArrayList<String>();//�����б�
		
		if (code == null || "".equals(code)) {//��֤��Ϊ��
			errors.add(MessageUtil.get("adminlogin.code.null"));
		} else {
			String rand = (String) ctx.getSession().get("rand"); // ȡ�����ɵ���֤��
			if (!code.equalsIgnoreCase(rand)) {//��֤�벻ƥ��
				errors.add(MessageUtil.get("adminlogin.code.err")) ;
			}
		}
		
		if (adminName == null || "".equals(adminName)) {//�û���Ϊ��
			errors.add(MessageUtil.get("adminlogin.adminid.null"));
		}
		
		if (password == null || "".equals(password)) {//����Ϊ��
			errors.add(MessageUtil.get("adminlogin.password.null"));
		}
		
		if(errors.size()==0){	// ����û���κεĴ�����Ϣ
			Admin admin = new Admin(0,adminName,new MD5Code().getMD5ofStr(password),"Super Admin") ;

			try {
				if(adminService.findLogin(admin)){//��¼�ɹ�
					admin = adminService.findAdminById(adminName);//�����ݿ��ȡ����
					ctx.getSession().put("admin", admin);// ���ڱ������
					return SUCCESS;
				} else {
					errors.add(MessageUtil.get("adminlogin.false")) ;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		ctx.put("errors", errors);//�������
		
		return ERROR;
	}
}