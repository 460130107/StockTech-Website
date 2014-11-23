package org.news.action;

import java.util.HashMap;
import java.util.Map;

import org.news.utils.NewsUtil;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {

	private static final long serialVersionUID = 2774461710991143270L;

	private String securityCode;  //֤ȯ����
	private String securityName;  //֤ȯ���
	private String newPrice;  //���¼�
	private String quoteChange;  //�ǵ���
	private String chart;  //����ͼ
	private String volume;  //�ɽ���
	private String turnover;  //�ɽ���
	private String highestAndLowest; //���/���
	private String yesAndToday;  //����/��
	private String earnings;  //��ӯ��
	
	private String all;   //json��ʽ��������Ϣ
	
	public String getAll() {
		return all;
	}
	public void setAll(String all) {
		this.all = all;
	}
	public String getSecurityCode() {
		return securityCode;
	}
	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}
	public String getSecurityName() {
		return securityName;
	}
	public void setSecurityName(String securityName) {
		this.securityName = securityName;
	}
	public String getNewPrice() {
		return newPrice;
	}
	public void setNewPrice(String newPrice) {
		this.newPrice = newPrice;
	}
	public String getQuoteChange() {
		return quoteChange;
	}
	public void setQuoteChange(String quoteChange) {
		this.quoteChange = quoteChange;
	}
	public String getChart() {
		return chart;
	}
	public void setChart(String chart) {
		this.chart = chart;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getTurnover() {
		return turnover;
	}
	public void setTurnover(String turnover) {
		this.turnover = turnover;
	}
	public String getHighestAndLowest() {
		return highestAndLowest;
	}
	public void setHighestAndLowest(String highestAndLowest) {
		this.highestAndLowest = highestAndLowest;
	}
	public String getYesAndToday() {
		return yesAndToday;
	}
	public void setYesAndToday(String yesAndToday) {
		this.yesAndToday = yesAndToday;
	}
	public String getEarnings() {
		return earnings;
	}
	public void setEarnings(String earnings) {
		this.earnings = earnings;
	}
	
	
	public String forTest() throws Exception{
		
		this.chart = "chart";
		this.earnings = "298.50";
		this.highestAndLowest = "11.94/11.39";
		this.newPrice = "11.94";
		this.quoteChange = "10.05%";
		this.securityCode = "600283";
		this.securityName = "Ǯ��ˮ��";
		this.turnover = "18219.23";
		this.volume = "155974";
		this.yesAndToday = "10.85/11.64";
		
		Map<String, String> allInfo = new HashMap<String, String>();
		
		allInfo.put("chart", chart);
		allInfo.put("earnings", this.earnings);
		allInfo.put("hightestAndLowest", this.highestAndLowest);
		allInfo.put("newPrice",this.newPrice);
		allInfo.put("quoteChange",this.quoteChange);
		allInfo.put("securityCode", this.securityCode);
		allInfo.put("securityName", this.securityName);
		allInfo.put("turnover", this.turnover);
		allInfo.put("volume", this.volume);
		allInfo.put("yesAndToday", this.yesAndToday);
		
		NewsUtil newsUtil = new NewsUtil();
		
		all = newsUtil.getJson(allInfo);
		
		return SUCCESS;
	}
	

}
