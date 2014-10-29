<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的文章</title>
<link href="front/css/bootstrap.css" rel="stylesheet">
<link href="front/css/jquery-ui.min.css" rel="stylesheet">
<link href="front/css/global-style.css" rel="stylesheet">
<link href="front/css/myarticle.css" rel="stylesheet">
<script src="front/js/jquery-1.11.1.js"></script>
<script type="text/javascript" charset="utf-8" src="uedit/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="uedit/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="uedit/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
function setContentn(){	
	$("#content").text(UE.getEditor('editor').getContent());
	return false;
}
</script>
</head>
<body>
<s:include value="header.jsp">  
<s:param name="index">myarticles</s:param></s:include>
<div id="bd">
<div id="art_nav" style="text-align: center;">
<ul id="myTab" class="nav nav-tabs" style="width: 80%;">
   <li class="active">
      <a href="#home" data-toggle="tab">文章管理</a>
   </li>
   <li><a href="#type" data-toggle="tab">文章类别</a></li>
   <li><a href="#write" data-toggle="tab">新写文章</a></li>
</ul>
</div>

<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="home">
   		<script type="text/javascript">
   			$.ajax({
		      	url:"myarticles_list",
		      	type:"GET",
		      	success:function(msg){
		      		$("div#home").html(msg);
		      	}
	      	});
   		</script> 
   </div>
   <div class="tab-pane fade" id="type">
   		<script type="text/javascript">
   			$.ajax({
		      	url:"myarticles_type",
		      	type:"GET",
		      	success:function(msg){
		      		$("div#type").html(msg);
		      	}
	      	});
   		</script>      
   </div>
   <div class="tab-pane fade" id="write">
   		<form action="Article_add">
	   		标题:<input type="text" name="name" style="width:300px;margin: 0 5px 5px;">
		     <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
		     <script type="text/javascript">
			    //实例化编辑器
			    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
			    var ue = UE.getEditor('editor');
			
			
			    function isFocus(e){
			        alert(UE.getEditor('editor').isFocus());
			        UE.dom.domUtils.preventDefault(e)
			    }
			    function setblur(e){
			        UE.getEditor('editor').blur();
			        UE.dom.domUtils.preventDefault(e)
			    }
			    function insertHtml() {
			        var value = prompt('插入html代码', '');
			        UE.getEditor('editor').execCommand('insertHtml', value)
			    }
			    function createEditor() {
			        enableBtn();
			        UE.getEditor('editor');
			    }
			    function getAllHtml() {
			        alert(UE.getEditor('editor').getAllHtml())
			    }
			    function getContent() {
			        var arr = [];
			        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
			        arr.push("内容为：");
			        arr.push(UE.getEditor('editor').getContent());
			        alert(arr.join("\n"));
			    }
			    function getPlainTxt() {
			        var arr = [];
			        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
			        arr.push("内容为：");
			        arr.push(UE.getEditor('editor').getPlainTxt());
			        alert(arr.join('\n'))
			    }
			    function setContent(isAppendTo) {
			        var arr = [];
			        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
			        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
			        alert(arr.join("\n"));
			    }
			    function setDisabled() {
			        UE.getEditor('editor').setDisabled('fullscreen');
			        disableBtn("enable");
			    }
			
			    function setEnabled() {
			        UE.getEditor('editor').setEnabled();
			        enableBtn();
			    }
			
			    function getText() {
			        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
			        var range = UE.getEditor('editor').selection.getRange();
			        range.select();
			        var txt = UE.getEditor('editor').selection.getText();
			        alert(txt)
			    }
			
			    function getContentTxt() {
			        var arr = [];
			        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
			        arr.push("编辑器的纯文本内容为：");
			        arr.push(UE.getEditor('editor').getContentTxt());
			        alert(arr.join("\n"));
			    }
			    function hasContent() {
			        var arr = [];
			        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
			        arr.push("判断结果为：");
			        arr.push(UE.getEditor('editor').hasContents());
			        alert(arr.join("\n"));
			    }
			    function setFocus() {
			        UE.getEditor('editor').focus();
			    }
			    function deleteEditor() {
			        disableBtn();
			        UE.getEditor('editor').destroy();
			    }
			    function disableBtn(str) {
			        var div = document.getElementById('btns');
			        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
			        for (var i = 0, btn; btn = btns[i++];) {
			            if (btn.id == str) {
			                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
			            } else {
			                btn.setAttribute("disabled", "true");
			            }
			        }
			    }
			    function enableBtn() {
			        var div = document.getElementById('btns');
			        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
			        for (var i = 0, btn; btn = btns[i++];) {
			            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
			        }
			    }
			
			    function getLocalData () {
			        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
			    }
			
			    function clearLocalData () {
			        UE.getEditor('editor').execCommand( "clearlocaldata" );
			        alert("已清空草稿箱")
			    }
			</script>
	   	 	
	   	 	<textarea id="content" name="content" rows="1" cols="20" style="visibility: hidden;" ></textarea> 
	   	 	<input type="text" name="author" value="caijiachang" style="visibility: hidden;">
	   	 	<div class="check-group">
	   	 		<input type="radio" name="newsTypeId" value="1" /> TYPE1 &nbsp;&nbsp;
	  			<input type="radio" name="newsTypeId" value="2" /> TYPE2 &nbsp;&nbsp;
	   	 	</div>
	   	 	<input type="submit" value="发表新文章" onclick="setContentn();">
   		</form>
   </div>
</div>
</div>
<s:include value="footer.jsp"></s:include>

<script src="front/js/bootstrap.js"></script>
<script type="text/javascript" src="front/js/jquery.waterfall.js"></script>

</body>
</html>