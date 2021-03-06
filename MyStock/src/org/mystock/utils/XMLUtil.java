/*
 * 系统名称：斯多克个人网站自助系统
 * 
 * 类名：XMLUtil
 * 
 * 创建日期：2014-09-30
 */
package org.mystock.utils;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * DOM工具类
 * @author tt
 * @version 14.9.16
 */
public class XMLUtil {
	public static void removeChildren(Node node){
        NodeList childNodes=node.getChildNodes();
        int length=childNodes.getLength();
        for(int i=length-1;i>-1;i--){
            node.removeChild(childNodes.item(i));
        }
    }
    
    public static Document loadDocument(String file)
        throws ParserConfigurationException,SAXException,IOException{
        DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
        DocumentBuilder builder=factory.newDocumentBuilder();
        return builder.parse(file);
    }
    
    public static void saveDocument(Document dom,String file)
        throws TransformerConfigurationException,
                FileNotFoundException,
                TransformerException,
                IOException{
        TransformerFactory tf=TransformerFactory.newInstance();
        Transformer transformer=tf.newTransformer();
        
        transformer.setOutputProperty(OutputKeys.DOCTYPE_PUBLIC,dom.getDoctype().getPublicId());
        transformer.setOutputProperty(OutputKeys.DOCTYPE_SYSTEM, dom.getDoctype().getSystemId());
        
        DOMSource source=new DOMSource(dom);
        StreamResult result=new StreamResult();
        
        FileOutputStream outputStream=new FileOutputStream(file);
        result.setOutputStream(outputStream);
        transformer.transform(source, result);
        
        outputStream.flush();
        outputStream.close();
    }
}
