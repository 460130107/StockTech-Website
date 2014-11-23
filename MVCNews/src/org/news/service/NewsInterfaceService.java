package org.news.service;

import org.news.dao.NewsInfoDAO;
import org.news.dao.NewsInterfaceDao;


public class NewsInterfaceService {
	
	private NewsInterfaceDao newsInterfaceDao = new NewsInterfaceDao();
	
	
	public String getImage(int newsInfoId){
		
		return newsInterfaceDao.getImage(newsInfoId);
		
	}

}
