package com.stockii.httpclient;

/**
 * Test tools of HttpRequest.
 * @author Vincent
 * @date 2014-11-23
 */
public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// send get request
		String getResponse = StockiiHTTPRequest.sendGet(
				"http://192.168.1.220:8080/client/api", "command=liststockclassfication&response=json");
		
		System.out.println(getResponse);

		// send post request
		String postResponse = StockiiHTTPRequest.sendGet(
				"http://192.168.1.220:8080/client/api", "command=liststockclassfication&response=json");
		System.out.println(postResponse);
	}

}
