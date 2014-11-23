/*
 * ϵͳ���ƣ�˹��˸�����վ����ϵͳ
 * 
 * ������UploadAction
 * 
 * �������ڣ�2014-09-16
 */
package org.news.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;



/**
 * ��̨�����ϴ�ͼƬ
 * @author tt
 * @version 14.9.16
 */
public class UploadAction extends BaseAction {

	private static final long serialVersionUID = -1154768183800684676L;

	private File imgFile;
	
	public String upload(){
		try {			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd_HHmmss");
			Random r=new Random();
			String path=ServletActionContext.getServletContext().getRealPath("/");
			//String path = ServletActionContext.getRequest().getContextPath();
			String imgName=sdf.format(new Date())+r.nextInt(100)+".jpg";
		
			System.out.println(path+"images\\"+imgName);
			FileUtils.copyFile(imgFile,new File(path+"images\\"+imgName));
			
			/*
			if (FtpUtil.isValid()){
				//�����ļ���FTP
				if(FtpUtil.backupFile(path+"upload/"+imgName, imgName,"upload/"+MessageUtil.getID("config.id"))){
					System.out.println("upload:"+imgName+" backup success");
				}else{
					System.out.println("upload:"+imgName+" backup fail");
				}
			}
			*/
			//��kindeditor����json��ʽͼƬ·��
			//String outPath=ServletActionContext.getRequest().getScheme()+"://"+ServletActionContext.getRequest().getServerName()+":"+ServletActionContext.getRequest().getServerPort()+ServletActionContext.getRequest().getContextPath()+"/";
			String outPath = ServletActionContext.getServletContext().getRealPath("/");
			String outImageName=outPath+"images\\"+imgName;
			//String returnUrl="{\"error\":0,\"url\":\""+outImageName+"\"}";
			String returnUrl = outImageName;
			System.out.println(returnUrl);
			ServletActionContext.getResponse().getWriter().print(returnUrl);
			return SUCCESS;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public File getImgFile() {
		return imgFile;
	}
	public void setImgFile(File imgFile) {
		this.imgFile = imgFile;
	}
	
}

