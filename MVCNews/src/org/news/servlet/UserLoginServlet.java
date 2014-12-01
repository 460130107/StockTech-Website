/*
 * 系统名称：新闻发布系统
 * 
 * 类名：UserLoginServlet
 * 
 * 创建日期：2014-06-26
 */
package org.news.servlet;

import java.io.IOException;
import java.io.Serializable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.news.model.Users;
import org.news.service.UserService;
import org.news.utils.MD5Code;

/**
 * 用于会员登录的Servlet
 * 
 * @author tt
 * @version 14.6.18
 */
public class UserLoginServlet extends HttpServlet implements Serializable{

	private static final long serialVersionUID = 1753352205254920641L;
	
	
	/**
	 * Constructor of the object.
	 */
	public UserLoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	
	
	private UserService userService = new UserService();

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pages = "front/account.jsp";//下一个要跳转的页面
		
		
		String rand = "";
		rand = (String) request.getSession().getAttribute("rand") ;	// 从session中取出验证码
		
		String code = "";
		code = request.getParameter("code") ;
		
		if(code.equals("") || code == null){
			request.setAttribute("info","请输入验证码！") ;
			request.getRequestDispatcher(pages).forward(request, response);//跳转到下一个界面
			//return;
			
		}else if(!rand.equalsIgnoreCase(code)){//验证码不正确
			request.setAttribute("info","请输入正确的验证码！") ;
			request.getRequestDispatcher(pages).forward(request, response);//跳转到下一个界面
			//return;
		}
		
		String mid = request.getParameter("mid") ;
		String password = request.getParameter("password") ;
		Users user = new Users(0,mid,new MD5Code().getMD5ofStr(password),"","","","","","") ;
		try {
			if(userService.findLogin(user)){//登录成功
				
				request.getSession().setAttribute("id",mid) ;	// 保存mid
				pages = "/welcome.jsp" ;
			} else {
				request.setAttribute("info","错误的用户名或密码！") ;
				pages = "front/account.jsp" ;
			}
		} catch (Exception e) {
			request.getRequestDispatcher(pages).forward(request, response);
		}
		//request.getRequestDispatcher(pages).forward(request, response);//跳转到下一个界面
		response.sendRedirect(pages);
	}
	
	
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
