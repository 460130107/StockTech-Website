package org.mystock.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 用于文件预览的Action
 * 
 * @author whim
 * @version 14.10.18
 */
public class MyFilesPreview extends ActionSupport {

	private static final long serialVersionUID = -5505610348782046281L;

	public String execute() {
		//HttpServletRequest request = ServletActionContext.getRequest();
		//request.getSession().invalidate();

		return SUCCESS;
	}
}