/*
 * 系统名称：斯多克个人网站自助系统
 * 
 * 类名：NewsInterfaceAction
 * 
 * 创建日期：2014-09-26
 */
package org.mystock.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.mystock.model.Admin;
import org.mystock.model.FileVO;
import org.mystock.model.NewsIndex;
import org.mystock.model.NewsInfo;
import org.mystock.model.NewsVO;
import org.mystock.service.NewsInfoService;
import org.mystock.service.NewsTypeService;
import org.mystock.service.TableService;
import org.mystock.utils.ArticleOperation;
import org.mystock.utils.Common;
import org.mystock.utils.FileOperation;
import org.mystock.utils.FtpUtil;
import org.mystock.utils.HibernateMappingManager;
import org.mystock.utils.MessageUtil;
import org.mystock.utils.Page;
import org.mystock.utils.TimerManager;
import org.springframework.transaction.annotation.Transactional;

import com.opensymphony.xwork2.ActionSupport;



/**
 * 为前端访问提供接口的的Action
 * 
 * @author tt
 * @version 14.9.16
 */
public class NewsInterfaceAction extends ActionSupport {


	private static final long serialVersionUID = 8726165028217895272L;

	private NewsInfoService service;
	private NewsTypeService typeService;
	private TableService tableService;
	
	private ArticleOperation articelUtil = new ArticleOperation();
	private FileOperation fileOperation = new FileOperation();

	int type; //新闻类别编号
	List<NewsIndex> index; //新闻目录列表
	String pg;  //URL
	String cp; //为当前所在的页
	String ls; //每次显示的记录数
	int pid; //新闻ID
	NewsInfo articleInfo; //单个文章信息
	List<NewsVO> articles;//文章简表
	long recorders; //查询到的全部记录数
	String url;
	int page;
	int size;

	String msg;
	
	List<String> tables = new ArrayList<String>();//所有的表格
	List<String> filenames = new ArrayList<String>();//所有上传的文件
	List<String> uploadfiles = new ArrayList<String>();//所有新闻图片
	
	List<FileVO> filelist;//文件信息列表
	
	String ip;//FTP地址
	String username;//FTP用户名
	String password;//FTP密码
	boolean valid;//是否自动上传
		
	private File file;
    private String fileFileName;
    private String fileFileContentType;

    private File upfile; 
    private String upfileFileName;
    private String upfileFileContentType;
    
    //private String path;
    //private String deletePath;
    //private String downPath;
    
    
    private String message = "你已成功上传图片";
    private String myFilemessage;         //文件浏览（前进，后退）
    private String myFileUploadMessage;   //文件上传
    private String showFileByTypeMessage;
    private String reNameMessage;
    
    private String myArticleMessage;  //文章浏览(分页，分类)
    
    private static int fileByTypeNum = 0;  //某类文件数量
    private String fileType;   //文件类型
    
    
    private String name;//文章标题
    private String content;//文章内容
    private String author;//文章作者
    
    
    private String configId;//客户ID
    private String configName;//客户姓名
    private String configDoName;//客户域名
    private String configSSID;//序列号
     
    private String newsTypeName;     //文章类别名
    private String newsTypeDescripe;   //文章类别描述
    
    
    private String currentPage;     //当前页
    private String newsTypeId;      //文章类型
    //private String newsId;          //文章Id
    
    public String getConfigSSID() {
		return configSSID;
	}

	public void setConfigSSID(String configSSID) {
		this.configSSID = configSSID;
	}

	public String getConfigId() {
		return configId;
	}

	public void setConfigId(String configId) {
		this.configId = configId;
	}

	public String getConfigName() {
		return configName;
	}

	public void setConfigName(String configName) {
		this.configName = configName;
	}

	public String getConfigDoName() {
		return configDoName;
	}

	public void setConfigDoName(String configDoName) {
		this.configDoName = configDoName;
	}

	public String getNewsTypeName() {
		return newsTypeName;
	}

	public void setNewsTypeName(String newsTypeName) {
		this.newsTypeName = newsTypeName;
	}

	public String getNewsTypeDescripe() {
		return newsTypeDescripe;
	}

