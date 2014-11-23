/*
 * 系统名称：门户网站
 * 
 * 类名：AdminLoginAction
 * 
 * 创建日期：2014-11-11
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
 * 用于管理员登陆的Action
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
		//String pages = "/back/login.jsp";//下一个要跳转的页面

		List<String> errors = new ArrayList<String>();  //错误列表
		
		if (code == null || "".equals(code)) {//验证码为空
			errors.add(MessageUtil.get("adminlogin.code.null"));
		} else {
			String rand = (String) ctx.getSession().get("rand"); // 取得生成的验证码
			if (!code.equalsIgnoreCase(rand)) {//验证码不匹配
				errors.add(MessageUtil.get("adminlogin.code.err")) ;
			}
		}
		
		if (adminName == null || "".equals(adminName)) {//用户名为空
			errors.add(MessageUtil.get("adminlogin.adminid.null"));
		}
		
		if (password == null || "".equals(password)) {//密码为空
			errors.add(MessageUtil.get("adminlogin.password.null"));
		}
		
		if(errors.size()==0){	// 现在没有任何的错误信息
			Admin admin = new Admin(0,adminName,new MD5Code().getMD5ofStr(password),"Super Admin") ;
			AdminService adminService = new AdminService(); //调用下一层的服务进行登录
			try {
				if(adminService.findLogin(admin)){//登录成功
					admin = adminService.findAdminById(adminName);//从数据库获取对象
					ctx.getSession().put("admin", admin) ;	// 现在保存对象
					return SUCCESS;
				} else {
					errors.add(MessageUtil.get("adminlogin.false")) ;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		ServletActionContext.getRequest().setAttribute("errors", errors) ;//保存错误
		return ERROR;
		
	}

}
