package org.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.news.model.Advice;
import org.news.service.AdviceService;

public class AdviceInfoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8923610814127649557L;
	
	private AdviceService adviceService = new AdviceService();

	/**
	 * Constructor of the object.
	 */
	public AdviceInfoServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

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

		String pages = "front/advice_do.jsp";
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		

		String userEmail = request.getParameter("userEmail");
		//String userName = request.getParameter("userName");
		String userName = "user";
		String adviceInfo = request.getParameter("adviceInfo");

		List<Advice> adviceList = adviceService.getAllAdvice();
	    int adviceId = ((adviceList.size() == 0)? 1 : (adviceList.get(adviceList.size()-1).getAdviceId()+1));
		
		
		Advice advice = new Advice(adviceId,userEmail,userName,adviceInfo);
		if (adviceService.addAdvice(advice)){//×¢²á³É¹¦
			response.setHeader("refresh","2;URL= front/index.jsp") ;
		
			request.setAttribute("result", 1);
		}else{
			request.setAttribute("result", 0);
		}
		request.getRequestDispatcher(pages).forward(request, response);
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
