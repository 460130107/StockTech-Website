package org.news.model;

public class Image {
	
	private int imageId;
	private int newsInfoId;
	private String imageName;
	private String imageDescript;
	
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public int getNewsInfoId() {
		return newsInfoId;
	}
	public void setNewsInfoId(int newsInfoId) {
		this.newsInfoId = newsInfoId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImageDescript() {
		return imageDescript;
	}
	public void setImageDescript(String imageDescript) {
		this.imageDescript = imageDescript;
	}
	
	public Image(int imageId, int newsInfoId, String imageName,
			String imageDescript) {
		super();
		this.imageId = imageId;
		this.newsInfoId = newsInfoId;
		this.imageName = imageName;
		this.imageDescript = imageDescript;
	}
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
	


}
