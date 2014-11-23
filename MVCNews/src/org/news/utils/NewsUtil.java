package org.news.utils;

import java.util.Map;
import java.util.Map.Entry;

import net.sf.json.JSONObject;

public class NewsUtil {
	/**
	 * ½«Json×ª»»Îªstr
	 * @author zxy
	 * @return
	 * @throws Exception
	 */	
	public String getJson(@SuppressWarnings("rawtypes") Map map) throws Exception {
		net.sf.json.JSONObject json = net.sf.json.JSONObject.fromObject(map);
		String str = json.toString();
		return str;
		
	}
	
	public String mapToString(Map<String,String> map){
		
		String str="";
		
		   for(Entry<String,String> entry : map.entrySet()){
		    	  
		        String strkey = entry.getKey();
		        String strval = entry.getValue();
		        str += strkey+":"+strval+",";
		   }
			str = str.substring(0,str.length()-1);
			return str;
		
	}

	public JSONObject getJ(@SuppressWarnings("rawtypes") Map map) throws Exception {
		JSONObject json = JSONObject.fromObject(map);		
		return json;		
	}
	

}
