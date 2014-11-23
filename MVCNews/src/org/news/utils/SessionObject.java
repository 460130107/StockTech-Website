
package org.news.utils;

import java.io.Serializable;


public class SessionObject implements Serializable{
	

	private static final long serialVersionUID = -5657108569601338488L;
	
	private String sRand = "";

	public String getsRand() {
		return sRand;
	}

	public void setsRand(String sRand) {
		this.sRand = sRand;
	}


	
	
}