/*
 * ϵͳ���ƣ����ŷ���ϵͳ
 * 
 * ������SoftwareAction
 * 
 * �������ڣ�2014-08-22
 */
package org.news.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.news.model.NewsAttachment;
import org.news.service.AttachmentService;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.opensymphony.xwork2.ActionSupport;

/**
 * ��������������Action
 * 
 * @author tt
 * @version 14.8.18
 */
public class SoftwareAction extends ActionSupport{

	private static final long serialVersionUID = 4362240508650937317L;
	private AttachmentService service;
	
	/**
	 * @param service the service to set
	 */
	public void setService(AttachmentService service) {
		this.service = service;
	}

	String msg = null ;//��ʾ��Ϣ
	String kw; //��ѯ�ؼ���
	String cp; //��ǰҳ
	String ls; //ҳ�Ĵ�С
	String pg = "Software_list.action"; //URL
	List<NewsAttachment> softwares;//�����б�
	long recorders; //������
	int softwareid;//����ID
	Long sid; //��������ID
    String filename;//�����ļ���
    private File file;    
    private String fileFileName;   
    private String fileContentType;   
    	
	public File getFile() {
		return file;
	}



	public void setFile(File file) {
		this.file = file;
	}



	public String getFileFileName() {
		return fileFileName;
	}



	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}



	public String getFileContentType() {
		return fileContentType;
	}



	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
    
    /**
	 * @return the filename
	 */
	public String getFilename() {
		String downFileName = "";
		try {
			downFileName = java.net.URLEncoder.encode(filename, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

	    return downFileName;
		//return filename;
	}
	/**
	 * @param filename the filename to set
	 */
	public void setFilename(String filename) {
		this.filename = filename;
	}

	/**
	 * @return the sid
	 */
	public Long getSid() {
		return sid;
	}

	/**
	 * @param sid the sid to set
	 */
	public void setSid(Long sid) {
		this.sid = sid;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * @param msg the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

	/**
	 * @return the kw
	 */
	public String getKw() {
		return kw;
	}

	/**
	 * @param kw the kw to set
	 */
	public void setKw(String kw) {
		this.kw = kw;
	}

	/**
	 * @return the cp
	 */
	public String getCp() {
		return cp;
	}

	/**
	 * @param cp the cp to set
	 */
	public void setCp(String cp) {
		this.cp = cp;
	}

	/**
	 * @return the ls
	 */
	public String getLs() {
		return ls;
	}

	/**
	 * @param ls the ls to set
	 */
	public void setLs(String ls) {
		this.ls = ls;
	}

	/**
	 * @return the pg
	 */
	public String getPg() {
		return pg;
	}

	/**
	 * @param pg the pg to set
	 */
	public void setPg(String pg) {
		this.pg = pg;
	}

	/**
	 * @return the softwares
	 */
	public List<NewsAttachment> getSoftwares() {
		return softwares;
	}

	/**
	 * @param softwares the softwares to set
	 */
	public void setSoftwares(List<NewsAttachment> softwares) {
		this.softwares = softwares;
	}

	/**
	 * @return the recorders
	 */
	public long getRecorders() {
		return recorders;
	}

	/**
	 * @param recorders the recorders to set
	 */
	public void setRecorders(long recorders) {
		this.recorders = recorders;
	}

	/**
	 * @return the softwareid
	 */
	public int getSoftwareid() {
		return softwareid;
	}

	/**
	 * @param softwareid the softwareid to set
	 */
	public void setSoftwareid(int softwareid) {
		this.softwareid = softwareid;
	}
	
	/**
	 * Ĭ���ϴ�
	 * @return
	 * @throws IOException 
	 */
	@Transactional(propagation=Propagation.REQUIRED)
	public void upload() throws IOException {
		InputStream is;

		HttpServletResponse response = ServletActionContext.getResponse(); 
		PrintWriter writer = response.getWriter(); 
		String pageErrorInfo = null;
		msg = "successed";
		try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			is = new FileInputStream(file);
			String root = ServletActionContext.getServletContext().getRealPath("/softwares");//����������Ŀ¼
			File deskFile = new File(root,this.getFileFileName());

			//����������
			OutputStream os = new FileOutputStream(deskFile);
			byte [] bytefer = new byte[400];
			int length = 0 ; 
			while((length = is.read(bytefer) )>0)
			{
				os.write(bytefer,0,length);
			}
			os.close();
			is.close();
			
			//�����ڸ�����newsidΪ0,��ֻ��������
			NewsAttachment newsAttachment=new NewsAttachment();
			newsAttachment.setNewsId((long)0);
			newsAttachment.setAttachmentName(filename);
			if (!service.addNewsAttachment(newsAttachment)){
				service.deleteFile(root+File.separator+filename);//����ʧ�ܣ�ɾ���ļ�
				msg = "failed"+pageErrorInfo;
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			pageErrorInfo = e.getMessage();
			msg = "failed"+pageErrorInfo;
		} catch (IOException e) {
			e.printStackTrace();
			msg = "failed"+pageErrorInfo;
		}finally{
			writer.print(msg);
			writer.flush();  
			writer.close();
		}


	}

	/**
	 * �����б�
	 * @return
	 */
	@Transactional(readOnly=true)
	public String list(){
		int currentPage = 1 ;	// Ϊ��ǰ���ڵ�ҳ��Ĭ���ڵ�1ҳ
		int lineSize = 20;		// ÿ����ʾ�ļ�¼��
		long allRecorders = 0 ;	// ��ʾȫ���ļ�¼��
		String keyWord = kw ;	// ���ղ�ѯ�ؼ���
		
		try{
			currentPage = Integer.parseInt(cp) ;
		} catch(Exception e) {}
		try{
			lineSize = Integer.parseInt(ls) ;
		} catch(Exception e) {}
		if(keyWord == null){
			keyWord = "" ;	// ���ģ����ѯû�йؼ��֣����ʾ��ѯȫ��
		}
		
		List<NewsAttachment> attachments = service.getAllSoftwares(keyWord, currentPage, lineSize);
		allRecorders = service.getCount(keyWord);
		setSoftwares(attachments);
		setRecorders(allRecorders);
		
		setCp(""+currentPage);
		setLs(""+lineSize);
		
		return SUCCESS;
	}
	
	/**
	 * ɾ������
	 * @return
	 */
	@Transactional(propagation=Propagation.REQUIRED)
	public String delete(){		
		String filepath = ServletActionContext.getServletContext().getRealPath("/") + "softwares" + java.io.File.separator; //�ļ�����·��
		String name = service.findNewsAttachmentById(softwareid).getAttachmentName();
		if (service.deleteAttachment(softwareid)&&service.deleteFile(filepath+name)){//ͬʱɾ�����ݿ���ļ����������					
			msg = "ɾ���ɹ�";
		}else{
			msg = "ɾ��ʧ��";
		}

		return SUCCESS;
	}
	
	/**
	 * ��������
	 * @return
	 */
	public InputStream getTargetFile(){
		NewsAttachment attachment = service.findNewsAttachmentById(sid);
		//String filepath = ServletActionContext.getServletContext().getRealPath("/")+"softwares"+File.separator; //�ļ�����·��
	    filename = attachment.getAttachmentName();

		return ServletActionContext.getServletContext().getResourceAsStream("softwares/"+filename);
	}

}