package org.news.service;

import java.util.List;

import org.news.dao.AdviceDAO;
import org.news.model.Advice;

public class AdviceService {
	
	
private AdviceDAO adviceDAO = new AdviceDAO();
	
	
	/**
	 * 添加建议
	 * @param advice
	 * @return 操作是否成功
	 */
	public boolean addAdvice(Advice advice){
		
		return adviceDAO.addAdvice(advice);
	}
	
	
	/**
	 * 查询所有的会员信息
	 * @return 会员集合
	 */
     public List<Advice> getAllAdvice(){
    	 return adviceDAO.getAllAdvice();
     }
     
	
}
