/*
 * ϵͳ���ƣ�˹��˸�����վ����ϵͳ
 * 
 * ������TableAction
 * 
 * �������ڣ�2014-09-25
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
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;



import org.news.model.Image;
import org.news.model.NewsInfo;
import org.news.service.ImageService;
import org.news.utils.MessageUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * �����ϴ�������Action
 * 
 * @author tt
 * @version 14.9.16
 */
public class FileUploadAction extends ActionSupport {

	private static final long serialVersionUID = -5244341070259281864L;
	
	private ImageService service = new ImageService();

	String msg = null ;//��ʾ��Ϣ
	List<String> tables = new ArrayList<String>();//���еı��
	List<String> documents = new ArrayList<String>();//�����ĵ�
	//List<String> images = new ArrayList<String>();//����ͼƬ

	List<Image>images = new ArrayList<Image>();
	
    String filename;//�����ļ���
    private File file;    
    private String fileFileName;   
    private String fileContentType;   
    	
    
    private String newsInfoId;
    private String imageDescript;
    
    
	public String getNewsInfoId() {
		return newsInfoId;
	}



	public void setNewsInfoId(String newsInfoId) {
		this.newsInfoId = newsInfoId;
	}



	public String getImageDescript() {
		return imageDescript;
	}



	public void setImageDescript(String imageDescript) {
		this.imageDescript = imageDescript;
	}



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
		try {
			this.filename = new String(filename.getBytes("ISO8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
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
	 * @return the tables
	 */
	public List<String> getTables() {
		return tables;
	}



	/**
	 * @param tables the tables to set
	 */
	public void setTables(List<String> tables) {
		this.tables = tables;
	}



	/**
	 * @return the documents
	 */
	public List<String> getDocuments() {
		return documents;
	}



	/**
	 * @param documents the documents to set
	 */
	public void setDocuments(List<String> documents) {
		this.documents = documents;
	}






	public List<Image> getImages() {
		return images;
	}



	public void setImages(List<Image> images) {
		this.images = images;
	}



	/**
	 * Ĭ���ϴ�
	 * @return
	 * @throws IOException 
	 */
	public void upload() throws IOException {
		InputStream is;

		HttpServletResponse response = ServletActionContext.getResponse(); 
		PrintWriter writer = response.getWriter(); 
		String pageErrorInfo = null;
		msg = "successed";
		try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			is = new FileInputStream(getFile());
			String root = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files");//�����ļ���Ŀ¼
			
			//����׺���ĳ�Сд
			String name =this.getFileFileName();
			int pos = name.lastIndexOf(".");
			String suffix = name.substring(pos);
			String newName = name.substring(0,pos)+suffix.toLowerCase();
			
			File deskFile = new File(root,newName);

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
			
			/*
			if (FtpUtil.isValid()){
				//�����ļ���FTP
				if(FtpUtil.backupFile(root+File.separatorChar+newName, newName, "files/"+MessageUtil.getID("config.id"))){
					System.out.println("file:"+newName+" backup success");
				}else{
					System.out.println("file:"+newName+" backup fail");
				}
			}
			*/
			
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
	 * ͼƬ�ϴ�
	 * @return
	 * @throws IOException 
	 */
	public String uploadImage() throws IOException {
		
	
		
		InputStream is;

		//HttpServletResponse response = ServletActionContext.getResponse(); 
		//PrintWriter writer = response.getWriter(); 
		String pageErrorInfo = null;
		msg = "successed";
		try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			is = new FileInputStream(getFile());
			String root = ServletActionContext.getServletContext().getRealPath("/images");//����ͼƬ��Ŀ¼

			//����׺���ĳ�Сд
			String name =this.getFileFileName();
			int pos = name.lastIndexOf(".");
			String suffix = name.substring(pos);
			String newName = name.substring(0,pos)+suffix.toLowerCase();
			
			File deskFile = new File(root,newName);

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
			
			
			Image image = new Image();
			List<Image> images = service.getAllImages();	
			int imageId = (images.size() == 0) ? 1 : (images.get(images.size()-1).getImageId()+1);// �µ�ID��������ID��1
			image = new Image(imageId,Integer.valueOf(newsInfoId).intValue(),this.getFileFileName(),imageDescript);// ����ʱ��Ϊ��ǰʱ��
		
			try {// �������ݿ�
				if (service.addImage(image)) {
					return SUCCESS;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			/*
			if (FtpUtil.isValid()){
				//�����ļ���FTP
				if(FtpUtil.backupFile(root+File.separatorChar+newName, newName, "images/"+MessageUtil.getID("config.id"))){
					System.out.println("image:"+newName+" backup success");
				}else{
					System.out.println("image:"+newName+" backup fail");
				}
			}
			*/
		
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			pageErrorInfo = e.getMessage();
			msg = "failed"+pageErrorInfo;
		} catch (IOException e) {
			e.printStackTrace();
			msg = "failed"+pageErrorInfo;
		}finally{
			//writer.print(msg);
			//writer.flush();  
			//writer.close();		
		}
		
		return SUCCESS;
	}
	
	/**
	 * ����б�
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String tablelist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files"); //�ļ�����·��
		
		//��ȡ���б���ļ� 
		Collection<File> xlsFileCol = FileUtils.listFiles(new File(filepath), new String[]{"xls","xlsx"}, true); 
		tables.clear();  
		for (File xlsFileColFile : xlsFileCol) { 
		      String filename = xlsFileColFile.getName();
		      tables.add(filename);
		}
		
		return SUCCESS;
	}
	
	/**
	 * �ĵ��б�
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String documentlist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files"); //�ļ�����·��
		
		//��ȡ�����ĵ��ļ� 
		Collection<File> docFileCol = FileUtils.listFiles(new File(filepath), new String[]{"ppt","pptx","doc","docx","chm","pdf","txt","rtf","pps","xml","rdf","wsdl","xpdl","xsl"}, true); 
		documents.clear();  
		for (File docFileColFile : docFileCol) { 
		      String filename = docFileColFile.getName();
		      documents.add(filename);
		}
		
		return SUCCESS;
	}
	
	/**
	 * ͼƬ�б�
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String imagelist(){
		/*
		String filepath = ServletActionContext.getServletContext().getRealPath("/images"); //�ļ�����·��
		
		//��ȡ�����ĵ��ļ� 
		Collection<File> imageFileCol = FileUtils.listFiles(new File(filepath), new String[]{"bmp","png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
		images.clear();  
		for (File imagesFileColFile : imageFileCol) { 
		      String filename = imagesFileColFile.getName();
		      
		      images.add(filename);
		}
		*/
		try {
			images = service.getAllImages();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		
	}
	
	/**
	 * ɾ���ļ�
	 * @return
	 */
	public String delete(){		
		String filepath = ServletActionContext.getServletContext().getRealPath("/images") + java.io.File.separator; //�ļ�����·��
		try{
			FileUtils.forceDelete(new File(filepath+filename));
			service.deletImage(filename);
			msg = "ɾ���ɹ�";
		}catch (IOException e) {
			msg = "ɾ��ʧ��";
		}

		return SUCCESS;
	}
	
	
	/**
	 * �����ļ�
	 * @return
	 */
	public InputStream getTargetFile() throws Exception{
		return ServletActionContext.getServletContext().getResourceAsStream("/images/"+filename);
	}
}
