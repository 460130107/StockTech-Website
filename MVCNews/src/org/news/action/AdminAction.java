/*
 * ϵͳ���ƣ��Ż���վ
 * 
 * ������UserLoginAction
 * 
 * �������ڣ�2014-11-11
 */
package org.news.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import org.news.model.Admin;
import org.news.service.AdminService;
import org.news.utils.MD5Code;
import org.news.utils.MessageUtil;

import com.opensymphony.xwork2.ActionSupport;

/**
 * ����Admin��ɾ�Ĳ�����Action
 * 
 * @author zxy
 * @version 14.11.15
 * 
 */
public class AdminAction extends ActionSupport {

	private String adminName;
	private String password;
	private String note;
	private String adminid;
	private String newpassword;

	private List<Admin> all; // ���й���Ա��Ϣ
	private Admin admin;
	private String msg;
	private String url;

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getAdminid() {
		return adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getAll() {
		return all;
	}

	public void setAll(List<Admin> all) {
		this.all = all;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	private static final long serialVersionUID = 6065450256349104337L;
	private AdminService adminService = new AdminService();

	/**
	 * 
	 * ��ȡ���еĹ���Ա�б�
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public String list() throws ServletException, IOException {

		try {
			this.setAll(adminService.getAllAdmin());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	/**
	 * ���ӹ���Ա
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public String insert() throws ServletException, IOException {

		Admin admin = new Admin(0, "", "", "");
		List<Admin> adminList = adminService.getAllAdmin();
		int adminID = ((adminList.size() == 0) ? 1 : (adminList.get(
				adminList.size() - 1).getAdminId() + 1));

		admin.setAdminId(adminID);
		admin.setAdminName(adminName);
		admin.setAdminInfo(note);
		admin.setAdminPass(new MD5Code().getMD5ofStr(password));// ����Ҫ����

		try {// �������ݱ���
			if (adminService.addAdmin(admin)) {
				this.setMsg(MessageUtil.get("admin.insert.true"));

			} else {
				this.setMsg(MessageUtil.get("admin.insert.false"));

			}
			this.setUrl("Admin_list.action");// �ɹ���ص�ԭ����

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/**
	 * ����ǰ�Ĳ���
	 * 
	 * @return
	 */
	public String updatepre() {
		try {// ����ID��Ӧ�Ĺ���Ա��Ϣ
			Admin admin = adminService.findAdminById(Integer.parseInt(adminid));
			setAdmin(admin);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	/**
	 * ���¹���Ա
	 * 
	 * @return
	 */
	public String update() {
		// �����޸ĵ�ֵ�½�VO
		Admin admin = new Admin(0, "", "", "");

		admin.setAdminId(Integer.parseInt(adminid));
		admin.setAdminName(adminName);
		admin.setAdminInfo(note);
		admin.setAdminPass(new MD5Code().getMD5ofStr(newpassword));

		String md5 = new MD5Code().getMD5ofStr(password);
		String pass = adminService.findAdminById(Integer.parseInt(adminid))
				.getAdminPass();

		try {// �������ݿ�
				// ԭ��������Ƚ�
			if (!pass.equals(md5)) {
				setMsg(MessageUtil.get("admin.password.false"));
			} else if (adminService.updateAdmin(admin)) {
				setMsg(MessageUtil.get("admin.update.true"));
			} else {
				setMsg(MessageUtil.get("admin.update.false"));
			}
			setUrl("Admin_list.action");
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	/**
	 * �鿴����Ա��Ϣ
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public String show() throws ServletException, IOException {

		try {
			Admin admin = adminService.findAdminById(Integer.parseInt(adminid));
			setAdmin(admin);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;

	}

	/**
	 * ɾ������Ա��Ϣ
	 * 
	 * @return
	 */
	public String delete() {
		int[] ids = new int[1];// ��ʱֻ��ɾ��һ��
		ids[0] = Integer.parseInt(adminid);
		try {
			if (adminService.deleteAdmins(ids)) {
				setMsg(MessageUtil.get("admin.delete.true"));
			} else {
				setMsg(MessageUtil.get("admin.delete.true"));
			}
			setUrl("Admin_list");
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

}
