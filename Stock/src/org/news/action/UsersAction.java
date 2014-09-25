/*
 * ϵͳ���ƣ����ŷ���ϵͳ
 * 
 * ������UsersAction
 * 
 * �������ڣ�2014-08-21
 */
package org.news.action;

import java.util.List;

import org.news.model.Users;
import org.news.service.UserService;
import org.news.utils.MD5Code;
import org.news.utils.MessageUtil;

import com.opensymphony.xwork2.ActionSupport;

/**
 * ���ڻ�Ա������Action
 * 
 * @author tt
 * @version 14.8.18
 */
public class UsersAction extends ActionSupport {

	private static final long serialVersionUID = -7456160560536320060L;
	private UserService userService;
	
	/**
	 * @param userService the userService to set
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	String kw;//��ѯ�ؼ���
	String pg;  //URL
	String cp; //Ϊ��ǰ���ڵ�ҳ
	String ls; //ÿ����ʾ�ļ�¼��
	long recorders; //��ѯ����ȫ����¼��
	String url;
	int page;
	int size;
	int pid; //��ԱID
	Users user; //��Ա��Ϣ
	List<Users> users; //��Ա�б�
	String msg;//��ʾ��Ϣ

	String mid;//�˺�
	String password;//����
	String info;//��ע
	String realName;//��ʵ����
	String sex;//�Ա�
	String email;//�����ʼ�
	String phone;//�绰����
	String idNum;//����֤��

	
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
	
	public String getKw() {
		return kw;
	}

	public void setKw(String kw) {
		this.kw = kw;
	}

	public String getPg() {
		return pg;
	}

	public void setPg(String pg) {
		this.pg = pg;
	}

	public String getCp() {
		return cp;
	}

	public void setCp(String cp) {
		this.cp = cp;
	}

	public String getLs() {
		return ls;
	}

	public void setLs(String ls) {
		this.ls = ls;
	}

	/**
	 * @return the allRecorders
	 */
	public long getRecorders() {
		return recorders;
	}

	/**
	 * @param allRecorders the allRecorders to set
	 */
	public void setRecorders(long recorders) {
		this.recorders = recorders;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = new MD5Code().getMD5ofStr(password);
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	/**
	 * @return
	 */
	public String execute() {
		return SUCCESS;
	}
	
	/**
	 * ��ȡ���еĻ�Ա�б�
	 * @return
	 */
	public String list(){
		String URL = "Users_list.action" ;
		
		try {
			int currentPage = 1 ;	// Ϊ��ǰ���ڵ�ҳ��Ĭ���ڵ�1ҳ
			int lineSize = 20;		// ÿ����ʾ�ļ�¼��
			long allRecorders = 0 ;	// ��ʾȫ���ļ�¼��
			String keyWord = kw;	// ���ղ�ѯ�ؼ���
			
			try{
				currentPage = Integer.parseInt(cp) ;
			} catch(Exception e) {}
			try{
				lineSize = Integer.parseInt(ls) ;
			} catch(Exception e) {}
			if(keyWord == null){
				keyWord = "" ;	// ���ģ����ѯû�йؼ��֣����ʾ��ѯȫ��
			}
			
			List<Users> all = userService.getAllUsers(keyWord,currentPage,lineSize) ;
			allRecorders = userService.getCount(keyWord) ;
			setUsers(all);
			setRecorders(allRecorders);
			setUrl(URL);
			setPage(currentPage);
			setSize(lineSize);
	
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	/**
	 * �鿴�� Ա��Ϣ
	 * @return
	 */
	public String show(){
		int userId = pid ;
		try {//��ȡ��ǰ��ԱVO�������¸�ҳ��
			Users pro = userService.findUsersById(userId);
			if(pro != null) {
				setUser(pro);
			}
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	/**
	 * ɾ����Ա��Ϣ
	 * @return
	 */
	public String delete(){
		int currentPage = 1 ;	// Ϊ��ǰ���ڵ�ҳ��Ĭ���ڵ�1ҳ
		int lineSize = 20;		// ÿ����ʾ�ļ�¼��
		String page = pg ;
		try{
			currentPage = Integer.parseInt(cp) ;
		} catch(Exception e) {}
		try{
			lineSize = Integer.parseInt(ls) ;
		} catch(Exception e) {}

		int[] usersId = new int[1];
		usersId[0] = pid;
		try {
			if (userService.deleteUserss(usersId)) {
				setMsg(MessageUtil
						.get("user.delete.true"));
			} else {
				setMsg(MessageUtil
						.get("user.delete.false"));
			}
			
			//������ת�������Դ����¸�ҳ��
			setPg(page);
			setCp(""+currentPage);
			setLs(""+lineSize);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	/**
	 * ����ǰ�Ĳ���
	 * @return
	 */
	public String updatepre(){
		int userId = pid ;
		try {//��ȡ��ǰ��ԱVO�������¸�ҳ��
			Users pro = userService.findUsersById(userId);
			if(pro != null) {
				setUser(pro);
			}
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	/**
	 * ���¹���Ա
	 * @return
	 */
	public String update(){
		int userid = pid;
		
		int currentPage = 1 ;	// Ϊ��ǰ���ڵ�ҳ��Ĭ���ڵ�1ҳ
		int lineSize = 20;		// ÿ����ʾ�ļ�¼��
		String page = pg ;
		try{
			currentPage = Integer.parseInt(cp) ;
		} catch(Exception e) {}
		try{
			lineSize = Integer.parseInt(ls) ;
		} catch(Exception e) {}
		
		Users user = new Users(userid,mid,password,info,realName,sex,email,phone,idNum);
		try {//�������ݿ�
			if (userService.updateUsers(user)) {
				setMsg(MessageUtil
						.get("user.update.true"));
			} else {
				setMsg(MessageUtil
						.get("user.update.false"));
			}
			
			setPg(page);
			setCp(""+currentPage);
			setLs(""+lineSize);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
}