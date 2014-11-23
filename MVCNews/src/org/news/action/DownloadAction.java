/*
 * 系统名称：门户网站
 * 
 * 类名：DownloadAction
 * 
 * 创建日期：2014-11-11
 */
package org.news.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 用于下载产品的Action
 * @author zxy
 * @version 14.11.11
 * 
 */
public class DownloadAction extends ActionSupport {

	private static final long serialVersionUID = 5576712656940848920L;
	
	
	@Override
	public String execute() throws Exception {
		
		try {
			String fpath = ServletActionContext.getServletContext().getRealPath("files");
			fpath = fpath + "/GitHubSetup.exe";
			
			File file = new File(fpath);// path是根据日志路径和文件名拼接出来的
			String filename = file.getName();// 获取日志文件名称
			InputStream fis = new BufferedInputStream(new FileInputStream(fpath));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			ServletActionContext.getResponse().reset();
			// 先去掉文件名称中的空格,然后转换编码格式为utf-8,保证不出现乱码,这个文件名称用于浏览器的下载框中自动显示的文件名
			ServletActionContext.getResponse().addHeader("Content-Disposition", "attachment;filename=" + new String(filename.replaceAll(" ", "").getBytes("utf-8"),"iso8859-1"));
			ServletActionContext.getResponse().addHeader("Content-Length", "" + file.length());
			
			OutputStream os = new BufferedOutputStream(ServletActionContext.getResponse().getOutputStream());
   
			os.write(buffer);// 输出文件
			os.flush();
			os.close();
		} catch (Exception e) {
			return null;
		}
		return null;
		
	}

}
