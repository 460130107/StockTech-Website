package org.news.service;

import java.util.List;

import org.news.dao.ImageDao;
import org.news.model.Image;

public class ImageService {
	
	ImageDao imageDao = new ImageDao();
	
	public List<Image> getAllImages(){	
		return imageDao.getAllImages();
	}
	
	public boolean addImage(Image image){
		return imageDao.addImage(image);
	}
	

	public boolean deletImage(String name){
		return imageDao.deletImage(name);
	}
}
