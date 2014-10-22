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
		<li><a href="?type=all"><span class="list-icon all"></span>全部文件</a></li>
		<li><a href="?type=img"><span class="list-icon pic"></span>图片</a></li>
		<li><a href="?type=doc"><span class="list-icon doc"></span>文档</a></li>
		<li><a href="?type=video"><span class="list-icon video"></span>视频</a></li>
		<li><a href="?type=bt"><span class="list-icon nat"></span>种子</a></li>
		<li><a href="?type=music"><span class="list-icon music"></span>音乐</a></li>
		<li><a href="?type=other"><span class="list-icon other"></span>其他</a></li>
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
<input id="Upfile" class="fileUpload" style="opacity:0;position: absolute;bottom: 0;" type="file" size="45" name="upfile">
<s:include value="footer.jsp"></s:include>
<script type="text/javascript" src="front/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="front/js/ajaxfileupload.js"></script>
<script type="text/javascript">

$(function(){
//文件浏览 -- 前进后退   && 文件分类获取 
	var search=window.location.search;
	if(search==""){
		var path="root";
		var type="";
	}else{
		var path=getQueryString("path");
		var type=getQueryString("type");
	}	
	//console.log("type = "+type);
	if(type==null||type==""){
		/*文件浏览*/
		$.ajax({		
			url:'interface/Open_folder.action',
			type:"GET",
			data:{path:path},
			dataType: 'json',
			success:function(msg){
				fileListShow(msg.myFilemessage);
				fileNav();		
			},
			error:function(){
				console.log("get failed");
			}
		});
	}else{
		/*文件分类展示*/
		if(type.match("img") ||type.match("doc") ||type.match("video") ||type.match("bt") ||type.match("music") || type.match("other") ){
			$.ajax({
				url:'interface/ShowFile_ByType.action',
				//url:'http://localhost:8080/MyStock/files/test.txt',
				type:"GET",
				//data:{type:type},
				data:{typeName:type},
				dataType: 'json',
				success:function(msg){
					//console.log("type = "+type);
					console.log("length = "+$("#doc").children().length);
					var mm=eval("("+msg.showFileByTypeMessage+")");
					//console.log(mm.info);
					shoFileByType(mm.num,mm.info);
				},
				error:function(msg){
					console.log("type error");
				},
			});
		}else if(type.match("all")){
			window.location="http://localhost:8080/MyStock/myfiles";
		}
	}	
		//functions for browser  and typing		
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
		if(window.location.search==""){
			var pht="root";
		}else{
			decodeUri=decodeUri.split("?")[1];
			var pht=decodeUri.split("=")[1];
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
			
			//删除、下载、重命名	
			var funObj='<span class="float-tool"><a class="rename"></a><a class="down" target="_blank"></a><a class="delete"></a></span>';	
			$(nodeListObj).on({
				"mouseenter":function(){
					var tit=this;
					var tit_nodeName=$(this).children(".node-name").clone(true);
					$(nodeNameObj).append(funObj);	
					var name=$(tit_nodeName).children().last().text();
					name="root"+pht+"\\"+name;
					var testURI=encodeURI(encodeURI("http://localhost:8080/MyStock/myfiles?path="+name));
					var del_downPath=testURI.split("?")[1].split("=")[1];
					//delete
					$(nodeNameObj).children(".float-tool").children(".delete").on({
						"click":function(){
							alert("path = "+del_downPath);
							$.ajax({
								url:'interface/DeleteFiles.action',
								data:{deletePath:del_downPath},
								type:"POST",
								success:function(){
									console.log("delete success");
									//window.location=window.location.href;
								},
								error:function(){
									console.log("delete failed");
								}
							});
							$(tit).remove();
							return false;
						}
					});
					//download
					$(nodeNameObj).children(".float-tool").children(".down").on({
						"click":function(){
							//alert("path = "+del_downPath);
							$.ajax({
								url:'interface/DownFile.action',
								data:{downPath:del_downPath},
								type:"POST",
								success:function(){
									console.log("download yy");
								},
								error:function(){
									console.log("download nn");
								}
							});
							return false;
						}
					});
					//rename
					/* $(nodeNameObj).children(".float-tool").children(".rename").on({
						"click":function(){
							//alert("rename");
							var tit_rename=this;
							var tit_link=$(tit).children(".node-name").children(".link");
							var tit_link_name=$(tit_link).children().last();
							var oldName=$(tit_link_name).text();
							console.log("oldName = "+oldName); 
							$(tit_link_name).remove();
							var newAobj=$('<span class="rename-set"><input type="text" class="input"><span class="btn-icon sname"></span><span class="btn-icon abandon"></span></span>');
							$(newAobj).appendTo($(tit_link));
							$(newAobj).children("input").val(oldName).trigger("focus").trigger("select");
							var newName=$(newAobj).children("input").val();
							console.log("newName = "+newName);			
							//save new name
							$(newAobj).children(".sname").on({
								"click":function(){
									 $.ajax({
										url:'interface/',
										data:{path:path,newName:newName},
										type:"POST",
										success:function(){
											console.log("rename success");
										},
										error:function(){
											console.log("rename faile");
										}
									}); 
									$(tit).children(".node-name").remove();
									return false;
								}
							});
							//abandon new name
							$(newAobj).children(".abandon").on({
								"click":function(){
									//alert("ddd");
									$(tit).children(".node-name").remove();
									$(tit).prepend(tit_nodeName);
									return false;
								}
							});														
							return false;
						}
					}); */
					return false;
				},
				"mouseleave":function(){
					$(nodeNameObj).children(".float-tool").remove();
					return false;
				}
			});						
		});
	}
	function shoFileByType(num,info){		
		for(var i=1;i<=num;i++){
			var nodeListObj=$('<div class="node-list"></div>');
			var nodeNameObj=$('<div class="node-name"></div>');
			var nodeSizeObj=$('<div class="node-size"></div>');
			var nodeDateObj=$('<div class="node-date"></div>');
			var linkObj=$('<span class="link"><span class="node-icon"></span><a><span>'+info[i][0]+'</span></a></span>').appendTo(nodeNameObj);
			//set icon
			switch(type){
				case "doc":$("span.node-icon").addClass("l-doc");break;
				case "img":$("span.node-icon").addClass("l-img");break;
				case "video":$("span.node-icon").addClass("l-video");break;
				case "bt":$("span.node-icon").addClass("l-bt");break;
				case "music":$("span.node-icon").addClass("l-music");break;
				case "other":$("span.node-icon").addClass("l-other");break;
			}
			//set
			$(nodeSizeObj).text(info[i][1]);
			$(nodeDateObj).text(info[i][2]);
			//append
			$(nodeNameObj).appendTo(nodeListObj);
			$(nodeSizeObj).appendTo(nodeListObj);
			$(nodeDateObj).appendTo(nodeListObj);
			$(nodeListObj).appendTo($(".right-fileset"));
			//just for test
			/* for(var j=0;j<4;j++){
				console.log("info["+i+"]["+j+"] = "+info[i][j]);
			} */
		}
	}
//end 文件浏览 -- 前进后退   && 文件分类获取 	
				
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

//upload file
$(function(){	
	var decodeUri=decodeURI(decodeURI(window.location.href));
	if(window.location.search==""){
			var pht="root";
		}else{
			decodeUri=decodeUri.split("?")[1];
			var pht=decodeUri.split("=")[1];
		}
	$("#uploadfile").on({
		"click":function(){
			$("#Upfile").click();
		}
	});
	$("#Upfile").change(function(){
		$.ajaxFileUpload({
			url:'interface/File_upload.action',
			secureuri:false,
			fileElementId:"Upfile",
			data:{path:pht},
			dataType:"json",
			success:function(){
				window.location=window.location.href;
			},
			error:function(){
				console.log("failed");
			},			
		}); 
	});
});
//end upload signal file
</script>
</body>
</html>