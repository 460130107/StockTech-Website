<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.text.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.math.*" %>
<%@ page import="org.apache.commons.codec.binary.*" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>百度云 -- 测试</title>
<link href="front/css/myfiles.css" rel="stylesheet"  type="text/css" />
<link href="front/css/bootstrap.css" rel="stylesheet">
<link href="front/css/jquery-ui.min.css" rel="stylesheet">
<link href="front/css/global-style.css" rel="stylesheet">

</head>
<body>
<s:include value="header.jsp"><s:param name="index">myfile</s:param></s:include> 
<%!
//Date
public static String getFormatDate(long strDate) {
    java.util.Date date = new java.util.Date(strDate);
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	String dddd = df.format(date);
	return dddd;
}
//Size
public static String getFormatSize(long size) {  
        double kiloByte = size/1024;  
        if(kiloByte < 1) {  
            return size + "Byte";  
        }  
          
        double megaByte = kiloByte/1024;  
        if(megaByte < 1) {  
            BigDecimal result1 = new BigDecimal(Double.toString(kiloByte));  
            return result1.setScale(0, BigDecimal.ROUND_HALF_UP).toPlainString() + "KB";  
        }  
          
        double gigaByte = megaByte/1024;  
        if(gigaByte < 1) {  
            BigDecimal result2  = new BigDecimal(Double.toString(megaByte));  
            return result2.setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + "MB";  
        }  
          
        double teraBytes = gigaByte/1024;  
        if(teraBytes < 1) {  
            BigDecimal result3 = new BigDecimal(Double.toString(gigaByte));  
            return result3.setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + "GB";  
        }  
        BigDecimal result4 = new BigDecimal(teraBytes);  
        return result4.setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + "TB";  
} 
//Type
public static String getFileType(String fname){	
	String prefix=fname.substring(fname.lastIndexOf(".")+1);
	return prefix;
}
 %>
<%
	InitialContext ctx = new InitialContext();
	String rootPath = request.getParameter("rootPath");
	String path = request.getParameter("path");
	URL url;
	if(rootPath == null) rootPath = "";
	rootPath = rootPath.trim();
	if(rootPath.equals("")){
		rootPath = application.getRealPath("/");
	}

	if(path == null) {
		//path = rootPath;
		path="C:\\Users\\stock\\Workspaces\\MyEclipse Professional\\MyStock\\WebRoot\\files";	
	}else{
		path = new String(Base64.decodeBase64(path.getBytes()));
	}
	File fpath = new File(path);
%>
<div id="main">
<div class="left-bar">
	<ul>
		<li><span><span class="list-icon all"></span>全部文件</span></li>
		<li><span><span class="list-icon pic"></span>图片</span></li>
		<li><span><span class="list-icon doc"></span>文档</span></li>
		<li><span><span class="list-icon video"></span>视频</span></li>
		<li><span><span class="list-icon nat"></span>种子</span></li>
		<li><span><span class="list-icon music"></span>音乐</span></li>
		<li><span><span class="list-icon other"></span>其他</span></li>
	</ul>
</div>
<div class="right">
	<div class="right-top-bar">
		<span id="uploadfile" type="file"><span class="top-bar-icon upload"></span><span>上传</span></span>
		<span id="createNewFolder"><span class="top-bar-icon createNewFolder"></span><span>新建XX</span></span>
	</div>
	<div class="file-nav">
			<%
				if(!fpath.getParentFile().toString().equals("C:\\Users\\stock\\Workspaces\\MyEclipse Professional\\MyStock\\WebRoot")){
			%>
			<a href="<%=request.getContextPath()%>/myfiles?path=<%=new String(Base64.encodeBase64(fpath.getParentFile().getAbsolutePath().getBytes()))%>">返回上一级&nbsp;</a>
			&nbsp;|<a href="home">全部文件</a>&nbsp;&nbsp;>			
			<%
			}else{%>全部文件
			<%}%>
	</div>	
	<div class="file-title">
		<div class="name">文件名</div>
		<div class="size">大小</div>
		<div class="date">修改日期</div>
	</div>
	<div class="right-fileset" id="doc">
	<%
		File f = new File(path);
		if(f.isDirectory()){//如果是文件夹，及是一个目录
		File[] fs	= f.listFiles();
		for(int i=0;i<fs.length;i++){
	%>
					
			<%if(fs[i].isDirectory()){%><div class="node-list"
			data-type="dir"	data-file-type="dir"
			data-name="<%=new String(Base64.encodeBase64(fs[i].getAbsolutePath().getBytes())) %>" 
			data-path="<%=new String(Base64.encodeBase64(fpath.getAbsolutePath().getBytes()))%>">
			<div class="node-name"><span class="node-icon l-folder"></span><span class="link"><a href="<%=request.getContextPath()%>/myfiles?path=<%=new String(Base64.encodeBase64(fs[i].getAbsolutePath().getBytes()))%>"><span><%=fs[i].getName()%></span></a></span></div>			
			<div class="node-size">-</div>
			<div class="node-date"><%=getFormatDate(fs[i].lastModified())%></div></div><%}%>
			
			<%if(fs[i].isFile()){%><div class="node-list" 
				data-type="file" data-file-type="<%=getFileType(fs[i].getName()) %>" 
				data-file-name="<%=fs[i].getName() %>"
				data-file-path="<%=fs[i].getParentFile().getPath() %>"
				data-name="<%=new String(Base64.encodeBase64(fs[i].getAbsolutePath().getBytes())) %>" 
				data-path="<%=new String(Base64.encodeBase64(fpath.getAbsolutePath().getBytes()))%>">
				<div class="node-name"><span class="node-icon l-file"></span><span class="link"><a target="_blank"><span><%=fs[i].getName()%></span></a></span></div>
				<div class="node-size"><%=getFormatSize(fs[i].length())%></div>
				<div class="node-date"><%=getFormatDate(fs[i].lastModified())%></div>
			</div><%}%>		 
		<%
				}
			}
		%>
		
	</div>
