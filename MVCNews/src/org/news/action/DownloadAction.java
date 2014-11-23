/*
 * ϵͳ���ƣ��Ż���վ
 * 
 * ������DownloadAction
 * 
 * �������ڣ�2014-11-11
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
 * �������ز�Ʒ��Action
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
			
			File file = new File(fpath);// path�Ǹ�����־·�����ļ���ƴ�ӳ�����
			String filename = file.getName();// ��ȡ��־�ļ�����
			InputStream fis = new BufferedInputStream(new FileInputStream(fpath));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			ServletActionContext.getResponse().reset();
			// ��ȥ���ļ������еĿո�,Ȼ��ת�������ʽΪutf-8,��֤����������,����ļ�������������������ؿ����Զ���ʾ���ļ���
			ServletActionContext.getResponse().addHeader("Content-Disposition", "attachment;filename=" + new String(filename.replaceAll(" ", "").getBytes("utf-8"),"iso8859-1"));
			ServletActionContext.getResponse().addHeader("Content-Length", "" + file.length());
			
			OutputStream os = new BufferedOutputStream(ServletActionContext.getResponse().getOutputStream());
   
			os.write(buffer);// ����ļ�
			os.flush();
			os.close();
		} catch (Exception e) {
			return null;
		}
		return null;
		
	}

}
