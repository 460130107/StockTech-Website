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
<title>我的文件 -- 云</title>
<link href="front/css/myfiles.css" rel="stylesheet"  type="text/css" />
<link href="front/css/bootstrap.css" rel="stylesheet">
<link href="front/css/jquery-ui.min.css" rel="stylesheet">
<link href="front/css/global-style.css" rel="stylesheet">

</head>
<body>
<s:include value="header.jsp"><s:param name="index">myfile</s:param></s:include> 
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
		<span id="uploadfile"><span class="top-bar-icon upload"></span><span>上传</span></span>
		<span id="createNewFolder"><span class="top-bar-icon createNewFolder"></span><span>新建XX</span></span>
	</div>
	<div class="file-nav">
		<a class="back">返回上一级</a>&nbsp;&nbsp;&nbsp;||
		<a class="all" href="http://localhost:8080/MyStock/myfiles">全部文件</a>
	</div>	
	<div class="file-title">
		<div class="name">文件名</div>
		<div class="size">大小</div>
		<div class="date">修改日期</div>
	</div>
	<div class="right-fileset" id="doc"></div>
</div>
</div>
<input id="upfile" class="fileUpload" style="opacity:0;" type="file" size="45" name="file" onchange="return fileUpLoad(this.value);">
<s:include value="footer.jsp"></s:include>
<script type="text/javascript" src="front/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(function(){
	var search=window.location.search;
	console.log(search);
	if(search==""){
		var path="root";
	}else{
		var path=getQueryString("path");
		console.log("path = "+path);
	}	
	console.log("path = "+path);	
	$.ajax({		
		url:'interface/Open_folder.action',
		type:"GET",
		data:{path:path},
		dataType: 'json',
		success:function(msg){
			console.log(msg.myFilemessage);
			fileListShow(msg.myFilemessage);		
		},
		error:function(){
			console.log("get failed");
		}
	});
	function getQueryStringTT(decodeUri,name){
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = decodeUri.substr(0).match(reg);
		if (r != null) return unescape(r[2]); return null;
	}
	function getQueryString(name){
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = window.location.search.substr(1).match(reg);
		if (r != null) return unescape(r[2]); return null;
	}
	function fileListShow(msg){
		
		$(".right-fileset").children().remove();
		$(".right-fileset").append("<div class='node-list'></div>");
		var decodeUri=decodeURI(decodeURI(window.location.href));
		console.log("decodeUri = "+decodeUri);
		if(window.location.search==""){
			var pht="root";
			console.log("pht tttt1 =="+pht);
		}else{
			decodeUri=decodeUri.split("?")[1];
			var pht=decodeUri.split("=")[1];
			console.log("pht tttt2 =="+pht);
		}
		$(".file-nav").children(".back").attr("href",encodeURI(encodeURI("http://localhost:8080/MyStock/myfiles?path="+pht.split("\\",pht.split("\\").length-1).join("\\"))));
		var list=eval("("+msg+")");
		$.each(list,function(key,val){
			var nodeListObj=$('<div class="node-list"></div>').appendTo($(".right-fileset"));
			var nodeNameObj=$('<div class="node-name"></div>').appendTo(nodeListObj);
			var nodeSizeObj=$('<div class="node-size"></div>').appendTo(nodeListObj);
			var nodeDateObj=$('<div class="node-date"></div>').appendTo(nodeListObj);			
			$(nodeDateObj).text(val[3]);//val.date
			var nameObj=$('<span class="link"><a><span>'+val[1]+'</span></a></span>').appendTo(nodeNameObj);
			if(val[0].match("folder")){
				$(nodeSizeObj).text("-");
				var iconObj=$('<span class="node-icon l-folder"></span>').prependTo(nodeNameObj);
				var uri="http://localhost:8080/MyStock/myfiles?path="+pht+"\\"+val[1];
				$(nameObj).children("a").attr("href",encodeURI(encodeURI(uri)));
			}else if(val[0].match("file")){ 
				$(nodeSizeObj).text(val[2]);
				var iconObj=$('<span class="node-icon l-file"></span>').prependTo(nodeNameObj);
				$(nameObj).children("a").attr("href","http://www.hao123.com");
			}
		});
	}			
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
					var linkA=$("<a></a>").text(folderName).appendTo(linkObj);
					//后台处理文件上传 -- 参数
					$.ajax({
						url:'interface/Creat_folder.action',
						type:"POST",
						data:{
							path:path+"\\"+folderName,
						},
						success:function(){
							$(linkA).attr( );
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
	//end create folder
});
//upload signal file
	var decodeUri=decodeURI(decodeURI(window.location.href));
	if(window.location.search==""){
			var pht="root";
			console.log("pht tttt1 =="+pht);
		}else{
			var decodeUri=decodeUri.split("?")[1];
			var pht=decodeUri.split("=")[1];
			console.log("pht tttt2 =="+pht);
		}
	$("#uploadfile").on({
		"click":function(){
			$("#upfile").click();
		}
	});
	function fileUpLoad(val){
		$.ajax({
			url:"interface/File_upload.action",
			type:"POST",
			data:{
				name:val,
				path:pht,
			},
			success:function(msg){
				window.location.href="http://localhost:8080/MyStock/index";
			},
		});
		//alert(val);
		return "ok";
	}
	//edn upload signal file
</script>
</body>
</html>