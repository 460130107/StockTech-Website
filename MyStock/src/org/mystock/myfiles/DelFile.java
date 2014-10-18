package org.mystock.myfiles;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.*;

//import sun.rmi.runtime.Log;

public class DelFile extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path =new String(Base64.decodeBase64( request.getParameter("path").getBytes()));
		String name =new String(Base64.decodeBase64( request.getParameter("fname").getBytes()));
		//System.out.print("path = "+path+"\n");
		//System.out.print("name = "+name+"\n");
		del(name);
		response.setContentType("application/x-unknown;charset=utf-8");
		response.sendRedirect("../myfiles?path="+request.getParameter("path"));
		//response.sendRedirect("http://www.hao123.com");
	}
	public void del(String path)throws FileNotFoundException,IOException {
		File file = new File(path);
		 if(!file.isDirectory()){
			 file.delete();
		 }else if (file.isDirectory()){
			 String[] filelist = file.list();
		     for (int i = 0; i < filelist.length; i++){
		    	 File delfile = new File(path + "\\" + filelist[i]);
		    	 if (!delfile.isDirectory()){
		    		 delfile.delete();
		    	 }else if (delfile.isDirectory()){
		    		 del(path + "\\" + filelist[i]);
		    	 }
		     }
		     file.delete();
		 }
	}
}
