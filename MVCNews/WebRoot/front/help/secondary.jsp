<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'secondary.jsp' starting page</title> 
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
</head>
  
<body>
<jsp:include page="../_header.jsp"></jsp:include>

<%
String id="root";
if(request.getParameter("id")=="" || request.getParameter("id")==null){
	id="root";
}else{
	id=request.getParameter("id");
}
//System.out.println("id = "+id);
%>

  <div class="container mgb40">
  	<div>
  		<ul id="breadcrumb" class="js-breadcrumb">
		  <li><a href="#"><span class="icon">主页</span></a></li>
		  <li><a href="front/help/index.jsp"><span class="icon"></span>帮助中心</a></li>
		  <li class="js-hide js-tender" data-target="js-tender"><a href="javascritp:void(0);"><span class="icon js-tender"></span>我要投标</a></li>
		  <li class="js-hide js-account" data-target="js-account"><a href="javascritp:void(0);"><span class="icon "></span>账户管理</a></li>
		  <li class="js-hide js-corporation" data-target="js-corporation"><a href="javascritp:void(0);"><span class="icon "></span>我要合作</a></li>
		  <li class="js-hide js-security" data-target="js-security"><a href="javascritp:void(0);"><span class="icon "></span>安全保证</a></li>
		  <li class="js-hide js-stock" data-target="js-stock"><a ><span class="icon "></span>股票名词</a></li>
		  <li class="js-hide finally"></li>
		</ul>
  	</div>
  	<div class="row">
  		<div class="col-md-9" style="float: right;left:-100px;">
  			<div class="content">
  				<div class="js-content pdl20 pdr20 bgc-white"  id="js-tender" style="border: 1px solid #ddd;height: 600px;">
  					<!-- tender -->
  					<h3>我要投标</h3>
  					<p class="f14">
  						HTML5 是 W3C 与 WHATWG 合作的结果,WHATWG 指 Web Hypertext Application Technology Working Group。
						WHATWG 致力于 web 表单和应用程序，而 W3C 专注于 XHTML 2.0。在 2006 年，双方决定进行合作，来创建一个新版本的 HTML。						
						HTML5 中的一些有趣的新特性：						
						用于绘画的 canvas 元素
						用于媒介回放的 video 和 audio 元素
						对本地离线存储的更好的支持
						新的特殊内容元素，比如 article、footer、header、nav、section
						新的表单控件，比如 calendar、date、time、email、url、search
  					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
  					
  					<h2 class="f18">使命</h2>
  					<p class="f14">实现个人的信用自主和金融自由。
  					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
  					
  					<h2 class="f18">愿望</h2>
  					<p class="f14">打造一个人人参与、人人自由、人人平等的互联网个人金融服务平台。
  					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
  					
  					<h2 class="f18">核心价值</h2>
  					<p class="f14">释放用户借款和理财的自主权利
									借款人通过个人信用申请借款，获得资金；理财人通过公开信息自主选择进行投资，获得收益。
									建立互联网时代的个人金融风险定价体系
									通过有效的个人信用模型和大数据挖掘，逐步建立并完善符合时代特征的个人金融风险定价体系。
									实现更低借款成本和更稳健投资收益
									受益于精准的个人金融风险定价体系和安全分散有保障的投资机制，借款人和理财人的权益均可得到充分的
									保障和满足。
  					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
  				</div>
  				<div class="hide js-content" id="js-account" style="border: 1px solid green;height: 600px;">2</div>
  				<div class="hide js-content" id="js-corporation" style="border: 1px solid yellow;height: 600px;">3</div>
  				<div class="hide js-content" id="js-security" style="border: 1px solid blue;height: 600px;">4</div>
  				<div class="hide js-content" id="js-stock" style="border: 1px solid orange;height: 600px;">5</div>
		  	</div>
  		</div>
  	
  		<div class="col-md-2">
  			<div class="bar">
		  		<ul class="sidebar">
		  			<li class="side-fli pd20 active js-sideli" data-target="js-tender"><a href="front/help/secondary.jsp?id=js-tender">我要投标</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-account"><a href="front/help/secondary.jsp?id=js-account">账户管理</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-corporation"><a href="front/help/secondary.jsp?id=js-corporation">我要合作</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-security"><a href="front/help/secondary.jsp?id=js-security">安全保证</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-stock"><a href="front/help/secondary.jsp?id=js-stock">股票名词</a></li>
		  		</ul>
		  	</div>
  		</div>
  		
  	</div>
  	
  	
  </div>


<jsp:include page="../_footer.jsp"></jsp:include>

<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
<script type="text/javascript">
$(function(){
	var js_id="<%=id%>";
	console.log("js-id = "+js_id);
	if(js_id.match("root")){
		$(".js-hide").addClass("hide");
	}else{
		$(".js-hide").addClass("hide");
		$(".js-hide").filter("."+js_id+"").removeClass("hide");
		$(".js-sideli").removeClass("active");
		$(".js-sideli[data-target='"+js_id+"']").addClass("active");
	}
	
	$(".js-sideli").on({
		"click":function(){
			$(this).siblings().removeClass("active");
			$(this).addClass("active");
			var target=$(this).attr("data-target");
			$("#"+target+"").siblings().addClass("hide");
			$("#"+target+"").removeClass("hide");
			$(".js-hide").addClass("hide");
			$(".js-hide").filter("."+target+"").removeClass("hide");
		}
	});
});
</script>
</body>
</html>
