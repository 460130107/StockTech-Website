<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文本提交</title>
<link href="front/css/bootstrap.css" rel="stylesheet">
<link href="front/css/jquery-ui.min.css" rel="stylesheet">
<link href="front/css/global-style.css" rel="stylesheet">
<style type="text/css">
ul,li{list-style: none;}
#file-list li{
background: #DFF0D8;
line-height: 30px;
padding:0 20px 0;
}
</style>
</head>
<body>
<s:include value="header.jsp">  
	<s:param name="index">myfile</s:param>  
	</s:include> 
<%!
String set(String path){	
	String result="";
	File f = new File(path);
	if (!f.exists()){
	    return "faile";
	}
	File fa[] = f.listFiles();
	for(int i=0;i<fa.length;i++){
		File fs = fa[i];
		if (fs.isDirectory()){
			//result+="<li><a href='javascript:void(0)' id='ls' target='_blank'>"+fs.getName()+"[lsls]</a></li><br/>";
			//result+=fs.getName()+"[目录]<br />"+set(path+"/"+fs.getName());
			result+=fs.getName()+" ";
		}else{
			result+=fs.getName()+" ";
			//result+="<li><a href='front/files/"+fs.getName()+"' id='file' target='_blank'>"+fs.getName()+"</a></li><br/>";
	    }
	}
	return result;
}
%>
<%
String path = "C:/Users/stock/Workspaces/MyEclipse Professional/MyStock/WebRoot/front/files"; //路径
String res=set(path);
%>
<div class="container container-content">
<ul id="file-list"></ul>
<ul class="pagination" id="pagination1"></ul>
</div>


<s:include value="footer.jsp"></s:include>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="front/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="front/js/bootstrap.js"></script>
    
<script type="text/javascript" src="front/js/jqPaginator.min.js"></script>
<script type="text/javascript">
$("#pagination1").jqPaginator({
    /*totalPages: 100,*/ /*总页数*/
    totalCounts:60,	/*总条目数*/
    pageSize:10,	/*每页条目数*/
    visiblePages: 10,
    currentPage: 1,
    onPageChange: function (num, type) {    
    	//$("#p-test").text("currentPage : "+num);
    	//FF0030(num, 10);
    }    
});
function readFileForder(path){
	
}
var str="<%=res%>";
str=str.split(' ');
for(var i=0;i<str.length;i++){
	var ss=str[i].split('.');
	if(ss.length==1){
		
	}else if((ss[ss.length-1]).match('doc')){
		//var obj='<li><a href="'+str[i]+'" target='_blank'>'+str[i]+'</a>--doc</li>';
		var obj='<li><a href="front/files/'+str[i]+'" target="_blank">'+str[i]+'</a>doc</li>';
		$("#file-list").append(obj);
	}else{
		//var obj='<li><a href="'+str[i]+'" target='_blank'>'+str[i]+'</a></li>';
		var obj='<li><a href="front/files/'+str[i]+'" target="_blank">'+str[i]+'</a></li>';
		$("#file-list").append(obj);
	}
}
//$("#file-list").text(str);
</script>
</body>
</html>