/*
 * ϵͳ���ƣ����ŷ���ϵͳ
 * 
 * ������XssHttpServletRequestWrapper
 * 
 * �������ڣ�2014-09-02
 */
package org.news.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.StrutsRequestWrapper;

/**
 * ��ÿ��post����Ĳ�������һЩ�ؼ��֣��滻�ɰ�ȫ�ģ����磺< > ' " \ /  # & 
 * @author tt
 * @version 14.8.18
 */
public class XssHttpServletRequestWrapper extends StrutsRequestWrapper {

	public XssHttpServletRequestWrapper(HttpServletRequest request) {
		super(request);
	}

	/**
	 * Struts2���Զ����HttpServletRequestWraper����Ҫ��дgetParameterMap()��������
	 */
	@SuppressWarnings("unchecked")
	@Override
	public Map<String,String[]> getParameterMap() {
		 
        HashMap<String,String[]> paramMap = (HashMap<String,String[]>) super.getParameterMap();
        paramMap = (HashMap<String,String[]>) paramMap.clone();
 
        for (Iterator iterator = paramMap.entrySet().iterator(); iterator.hasNext(); ) {
            Map.Entry<String,String[]> entry = (Map.Entry<String,String[]>) iterator.next();
            String [] values = entry.getValue();
            for (int i = 0; i < values.length; i++) {
                if(values[i] instanceof String){
                    values[i] = cleanXSS(values[i]);
                }
            }
            entry.setValue(values);
        }
        return paramMap;
    }
	/**
	 * ��ȡ������Ӧ������ֵ��Ȼ��������ת��
	 */
	@Override
	public String[] getParameterValues(String parameter) {

		String[] values = super.getParameterValues(parameter);
		if (values == null) {
			return null;
		}
		
		int count = values.length;
		String[] encodedValues = new String[count];
		for (int i = 0; i < count; i++) {
			encodedValues[i] = cleanXSS(values[i]);//�������ת��
		}
		return encodedValues;//����ת����ֵ
	}

	/**
	 * ��ȡĳ��������ֵ��Ȼ�����ת��
	 */
	@Override
	public String getParameter(String parameter) {
		String value = super.getParameter(parameter);
		if (value == null) {
			return null;
		}
		return cleanXSS(value);
	}

	/**
	 * ��ȡ�����ͷ��
	 */
	@Override
	public String getHeader(String name) {

		String value = super.getHeader(name);
		if (value == null)
			return null;
		return cleanXSS(value);
	}

	/**
	 * �Ա�ǩ�ڵ������ַ���<��>��"��'�ȣ�����HTMLʵ��ת�塣
	 * @param value
	 * @return ת����ֵ
	 */
	private String cleanXSS(String value) {
		// You'll need to remove the spaces from the html entities below
		value = value.replaceAll("<", "& lt;").replaceAll(">", "& gt;");
		value = value.replaceAll("\\(", "& #40;").replaceAll("\\)", "& #41;");
		value = value.replaceAll("'", "& #39;");
		value = value.replaceAll("eval\\((.*)\\)", "");
		value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']",
				"\"\"");
		value = value.replaceAll("script", "");

		return value;
	}
}