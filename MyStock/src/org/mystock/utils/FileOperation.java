package org.mystock.utils;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.ServletOutputStream;

import org.apache.struts2.ServletActionContext;

public class FileOperation {
	
	
	/**
	 * 获取路径
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	public String getFilePath(String path) throws Exception {       
		String fpath = URLDecoder.decode(URLDecoder.decode(ServletActionContext.getRequest().getParameter(path),"UTF-8"),"UTF-8");
				
		if(fpath.equals("root")){
			fpath = ServletActionContext.getServletContext().getRealPath("files");
		}else{
			fpath = ServletActionContext.getServletContext().getRealPath("files") + "\\" + fpath.substring(fpath.indexOf("\\")+1);
		}
		/*
		if(path.equals("root")){
			path = "C:\\Stockii\\MyStock\\WebRoot\\files";
		}else{
			path = "C:\\Stockii\\MyStock\\WebRoot\\files" + "\\" + path.substring(path.indexOf("\\")+1);
		}		
		*/	
        return fpath;
    }
	/*
	public String getFilePath() throws Exception {       
		String fpath = URLDecoder.decode(URLDecoder.decode(ServletActionContext.getRequest().getParameter("path"),"UTF-8"),"UTF-8");
				
		if(fpath.equals("root")){
			fpath = ServletActionContext.getServletContext().getRealPath("files");
		}else{
			fpath = ServletActionContext.getServletContext().getRealPath("files") + "\\" + fpath.substring(fpath.indexOf("\\")+1);
		}		
        return fpath;
	}*/
	
	/**
	 * 获取文件保存路径
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	/*
	public String getSavePath() throws Exception {       
		
		String path = ServletActionContext.getRequest().getParameter("path");	
		if(path.equals("root")){
			path = "C:\\Stockii\\MyStock\\WebRoot\\files";
		}			
        return path;
    }
	*/
	
	
	/**
	 * 从路径中获取文件名
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	//获取文件名
	public String getFileName(String absolutePath){
		
		
		int pos = absolutePath.lastIndexOf("\\");
		String suffix = absolutePath.substring(pos+1);
		System.out.println(suffix);
		return suffix;
		
	}
	
	
	
	
	
	/**
	 * 获取文件修改时间
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	
	public String getLastChangeDate(File file) throws Exception {
		// 毫秒数
		long modifiedTime = file.lastModified();
		String lastTime = getFormatDate(modifiedTime);
		return lastTime;
	}
	
	/**
	 * 获取文件大小
	 * @author zxy
	 * @return
	 * @throws Exception
	 */

	public String getFileSize(File file) throws Exception {
	    
		String size = FormatSize(file.length());
		return size;
		
	}

	/**
	 * 格式化日期
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	//FormatDate
	public String getFormatDate(long strDate) throws Exception {
	    java.util.Date date = new java.util.Date(strDate);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String dddd = df.format(date);
		return dddd;
	}
	
	/**
	 * 格式化文件大小
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	//FormatSize
	public String FormatSize(long size) throws Exception {  
        double kiloByte = size/1024;  
        if(kiloByte < 1) {  
            return size + "Byte";  
        }  
          
        double megaByte = kiloByte/1024;  
        if(megaByte < 1) {  
            BigDecimal result1 = new BigDecimal(Double.toString(kiloByte));  
            return result1.setScale(0, BigDecimal.ROUND_HALF_UP).toPlainString() + "KB";  
        }  
          
        double gigaByte = megaByte/1024;  
        if(gigaByte < 1) {  
            BigDecimal result2  = new BigDecimal(Double.toString(megaByte));  
            return result2.setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + "MB";  
        }  
          
        double teraBytes = gigaByte/1024;  
        if(teraBytes < 1) {  
            BigDecimal result3 = new BigDecimal(Double.toString(gigaByte));  
            return result3.setScale(2, BigDecimal.ROUND_HALF_UP).toPlainString() + "GB";  
        }  
        BigDecimal result4 = new BigDecimal(teraBytes);  
        return result4.setScale(3, BigDecimal.ROUND_HALF_UP).toPlainString() + "TB";  
	} 
	
	/**
	 * 获取文件类型：文件or文件夹
	 * @author zxy
	 * @return
	 * @throws Exception
	 */
	//FileType
	public String getFileType(File file) throws Exception {	
		String type;
		if(file.isDirectory()){
			type = "folder";
		}else{
			type = "file";
		}	
		return type;
	}
	
	/**
	 * 将Json转换为str
	 * @author zxy
	 * @return
	 * @throws Exception
	 */	
	public String getJson(Map map) throws Exception {
		net.sf.json.JSONObject json = net.sf.json.JSONObject.fromObject(map);		
		String str = json.toString();
		return str;
		
	}
	/**
	 * 获取文件信息：type,name,size,date
	 * @author zxy
	 * @return
	 * @throws Exception
	 */		
	public String[] getFileInfo(File readfile) throws Exception {
		String type = getFileType(readfile);
		String name = readfile.getName();
		String size = getFileSize(readfile);
		String date = getLastChangeDate(readfile);	
		String[] str= new String[]{type,name,size,date}; 
		return str;
		
	}
	
	
	
	/**
	 * 获取前端请求文件类型
	 * @author zxy
	 * @return
	 * @throws Exception
	 */	
	public String getFileType(String s) throws Exception {
		String type = ServletActionContext.getRequest().getParameter(s);	
		return type;
	}
	

		
	/**
	 * 获取文件相对目录
	 * @author zxy
	 * @return
	 * @throws Exception
	 */

	public String getFileByTypePath(File root,File file) throws Exception {
	    
		String path = file.getPath();
		path = path.substring(root.getPath().length()+1);
		
		return path;
		
	}
		
	
	/**
	 * 获取文件信息：name,size,date,path
	 * @author zxy
	 * @return
	 * @throws Exception
	 */		
	public String[] getFileByTypeInfo(File readfile) throws Exception {
		String name = readfile.getName();
		
		String size = getFileSize(readfile);
		String date = getLastChangeDate(readfile);	
		File file = new File(ServletActionContext.getServletContext().getRealPath("files"));
		String path = getFileByTypePath(file,readfile);
		
		String[] str= new String[]{name,size,date,path}; 
		return str;
		
	}
	
	
	/**
	 * 删除文件或文件夹
	 * @author zxy
	 * @return
	 * @throws FileNotFoundException,IOException
	 */	
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
	
	
	public void downFile(String fpath) throws Exception{
		
		File file = new File(fpath);
		if(file.isFile()){
			ServletActionContext.getResponse().setContentType("application/x-unknown;charset=GB2312");
			ServletActionContext.getResponse().setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(file.getName(),"UTF8"));
			ServletActionContext.getResponse().setContentLength((int)file.length());
			int i = 0;
			byte [] bt = new byte[8192];
			FileInputStream fis = new FileInputStream(file);
			ServletOutputStream sos = ServletActionContext.getResponse().getOutputStream();
			while( (i = fis.read(bt)) != -1){
				sos.write(bt,0,i);
			}
			sos.flush();
			sos.close();
			sos = null;
			fis.close();
		}		
	}
	
	
	

}
