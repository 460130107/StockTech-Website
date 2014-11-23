/*
 * ϵͳ���ƣ��Ż���վ
 * 
 * ������AdminLoginAction
 * 
 * �������ڣ�2014-11-11
 */
package org.news.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.news.model.Admin;
import org.news.service.AdminService;
import org.news.utils.MD5Code;
import org.news.utils.MessageUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ���ڹ���Ա��½��Action
 * @author zxy
 * @version 14.11.12
 * 
 */
public class AdminLoginAction extends ActionSupport{

	private static final long serialVersionUID = -5444681248421366612L;
	
	private String code;
	private String adminName;
	private String password;
		
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
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
		//String pages = "/back/login.jsp";//��һ��Ҫ��ת��ҳ��

		List<String> errors = new ArrayList<String>();  //�����б�
		
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
			AdminService adminService = new AdminService(); //������һ��ķ�����е�¼
			try {
				if(adminService.findLogin(admin)){//��¼�ɹ�
					admin = adminService.findAdminById(adminName);//�����ݿ��ȡ����
					ctx.getSession().put("admin", admin) ;	// ���ڱ������
					return SUCCESS;
				} else {
					errors.add(MessageUtil.get("adminlogin.false")) ;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		ServletActionContext.getRequest().setAttribute("errors", errors) ;//�������
		return ERROR;
		
	}

}
