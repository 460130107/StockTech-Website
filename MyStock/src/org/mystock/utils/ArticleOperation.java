/*
 * 系统名称：斯多克个人网站自助系统
 * 
 * 类名：ArticleOperation
 * 
 * 创建日期：2014-10-28
 */

package org.mystock.utils;

/**
 * 文章操作辅助类
 * @author zxy
 * @version 14.10.28
 */
import org.mystock.model.Admin;
import com.opensymphony.xwork2.ActionContext;


public class ArticleOperation {
	
	/**
	 * 身份验证
	 * @author zxy
	 * @version 14.10.28
	 */
	public Admin LoginAuthority(String role){
		ActionContext ctx = ActionContext.getContext();
		Admin admin = (Admin) ctx.getSession().get(role) ;//登录的管理员
		return admin;
	}
	
	
	
	
	
}