	public void setNewsTypeDescripe(String newsTypeDescripe) {
		this.newsTypeDescripe = newsTypeDescripe;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public String getNewsTypeId() {
		return newsTypeId;
	}

	public void setNewsTypeId(String newsTypeId) {
		this.newsTypeId = newsTypeId;
	}


	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * @param author the author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/*public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDeletePath() {
		return deletePath;
	}

	public void setDeletePath(String deletePath) {
		this.deletePath = deletePath;
	}

	public String getDownPath() {
		return downPath;
	}

	public void setDownPath(String downPath) {
		this.downPath = downPath;
	}
*/
	public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    

    public String getMyFilemessage() {
		return myFilemessage;
	}

	public void setMyFilemessage(String myFilemessage) {
		this.myFilemessage = myFilemessage;
	}

	public String getMyFileUploadMessage() {
		return myFileUploadMessage;
	}

	public void setMyFileUploadMessage(String myFileUploadMessage) {
		this.myFileUploadMessage = myFileUploadMessage;
	}

	public String getShowFileByTypeMessage() {
		return showFileByTypeMessage;
	}

	public void setShowFileByTypeMessage(String showFileByTypeMessage) {
		this.showFileByTypeMessage = showFileByTypeMessage;
	}

	public String getReNameMessage() {
		return reNameMessage;
	}

	public void setReNameMessage(String reNameMessage) {
		this.reNameMessage = reNameMessage;
	}

	public String getMyArticleMessage() {
		return myArticleMessage;
	}

	public void setMyArticleMessage(String myArticleMessage) {
		this.myArticleMessage = myArticleMessage;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
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

    public String getFileFileContentType() {
        return fileFileContentType;
    }

    public void setFileFileContentType(String fileFileContentType) {
        this.fileFileContentType = fileFileContentType;
    }
    
	public File getUpfile() {
		return upfile;
	}

	public void setUpfile(File upfile) {
		this.upfile = upfile;
	}
	
	public String getUpfileFileName() {
		return upfileFileName;
	}

	public void setUpfileFileName(String upfileFileName) {
		this.upfileFileName = upfileFileName;
	}

	public String getUpfileFileContentType() {
		return upfileFileContentType;
	}

	public void setUpfileFileContentType(String upfileFileContentType) {
		this.upfileFileContentType = upfileFileContentType;
	}

	/**
	 * @return the filelist
	 */
	public List<FileVO> getFilelist() {
		return filelist;
	}

	/**
	 * @param filelist the filelist to set
	 */
	public void setFilelist(List<FileVO> filelist) {
		this.filelist = filelist;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public boolean isValid() {
		return FtpUtil.isValid();
	}

	public String getIp() {
		return ip;
	}



	public void setIp(String ip) {
		this.ip = ip;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public List<String> getFilenames() {
		return filenames;
	}



	public void setFilenames(List<String> filenames) {
		this.filenames = filenames;
	}



	public List<String> getUploadfiles() {
		return uploadfiles;
	}



	public void setUploadfiles(List<String> uploadfiles) {
		this.uploadfiles = uploadfiles;
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
	 * @return the type
	 */
	public int getType() {
		return type;
	}



	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}




	/**
	 * @return the index
	 */
	public List<NewsIndex> getIndex() {
		return index;
	}

	/**
	 * @param index the index to set
	 */
	public void setIndex(List<NewsIndex> index) {
		this.index = index;
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
	 * @return the pid
	 */
	public int getPid() {
		return pid;
	}



	/**
	 * @param pid the pid to set
	 */
	public void setPid(int pid) {
		this.pid = pid;
	}

	/**
	 * @return the articleInfo
	 */
	public NewsInfo getArticleInfo() {
		return articleInfo;
	}

	/**
	 * @param articleInfo the articleInfo to set
	 */
	public void setArticleInfo(NewsInfo articleInfo) {
		this.articleInfo = articleInfo;
	}

	/**
	 * @return the articles
	 */
	public List<NewsVO> getArticles() {
		return articles;
	}

	/**
	 * @param articles the articles to set
	 */
	public void setArticles(List<NewsVO> articles) {
		this.articles = articles;
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
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}



	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}



	/**
	 * @return the page
	 */
	public int getPage() {
		return page;
	}



	/**
	 * @param page the page to set
	 */
	public void setPage(int page) {
		this.page = page;
	}



	/**
	 * @return the size
	 */
	public int getSize() {
		return size;
	}



	/**
	 * @param size the size to set
	 */
	public void setSize(int size) {
		this.size = size;
	}


	/**
	 * @param service the service to set
	 */
	public void setService(NewsInfoService service) {
		this.service = service;
	}

	/**
	 * @param typeService the typeService to set
	 */
	public void setTypeService(NewsTypeService typeService) {
		this.typeService = typeService;
	}

	
	/**
	 * @param tableService the tableService to set
	 */
	public void setTableService(TableService tableService) {
		this.tableService = tableService;
	}

	/**
	 * 取某一类型的文章目录
	 * @return JSON格式的文章目录
	 */
	@Transactional(readOnly=true)
	public String acquireMenu(){
		if (typeService.getNewsTypeById(type)== null){
			return ERROR;
		}
		String newsType = typeService.getNewsTypeById(type).getNewsTypeName();//获取对应的类别名
		List<NewsInfo> all = service.getAllNewsInfoByType(newsType);//获取某类型所有新闻
		index = new ArrayList<NewsIndex>();
		for (int i = 0; i<all.size(); ++i){
			index.add(service.toNewsIndex(all.get(i)));
		}

		return SUCCESS;
	}
	
	/**
	 * 获取某一类型的文章列表，不包含文章内容，可以指定结果集的页号和每页大小，用于翻页显示
	 * @return 属性articles，表示文章列表；属性recorders，表示所有该类型文章的个数；属性url，
	 * 表示查询所用的URL，为常量；属性page，表示当前所在的页；属性size，表示每次显示的记录数。
	 */
	public String acquireNewsList(){
		String URL = "/interface/acquireNewsList.action" ;
		
		try {
			int currentPage = 1 ;	// 为当前所在的页，默认在第1页
			int lineSize = 10;		// 每次显示的记录数
			long allRecorders = 0 ;	// 表示全部的记录数

			String newsType = typeService.getNewsTypeById(type).getNewsTypeName();
			try{
				currentPage = Integer.parseInt(cp) ;
			} catch(Exception e) {}
			try{
				lineSize = Integer.parseInt(ls) ;
			} catch(Exception e) {}
			
			//获取该类别某一页的数据
			List<NewsInfo> all = service.getAllNewsInfoByType(newsType,currentPage,lineSize) ;
			List<NewsVO> allVO = new ArrayList<NewsVO>();
			for (int i = 0; i<all.size(); ++i){
				allVO.add(service.toNewsVO(all.get(i)));
			}
			
			allRecorders = service.getAllNewsInfoByType(newsType).size() ;
			setArticles(allVO);
			setRecorders(allRecorders);
			setUrl(URL);
			setPage(currentPage);
			setSize(lineSize);
	
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		setMsg("获取某一类型的文章列表");
		return ERROR;
	}

	/**
	 * 获取某一篇文章的详细内容
	 * @return 属性articleInfo，表示文章详情
	 */
	public String acquireNewsInfo(){
		try {
			NewsInfo pro = service.searchNewsInfo(pid);
			if(pro != null) {
				setArticleInfo(pro);
			}
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		setMsg("获取某一篇文章的详细内容错误");
		return ERROR;
	}
	
	/**
	 * 获取Excel列表
	 * @return JSON格式的表格列表
	 */
	@SuppressWarnings("unchecked")
	public String acquireTablelist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files"); //文件保存路径
		
		//获取所有表格文件 
		Collection<File> xlsFileCol = FileUtils.listFiles(new File(filepath), new String[]{"xls","xlsx"}, true); 
		tables.clear();  
		for (File xlsFileColFile : xlsFileCol) { 
		      String filename = xlsFileColFile.getName();
		      tables.add(filename);
		}
		
		return SUCCESS;
	}
	
	/**
	 * 获取上传文件列表
	 * @return JSON格式的列表
	 */
	@SuppressWarnings("unchecked")
	public String acquireFilelist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files"); //文件保存路径
		
		//获取所有文件 
		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
				new String[]{"xls","xlsx","ppt","pptx","doc","docx","chm","pdf","txt","rtf","pps","xml","rdf","wsdl","xpdl","xsl","bmp",
							"png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
		filenames.clear();  
		for (File allFileColFile : allFileCol) { 
		      String filename = allFileColFile.getName();
		      filelist.add(new FileVO(filename,allFileColFile.length(), new Date(allFileColFile.lastModified())));
		      filenames.add(filename);
		}
		int currentPage = 1 ;	// 为当前所在的页，默认在第1页
		int lineSize = 10;		// 每次显示的记录数
		try{
			currentPage = Integer.parseInt(cp) ;
		} catch(Exception e) {}
		try{
			lineSize = Integer.parseInt(ls) ;
		} catch(Exception e) {}
		
		int end = filenames.size();
		int offset = (currentPage - 1) * lineSize;
		end = lineSize + offset > end ? end : lineSize + offset;
		setFilelist(filelist.subList(offset, end));
		
		return SUCCESS;
	}

	/**
	 * 获取新闻图片列表
	 * @return JSON格式的列表
	 */
	@SuppressWarnings("unchecked")
	public String acquireNewsPhotolist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/upload"); //文件保存路径
		
		//获取所有新闻图片
		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
				new String[]{"bmp","png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
		uploadfiles.clear();  
		for (File allFileColFile : allFileCol) { 
		      String filename = allFileColFile.getName();
		      uploadfiles.add(filename);
		}
		
		return SUCCESS;
	}
	
	/**
	 * 备份文件
	 * @return JSON格式的列表
	 */
	public String uploadFiles(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/WEB-INF/files"); //文件保存路径
		
		if (FtpUtil.backupFile(ip, username, password, filepath,"files/"+MessageUtil.getID("config.id"))){
			System.out.println("upladfiles: backup success");
		}else{
			System.out.println("upladfiles: backup fail");
		}
		
		//获取所有文件 
//		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
//				new String[]{"xls","xlsx","ppt","pptx","doc","docx","chm","pdf","txt","rtf","pps","xml","rdf","wsdl","xpdl","xsl","bmp",
//							"png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
//		filenames.clear();  
//		for (File allFileColFile : allFileCol) { 
//		      String filename = allFileColFile.getName();
//		      filenames.add(filename);
//		    //备份文件到FTP
//			if (FtpUtil.backupFile(ip,username,password,filepath + File.separatorChar + filename,
//					"files/" + MessageUtil.getID("config.id")
//							+ File.separatorChar + filename)) {
//				System.out.println("upladfiles:" + filename + " backup success");
//			} else {
//				System.out.println("uploadfiles:" + filename + " backup fail");
//			}
//		}
		ip = null;
		username = null;
		password = null;
		
		return SUCCESS;
	}
	
	/**
	 * 备份新闻图片
	 * @return JSON格式的列表
	 */
	public String uploadNewsPhoto(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/upload"); //文件保存路径
		
		if (FtpUtil.backupFile(ip, username, password, filepath,"upload/"+MessageUtil.getID("config.id"))){
			System.out.println("uploadPhoto: backup success");
		}else{
			System.out.println("uploadPhoto: backup fail");
		}
		
		//获取所有新闻图片
//		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
//				new String[]{"bmp","png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
//		uploadfiles.clear();  
//		for (File allFileColFile : allFileCol) { 
//		      String filename = allFileColFile.getName();
//		      uploadfiles.add(filename);
//		    //备份文件到FTP
//			if (FtpUtil.backupFile(ip, username, password, filepath
//					+ File.separatorChar + filename, "upload/"
//					+ MessageUtil.getID("config.id") + File.separatorChar
//					+ filename)) {
//				System.out.println("uploadPhoto:" + filename + " backup success");
//			} else {
//				System.out.println("uploadPhoto:" + filename + " backup fail");
//			}
//		}
		ip = null;
		username = null;
		password = null;
		
		return SUCCESS;
	}
	
	/**
	 * 设置是否自动备份
	 * @return
	 */
	public String changeValid(){
			FtpUtil.setValid(valid);
			TimerManager.isValid=valid;
			if (url!=null&&username!=null&&password!=null){//修改备份配置文件
				if(!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.url",url)||
						!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.username",username)||
						!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.password",password)){
					return ERROR;
				}
			}
		return SUCCESS;
	}
	
	/**
	 * 备份数据库
	 * @return
	 */
	public String backupDatabase(){
		
		if (url!=null&&username!=null&&password!=null){//修改备份配置文件
			if(!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.url",url)||
					!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.username",username)||
					!HibernateMappingManager.updateHibernateConfig("hibernate_backup.cfg.xml", "connection.password",password)){
				return ERROR;
			}
		}
		
		System.out.println("start backup..");
		Configuration cfg = new AnnotationConfiguration();
   		SessionFactory sf = cfg.configure("hibernate_backup.cfg.xml").buildSessionFactory();
		service.backup(sf);
		typeService.backup(sf);
		tableService.backup(sf);
		if (sf != null){
				sf.close();
			}
		System.out.println("end backup..");
		
		return SUCCESS;
	}
	
	/**
	 * 查询图片列表
	 * @return 图片地址列表filenames
	 */
	@SuppressWarnings("unchecked")
	public String acquireImagelist(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/images"); //文件保存路径
		
		//获取所有图片文件 
		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
				new String[]{"bmp","png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
		filenames.clear();  
		for (File allFileColFile : allFileCol) { 
		      String filename = allFileColFile.getName();	     
		      filenames.add(filename);
		}
		int currentPage = 1 ;	// 为当前所在的页，默认在第1页
		int lineSize = 10;		// 每次显示的记录数
		try{
			currentPage = Integer.parseInt(cp) ;
		} catch(Exception e) {}
		try{
			lineSize = Integer.parseInt(ls) ;
		} catch(Exception e) {}
		
		int end = filenames.size();
		int offset = (currentPage - 1) * lineSize;
		end = lineSize + offset > end ? end : lineSize + offset;
		setFilenames(filenames.subList(offset, end));
		
		return SUCCESS;
	}
	
	/**
	 * 上传图片到FTP
	 * @return JSON格式的列表
	 */
	public String uploadImage(){
		String filepath = ServletActionContext.getServletContext().getRealPath("/images"); //文件保存路径
		
		if (FtpUtil.backupFile(ip, username, password, filepath,"images/"+MessageUtil.getID("config.id"))){
			System.out.println("image: backup success");
		}else{
			System.out.println("image: backup fail");
		}
		
		//获取所有图片
//		Collection<File> allFileCol = FileUtils.listFiles(new File(filepath), 
//				new String[]{"bmp","png","gif","jpeg","jpg","pjpeg","x-png","jpe"}, true); 
//		uploadfiles.clear();  
//		for (File allFileColFile : allFileCol) { 
//		      String filename = allFileColFile.getName();
//		      uploadfiles.add(filename);
//		    //备份文件到FTP
//			if (FtpUtil.backupFile(ip, username, password, filepath
//					+ File.separatorChar + filename, "images/"
//					+ MessageUtil.getID("config.id") + File.separatorChar
//					+ filename)) {
//				System.out.println("image:" + filename + " backup success");
//			} else {
//				System.out.println("image:" + filename + " backup fail");
//			}
//		}
		ip = null;
		username = null;
		password = null;
		
		return SUCCESS;
	}
	
	/**
	 * 上传图片到服务器
	 * @return 
	 * @throws Exception
	 */
	public String uploadPhoto() throws Exception {
        
		InputStream is;

		String pageErrorInfo = null;
		message = "successed";
		try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			is = new FileInputStream(file);
			String root = ServletActionContext.getServletContext().getRealPath("/images");//保存图片的目录
			
			//将后缀名改成小写
			String name =this.getFileFileName();
			int pos = name.lastIndexOf(".");
			String suffix = name.substring(pos);
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd_HHmmss");
			Random r=new Random();
			String newName = r.nextInt(1000)+sdf.format(new Date())+suffix.toLowerCase();
			
			File deskFile = new File(root,newName);

			//输出到外存中
			OutputStream os = new FileOutputStream(deskFile);
			byte [] bytefer = new byte[400];
			int length = 0 ; 
			while((length = is.read(bytefer) )>0)
			{
				os.write(bytefer,0,length);
			}
			os.close();
			is.close();		
			
			if (FtpUtil.isValid()){
				//备份文件到FTP
				if(FtpUtil.backupFile(root+File.separatorChar+newName, newName, "images/"+MessageUtil.getID("config.id"))){
					System.out.println("image:"+newName+" backup success");
				}else{
					System.out.println("image:"+newName+" backup fail");
				}
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			pageErrorInfo = e.getMessage();
			message = "failed"+pageErrorInfo;
			return ERROR;
		} catch (IOException e) {
			e.printStackTrace();
			message = "failed"+pageErrorInfo;
			return ERROR;
		}
        return SUCCESS;
    }
	
	/**
	 * 我的文件模块
	 * @author zxy
	 */	
	/**
	 * 上传文件到服务器
	 * @author zxy
	 * @return myFileUploadMessage：操作信息
	 * @throws Exception
	 */
	public String uploadFile() throws Exception {

		InputStream is;

		String pageErrorInfo = null;
		myFileUploadMessage = "successed";
		try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			is = new FileInputStream(upfile);
			String OutputPath = fileOperation.getFilePath("path");// 保存文件的目录

			String name = this.getUpfileFileName();// 获取文件名

			File deskFile = new File(OutputPath, name);

			if (!deskFile.exists()) {
				try {
					deskFile.createNewFile();
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				myFileUploadMessage = "文件已存在";
				is.close();
				return ERROR;
			}

			// 输出到外存中
			OutputStream os = new FileOutputStream(deskFile);
			byte[] bytefer = new byte[400];
			int length = 0;
			while ((length = is.read(bytefer)) > 0) {
				os.write(bytefer, 0, length);
			}
			os.close();
			is.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			pageErrorInfo = e.getMessage();
			myFileUploadMessage = "failed" + pageErrorInfo;
			return ERROR;
		} catch (IOException e) {
			e.printStackTrace();
			myFileUploadMessage = "failed" + pageErrorInfo;
			return ERROR;
		}
		return SUCCESS;
	}
	
	
	/**
	 * 新建文件夹
	 * @author zxy
	 * @throws Exception
	 */
	public String createFold() throws Exception {
		
		String fpath = fileOperation.getFilePath("path");
		File file = new File(fpath); 
				
	    if(file.exists()) {  	        
	        return ERROR;  
	    }else{
	    	file.mkdirs();
	    	return SUCCESS;
	    }  

    }
	
	/**
	 * 打开文件夹
	 * @author zxy
	 * @return myFilemessage:保存文件信息的json
	 * @throws Exception
	 */
	public String openFold() throws Exception {
		
		String fpath = fileOperation.getFilePath("path");
		File file = new File(fpath);
		if(!file.isDirectory()){
			//...
			return SUCCESS;
		}else{
	        String[] fileList = file.list();
	        //如果是空文件夹
	        if(fileList.length == 0){
	        	myFilemessage = "";
	        	return SUCCESS;
	        	
	        }
	        Map<String,String[]> mapForJson = new HashMap<String,String[]>();
	        
	        for (int i = 0; i < fileList.length; i++) {
                File readfile = new File(fpath + "\\" + fileList[i]); 
                
                String[] str = fileOperation.getFileInfo(readfile);
    			mapForJson.put(String.valueOf(i),str);
	        }
	        myFilemessage = fileOperation.getJson(mapForJson);
	        return SUCCESS;
		}
		

    }
	
	
	/**
	 * 按类型获取文件
	 * @author zxy
	 * @return showFileByTypeMessage:保存文件信息的json
	 * @throws Exception
	 */
	public String ShowFileByType(){
		
		try {
			fileType = fileOperation.getFileType("typeName");
			Map<String,String[]> mapForJson = new HashMap<String,String[]>();
			
			File file = new File(ServletActionContext.getServletContext().getRealPath("files"));
			getFileByType(file,mapForJson);
					
			net.sf.json.JSONObject json = net.sf.json.JSONObject.fromObject(mapForJson);	
			net.sf.json.JSONObject json2 = new net.sf.json.JSONObject();
			json2.put("num", fileByTypeNum);
			json2.put("info", json);
			showFileByTypeMessage = json2.toString();
					
			//System.out.println(s);
			fileByTypeNum = 0;
			return SUCCESS;
			
		} catch (Exception e1) {
			e1.printStackTrace();
			return ERROR;
		}
	}
			
	
	//按类型获取文件		
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void getFileByType(File file,Map m) throws Exception{
		
		File[] files = file.listFiles();
		
		for(File f:files){
			String fName = f.getName().toLowerCase();			
			if("doc".equals(fileType)){					
				if(fName.endsWith(".txt")
				   ||fName.endsWith(".doc")
				   ||fName.endsWith(".docx")
				   ||fName.endsWith(".ppt")
				   ||fName.endsWith(".pptx")
				   ||fName.endsWith(".xls")
				   ||fName.endsWith(".xlsx")
				   ||fName.endsWith(".pdf")){
										
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        
								
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}
			}else if("img".equals(fileType)){
				
				if(fName.endsWith(".bmp")
				   ||fName.endsWith(".gif")
				   ||fName.endsWith(".jpg")
				   ||fName.endsWith(".png")
				   ||fName.endsWith(".jpeg")
				   ||fName.endsWith(".psd")
				   ||fName.endsWith(".pcd")
				   ||fName.endsWith(".mac")){
									
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        
								
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}
				
			}else if("video".equals(fileType)){
				
				if(fName.endsWith(".avi")
				   ||fName.endsWith(".mkv")
				   ||fName.endsWith(".mp4")
				   ||fName.endsWith(".flv")
				   ||fName.endsWith(".rmvb")
				   ||fName.endsWith(".wmv")
				   ||fName.endsWith(".asf")
				   ||fName.endsWith(".swf")
				   ||fName.endsWith(".vob")
				   ||fName.endsWith(".ra")
				   ||fName.endsWith(".rm")
				   ||fName.endsWith(".mpg")
				   ||fName.endsWith(".mov")
				   ||fName.endsWith(".qt")
				   ||fName.endsWith(".dat")
				   ||fName.endsWith(".mlv")
				   ||fName.endsWith(".wmvhd")
				   ||fName.endsWith(".divx")
				   ||fName.endsWith(".xvid")
				   ||fName.endsWith(".m4v")
				   ||fName.endsWith(".3gp")
				   ||fName.endsWith(".mpeg")
				   ||fName.endsWith(".f4v")
				   ||fName.endsWith(".ogm")
				   ||fName.endsWith(".m2ts")
				   ||fName.endsWith(".mts")
				   ||fName.endsWith(".ts")
				   ||fName.endsWith(".tp")
				   ||fName.endsWith(".trp")
				   ||fName.endsWith(".ask")
				   ||fName.endsWith(".m2v")){
										
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        
								
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}				
			}else if("bt".equals(fileType)){
				if(fName.endsWith(".torrent")){
										
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        
								
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}
			}else if("music".equals(fileType)){
				if(fName.endsWith(".wma")
				   ||fName.endsWith(".aac")
				   ||fName.endsWith(".ac3")
				   ||fName.endsWith(".ogg")
				   ||fName.endsWith(".flac")
				   ||fName.endsWith(".ape")
				   ||fName.endsWith(".m4a")
				   ||fName.endsWith(".amr")
				   ||fName.endsWith(".wav")
				   ||fName.endsWith(".pcm")
				   ||fName.endsWith(".midi")
				   ||fName.endsWith(".mid")
				   ||fName.endsWith(".mka")
				   ||fName.endsWith(".mpc")
				   ||fName.endsWith(".cda")
				   ||fName.endsWith(".voc")
				   ||fName.endsWith(".aif")
				   ||fName.endsWith(".svx")
				   ||fName.endsWith(".snd")
				   ||fName.endsWith(".vqf")){
										
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        
								
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}
						
			}else if("other".equals(fileType)){
				if(!(fName.endsWith(".txt")
				   ||fName.endsWith(".doc")
				   ||fName.endsWith(".docx")
				   ||fName.endsWith(".ppt")
				   ||fName.endsWith(".pptx")
				   ||fName.endsWith(".xls")
				   ||fName.endsWith(".xlsx")
				   ||fName.endsWith(".pdf")
				   ||fName.endsWith(".bmp")
				   ||fName.endsWith(".gif")
				   ||fName.endsWith(".jpg")
				   ||fName.endsWith(".png")
				   ||fName.endsWith(".jpeg")
				   ||fName.endsWith(".psd")
				   ||fName.endsWith(".pcd")
				   ||fName.endsWith(".mac")
				   ||fName.endsWith(".avi")
				   ||fName.endsWith(".mkv")
				   ||fName.endsWith(".mp4")
				   ||fName.endsWith(".flv")
				   ||fName.endsWith(".rmvb")
				   ||fName.endsWith(".wmv")
				   ||fName.endsWith(".asf")
				   ||fName.endsWith(".swf")
				   ||fName.endsWith(".vob")
				   ||fName.endsWith(".ra")
				   ||fName.endsWith(".rm")
				   ||fName.endsWith(".mpg")
				   ||fName.endsWith(".mov")
				   ||fName.endsWith(".qt")
				   ||fName.endsWith(".dat")
				   ||fName.endsWith(".mlv")
				   ||fName.endsWith(".wmvhd")
				   ||fName.endsWith(".divx")
				   ||fName.endsWith(".xvid")
				   ||fName.endsWith(".m4v")
				   ||fName.endsWith(".3gp")
				   ||fName.endsWith(".mpeg")
				   ||fName.endsWith(".f4v")
				   ||fName.endsWith(".ogm")
				   ||fName.endsWith(".m2ts")
				   ||fName.endsWith(".mts")
				   ||fName.endsWith(".ts")
				   ||fName.endsWith(".tp")
				   ||fName.endsWith(".trp")
				   ||fName.endsWith(".ask")
				   ||fName.endsWith(".m2v")
				   ||fName.endsWith(".torrent")
				   ||fName.endsWith(".wma")
				   ||fName.endsWith(".aac")
				   ||fName.endsWith(".ac3")
				   ||fName.endsWith(".ogg")
				   ||fName.endsWith(".flac")
				   ||fName.endsWith(".ape")
				   ||fName.endsWith(".m4a")
				   ||fName.endsWith(".amr")
				   ||fName.endsWith(".wav")
				   ||fName.endsWith(".pcm")
				   ||fName.endsWith(".midi")
				   ||fName.endsWith(".mid")
				   ||fName.endsWith(".mka")
				   ||fName.endsWith(".mpc")
				   ||fName.endsWith(".cda")
				   ||fName.endsWith(".voc")
				   ||fName.endsWith(".aif")
				   ||fName.endsWith(".svx")
				   ||fName.endsWith(".snd")
				   ||fName.endsWith(".vqf"))){
										
					String[] str = fileOperation.getFileByTypeInfo(f,"files");                
					m.put(String.valueOf(++fileByTypeNum),str);						        					
				}
				if(f.isDirectory()){
					getFileByType(f,m);					
				}
						
			}else if("all".equals(fileType)){								
				String[] str = fileOperation.getFileByTypeInfo(f,"files");                
				m.put(String.valueOf(++fileByTypeNum),str);						        
				
			}
			
		}
	}
		
	/**
	 * 删除文件或文件夹
	 * @author zxy
	 * @throws Exception 
	 */
	public String deleteFiles() throws Exception{
		String fpath = fileOperation.getFilePath("deletePath");
		fileOperation.del(fpath);
		return SUCCESS;
	}	
	
	
	/**
	 * 下载文件
	 * @author zxy
	 * @return null
	 * @throws Exception 
	 */
	public String downFile() throws Exception{
		
		FileOperation fileOperation = new FileOperation();
		String fpath = fileOperation.getFilePath("downPath");	
		System.out.println(fpath);
		if(fpath != null) {
			fileOperation.downLoadFile(fpath);
			return null;
		}
		return SUCCESS;
	}	
	
	
	/**
	 * 文件重命名
	 * @author zxy
	 * @return reNameMessage :重命名信息
	 * @throws Exception 
	 */
	public String Rename() throws Exception{
		
		FileOperation fileOperation = new FileOperation();
		String fpath = fileOperation.getFilePath("renamePath");
		String oldName = fileOperation.getFileName(fpath);
		String newName = ServletActionContext.getRequest().getParameter("newName");
		if(!oldName.equals(newName)){//新的文件名和以前文件名不同时,才有必要进行重命名 
	         File oldfile=new File(fpath); 
	         File newfile=new File(oldfile.getParent()+"\\"+newName); 
	         if(!oldfile.exists()){
	        	reNameMessage = "此操作不可进行";
	            return ERROR;//重命名文件不存在
	         }
	         if(newfile.exists()){//若在该目录下已经有一个文件和新文件名相同，则不允许重命名 
	        	reNameMessage = "该文件已存在";
	         	return ERROR;
	         }else{ 
	             oldfile.renameTo(newfile); 
	             return SUCCESS;
	         } 
	    }else{
	    	reNameMessage = "请重新输入文件名";
	    	return ERROR;
	    }
	}	
	
	/**
	 * 我的文章模块
	 * @author tt&zxy
	 */
	
	/**
	 * 增加文章
	 * @author tt
	 */
	public String insertArticle(){
		
		Admin admin = articelUtil.LoginAuthority("admin");  //登录的管理员
			
		int newsInfoId = 0;//新闻ID
		if (admin == null){
			setMsg(MessageUtil.get("adminlogin.msg"));
			return ERROR;
		}else {
			NewsInfo news = null;
			//现在NewsTypeId固定为1  by zxy
			//String type = typeService.getNewsTypeById(1).getNewsTypeName()+",";
			String type = typeService.getNewsTypeById(2).getNewsTypeName();
			setMsg(MessageUtil.get("newsinfo.insert.false"));
			List<NewsInfo> infoList = service.getAllNewsInfo();
			newsInfoId = ((infoList.size() == 0)? 1: (service.getAllNewsInfo().get(0).getNewsInfoId()+1));//新的ID等于最大的ID加1
			news = new NewsInfo(newsInfoId,name,content,
					new Date(new java.util.Date().getTime()),author,type,admin.getAdminName());//创建时间为当前时间
			try {//更新数据库
				if(service.addNewsInfo(news)){
					setMsg(MessageUtil.get("newsinfo.insert.true"));
				}
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
		return ERROR;
	}
	
	/**
	 * 删除文章
	 * @author zxy
	 */	
	public String deleteArticle(){
		
		Admin admin = (Admin)articelUtil.LoginAuthority("admin");//登录的管理员
		if (admin == null){
			setMsg(MessageUtil.get("adminlogin.msg"));
			return ERROR;
		}else {
			int[] newsId = new int[1];
			newsId[0] = pid;
			try {
				if (service.deleteNewsInfo(newsId)) {
					setMsg(MessageUtil.get("newsinfo.delete.true"));
				} else {
					setMsg(MessageUtil.get("newsinfo.delete.false"));
				}
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		return ERROR;
	}
	
	
	/**
	 * 按类别分页显示文章
	 * @author zxy
	 * @throws Exception 
	 */
	public String listArticle() throws Exception{
		
		String type ="all";
		
		if(newsTypeId != null){
			type = typeService.getNewsTypeById(Integer.valueOf(newsTypeId).intValue()).getNewsTypeName();
		}
		
		Page page = new Page();
		int cp = Integer.valueOf(currentPage).intValue();
		int pageSize = 20;
		
		page.setEveryPage(pageSize);
		page.setBeginIndex((cp-1)*pageSize);
		
		List<NewsInfo> all = service.getNewsInfoByType(type, page); 
		Iterator<NewsInfo> iter = all.iterator();  
		
		int i=1;
		Map<String,String[]> mapForJson = new HashMap<String,String[]>();
        while(iter.hasNext()){  
        	NewsInfo n = iter.next();
        	//Article Id,title,Time,Type
        	String[] str = {String.valueOf(n.getNewsInfoId()),n.getNewsInfoTitle(),String.valueOf(n.getNewsInfoTime()),n.getNewsType()};
        	
 	        mapForJson.put(String.valueOf(i++),str);
 	    }
        net.sf.json.JSONObject json = net.sf.json.JSONObject.fromObject(mapForJson);	
		net.sf.json.JSONObject json2 = new net.sf.json.JSONObject();
		json2.put("totalCount", all.size());
		json2.put("info", json);
		myArticleMessage = json2.toString();

		return SUCCESS;

	}
	

	/**
	 * 编辑文章
	 * @author zxy
	 */
	public String updateArticle(){
	
		Admin admin = (Admin)articelUtil.LoginAuthority("admin");//登录的管理员
		
		//判断文章是否修改
		if (admin == null){
			setMsg(MessageUtil.get("adminlogin.msg"));
			return ERROR;
		}else {
			NewsInfo newsInfo = service.searchNewsInfo(pid);
			boolean update = false;
			
			
			if(!name.equals("")&&name!=null){
				if(!name.equals(newsInfo.getNewsInfoTitle())){
					newsInfo.setNewsInfoTitle(name);
					update = true;
				}
			}
			
			if(!author.equals("")&&author!=null){
				if(!author.equals(newsInfo.getNewsAuthor())){
					newsInfo.setNewsAuthor(author);
					update = true;
				}
			}
			
			if(!content.equals("")&&content!=null){
				if(!content.equals(newsInfo.getNewsInfoContent())){
					newsInfo.setNewsInfoContent(content);
					update = true;
				}
			}
			
			if(update){
				newsInfo.setNewsInfoTime(new Date(new java.util.Date().getTime()));
			}
					
			try {
				if (service.updateNewsInformation(newsInfo)) {
					setMsg(MessageUtil.get("newsinfo.delete.true"));
				} else {
					setMsg(MessageUtil.get("newsinfo.delete.false"));
				}
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		return ERROR;
	}


	/**
	 * 增加文章类别
	 * @author zxy
	 * @return
	 */
	public String addArticleType(){
				
		Admin admin = (Admin)articelUtil.LoginAuthority("admin");
		if (admin == null){
			setMsg(MessageUtil.get("adminlogin.msg"));
			return ERROR;
		}else {
			try {//更新数据库
				if(typeService.addNewsType(newsTypeName, newsTypeDescripe)){
					setMsg(MessageUtil.get("newsinfo.insert.true"));
				}
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		return ERROR;
	}
	
	
	
	
	/**
	 * 保存用户信息
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String saveInfo(){
		JSONParser parser=new JSONParser();  
		JSONObject demoJson;
		try {
			demoJson = (JSONObject) parser.parse(content);
			Map<String, String> jsonMap = new HashMap<String,String>();
			Iterator iter = demoJson.entrySet().iterator();
			while (iter.hasNext()) {
			    Map.Entry entry = (Map.Entry) iter.next();
			    jsonMap.put((String)entry.getKey(), (String)entry.getValue());
			}

			try {
				if(!Common.writeProperties("/org/mystock/utils/identity.properties", jsonMap, true)){
						msg = "write error";
						return ERROR;
				}
			} catch (IOException e) {
				e.printStackTrace();
				msg = "io error";
				return ERROR;
			}
			msg = "success";
		} catch (ParseException e) {
			e.printStackTrace();
			msg = "paseException";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 读取基本配置信息
	 * @return
	 */
	public String readConfig(){
		configId = MessageUtil.getID("config.id");
		configName = MessageUtil.getID("config.name");
		configDoName = MessageUtil.getID("config.doName");
		configSSID = MessageUtil.getID("config.ssid");
		return SUCCESS;
	}
	
}
