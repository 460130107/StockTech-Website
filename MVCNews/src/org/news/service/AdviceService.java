package org.news.service;

import java.util.List;

import org.news.dao.AdviceDAO;
import org.news.model.Advice;

public class AdviceService {
	
	
private AdviceDAO adviceDAO = new AdviceDAO();
	
	
	/**
	 * ��ӽ���
	 * @param advice
	 * @return �����Ƿ�ɹ�
	 */
	public boolean addAdvice(Advice advice){
		
		return adviceDAO.addAdvice(advice);
	}
	
	
	/**
	 * ��ѯ���еĻ�Ա��Ϣ
	 * @return ��Ա����
	 */
     public List<Advice> getAllAdvice(){
    	 return adviceDAO.getAllAdvice();
     }
     
	
}