</div>
</div>
<s:include value="footer.jsp"></s:include>
<script type="text/javascript" src="front/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(function(){
/* 	var path=$(this).attr("data-path");			
	var name=$(this).attr("data-name");
	var type=$(this).attr("data-type"); */
	$(".node-list").on({
		"mouseenter":function(){
			var path=$(this).attr("data-path");			
			var name=$(this).attr("data-name");
			var type=$(this).attr("data-type");
			var tit=this;
			$(this).children().css({"background":"rgb(240,248,253)","color":"red"});	
			var obj='<span class="float-tool"><a class="rename"></a><a class="down" target="_blank"></a><a class="delete"></a></span>';
			$(this).children(".node-name").append(obj);
			//rename
			$(this).children(".node-name").children(".float-tool").children(".rename").on({
				"click":function(){
					alert("rename");					
				}
			});
			//down
			$(this).children(".node-name").children(".float-tool").children(".down").on({
				"mouseenter":function(){
					console.log("path = "+path);					
					$(this).attr("href",'./myfiles/save.jsp?path='+path+'&name='+name);
				},
			});
			//delete
			$(this).children(".node-name").children(".float-tool").children(".delete").on({
				"mouseenter":function(){
					console.log("path = "+path);					
					$(this).attr("href",'./myfiles/del.jsp?path='+path+'&fname='+name);
				},
			});
		},
		"mouseleave":function(){
			$(this).children().css({"background":"rgb(255,255,255)","color":"black"});
			$(this).children(".node-name").children("span").last().remove();
		},
	});
	//preview
	$(".node-list").each(function(key,val){
		var type=$(this).attr("data-file-type");		
		if(!type.match("dir")){
			var name=$(this).attr("data-file-name");
			var path=$(this).attr("data-file-path");
			path=path.substring(65,path.length);
			console.log("name = "+name+" && path = "+path);
			if(type.match("doc") || type.match("xls") || type.match("ppt") || type.match("xx")){
				$(this).children(".node-name").children(".link").children("a").attr("href","https://view.officeapps.live.com/op/view.aspx?src=http://officeweb365.com/viewfile/关于加快临时设施建设速度和保证建设标准的通知.docx");
			}else if(type.match("txt") ||type.match("pdf") || type.match("js")){
				$(this).children(".node-name").children(".link").children("a").attr("href","http://localhost:8080/MyStock/"+path+"/"+name);
			}
		}
	});
	
	//create new folder
	$("#createNewFolder").on({
		"click":function(){
			//alert("dasd");
			var listObj=$('<div class="node-list"></div>').insertAfter($(".node-list").last());
			var nameObj=$('<div class="node-name"><span class="node-icon l-folder"></span></div>').appendTo(listObj);
			var linkObj=$('<span class="link"><input type="text" class="input" value="新建文件夹"></span>').appendTo(nameObj);
			var choiceObj=$('<span class="btn-icon sname"></span><span class="btn-icon abandon"></span>').appendTo(nameObj);
			//save
			$(choiceObj).eq(0).on({
				"click":function(){
					var path=getQueryString("path");
					if(path==null){path="root";};
					var folderName=$(linkObj).children("input").val();
					$(linkObj).children("input").remove();
					$(choiceObj).remove();
					var linkA=$("<a href='http://www.baidu.com'></a>").text(folderName).appendTo(linkObj);
					//后台处理文件上传 -- 参数
					$.ajax({
						url:'interface/Creat_folder.action',
						type:"POST",
						data:{
							name:folderName,
							path:path,
						},
						success:function(){
							console.log("new folder success");
						},
						error:function(){
							console.log("new folder failed");
						}
					});
					
				}
			});
			//abandon
			$(choiceObj).eq(1).on({
				"click":function(){
					$(listObj).remove();
				}
			});
		}
	});
	
	//get url 
	function getQueryString(name) {
	    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	    var r = window.location.search.substr(1).match(reg);
	    if (r != null) return unescape(r[2]); return null;
    }
    console.log(getQueryString("path"));
});
</script>
</body>
</html>