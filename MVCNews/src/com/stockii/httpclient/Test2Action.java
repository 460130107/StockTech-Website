package com.stockii.httpclient;

import com.opensymphony.xwork2.ActionSupport;

public class Test2Action extends ActionSupport {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1893251764816414759L;
	
	private String getResponse;	
	private String postResponse;


	public String getPostResponse() {
		return postResponse;
	}


	public void setPostResponse(String postResponse) {
		this.postResponse = postResponse;
	}


	public String getGetResponse() {
		return getResponse;
	}


	public void setGetResponse(String getResponse) {
		this.getResponse = getResponse;
	}
	
	
	
	@Override
	public String execute() throws Exception {
		
	
		
		getResponse = StockiiHTTPRequest.sendGet(
				"http://192.168.1.220:8080/client/api", "command=liststockclassfication&response=json");
		
		System.out.println(getResponse);

		// send post request
		postResponse = StockiiHTTPRequest.sendGet(
				"http://192.168.1.220:8080/client/api", "command=liststockclassfication&response=json");
		System.out.println(postResponse);
		
		return SUCCESS;
	}

	
	
}
