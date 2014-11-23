/*
 * 系统名称：门户网站
 * 
 * 类名：AdviceInfoAction
 * 
 * 创建日期：2014-11-11
 */
package org.news.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.news.model.Advice;
import org.news.service.AdviceService;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 用于用户提交意见的Action
 * @author zxy
 * @version 14.11.11
 * 
 */

public class AdviceInfoAction extends ActionSupport {

	private static final long serialVersionUID = -6994684561521877361L;
	private AdviceService adviceService = new AdviceService();
	
	private String userEmail;
	private String adviceInfo;
	
	private String result;
	
	
	
	public String getResult() {
		return result;
	}



	public void setResult(String result) {
		this.result = result;
	}



	public String getUserEmail() {
		return userEmail;
	}



	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}



	public String getAdviceInfo() {
		return adviceInfo;
	}



	public void setAdviceInfo(String adviceInfo) {
		this.adviceInfo = adviceInfo;
	}



	@Override
	public String execute() throws Exception {
				
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
	
		String userName = "user";
		
		List<Advice> adviceList = adviceService.getAllAdvice();
	    int adviceId = ((adviceList.size() == 0)? 1 : (adviceList.get(adviceList.size()-1).getAdviceId()+1));
		
		
		Advice advice = new Advice(adviceId,userEmail,userName,adviceInfo);
		if (adviceService.addAdvice(advice)){//注册成功
			ServletActionContext.getResponse().setHeader("refresh","2;URL= front/index.jsp") ;
		
			setResult("1");
			return SUCCESS;
		}else{
			setResult("0");
			return ERROR;
		}
	
	}

}
