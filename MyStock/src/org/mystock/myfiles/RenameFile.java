package org.mystock.myfiles;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.*;

public class RenameFile extends HttpServlet {

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
		//super.doPost(request, response);
		String newfname = request.getParameter("newfname");
		String fname = request.getParameter("fname");
		//newfname=new String(Base64.decodeBase64(newfname.getBytes()));
		fname=new String(Base64.decodeBase64(fname.getBytes()));
		reName(newfname,fname);
		File ff= new File(fname);
		response.setContentType("application/x-unknown;charset=GB2312");
		//response.sendRedirect("http://www.baidu.com");
		response.sendRedirect("../home.jsp?path="+new String(Base64.encodeBase64(ff.getParentFile().getAbsolutePath().getBytes())));
	}
	
	public void reName(String newfname,String fname) {
		File f = new File(fname);
		File nf = new File(f.getParentFile().getAbsolutePath()+System.getProperty("file.separator")+newfname);
		System.out.println(f.getAbsolutePath());
		System.out.println(nf.getAbsolutePath());
		f.renameTo(nf);
		//System.out.print("renames\n");
	}
}
