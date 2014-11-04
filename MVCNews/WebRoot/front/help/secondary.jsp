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
<style type="text/css">
/*索引模块*/
div.index{
	background: #F9F9F9;
}
div.index .item{
	display: inline-block;
	text-align:center;
	min-width: 100px;
	/* background: pink; */
	margin-right: 15px;
}
div.index .item a{
	/* color:#fff; */
}
div.index .item a:hover{
	text-decoration: none;
}
div.index .active{
	background: #C6BFBF;
	border-radius:4px;
}

/*二级切换文本模块*/
.secondContent{
	background: #F9F9F9;
}
</style>
</head>
  
<body>
<jsp:include page="../_header.jsp"></jsp:include>

<%
String id="root";
String sid="sroot";
if(request.getParameter("id")=="" || request.getParameter("id")==null){
	id="root";
}else{
	id=request.getParameter("id");
}

if(request.getParameter("sid")=="" || request.getParameter("sid")==null){
	sid="sroot";
}else{
	sid=request.getParameter("sid");
}
//System.out.println("id = "+id);
%>

  <div class="container mgb40">
  	<div>
  		<ul id="breadcrumb" class="js-breadcrumb">
		  <li><a href="#"><span class="icon">主页</span></a></li>
		  <li><a href="front/help/index.jsp"><span class="icon"></span>帮助中心</a></li>
		  <!--  <li class="js-hide js-purchase" data-target="js-purchase"><a href="javascritp:void(0);"><span class="icon js-purchase"></span>产品购买</a></li>
		  <li class="js-hide js-account" data-target="js-account"><a href="javascritp:void(0);"><span class="icon "></span>账户管理</a></li>
		  <li class="js-hide js-corporation" data-target="js-corporation"><a href="javascritp:void(0);"><span class="icon "></span>项目合作</a></li>
		  <li class="js-hide js-service" data-target="js-service"><a href="javascritp:void(0);"><span class="icon "></span>协议条款</a></li>
		  <li class="js-hide js-stock" data-target="js-stock"><a ><span class="icon "></span>股票名词</a></li>
		  <li class="js-hide finally"></li> -->
		</ul>
  	</div>
  	<div class="row">
  		<div class="col-md-9" style="float: right;left:-100px;">
  			<div class="content">
  				<div class="js-content pdl20 pdr20 bgc-white"  id="js-purchase" style="border: 1px solid #ddd;min-height: 600px;">
  					<!-- tender -->
  					<h3>产品购买</h3>
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
  				
  				<div class="js-content" id="js-account" style="border: 1px solid green;min-height: 600px;">2</div>
  				
  				<div class="js-content" id="js-corporation" style="border: 1px solid yellow;min-height: 600px;">3</div>
  				
  				<div class="js-content pdl20 pdr20 bgc-white" id="js-service" style="border: 1px solid #ddd;min-height: 600px;">
					<!-- 协议条款 -->
  					<div class="index pdt20 pdb20 mgt20 mgb20">
  						<span class="item f16 mgl10" data-target="js-privacy"><a href="javascript:void(0);" data-target="js-privacy">隐私条款</a></span>
  						<span class="item f16" data-target="js-service"><a href="javascript:void(0);" data-target="js-service">服务政策</a></span>
  						<span class="item f16" data-target="js-law"><a href="javascript:void(0);" data-target="js-law">法律文件</a></span>
  					 </div>
  					<div class="secondContent pd10 spac1 lineheight20 mgb20 js-sec js-privacy" id="js-privacy">
  						<!-- 隐私条款 -->
  						<p class="f16">除非另有规定,我们可以为以下目的使用你的个人信息:改进本网站的内容、根据你的喜好将网站个体化、与你交流信息(如果你提出过要求)、用于我们的营销及研究目的以及用于本隐私制度所述之其他目的。如果你向本网站提供个人信息,我们可以将该等信息与其他主动收集之信息进行合并，除非我们在收集信息时有特别声明。除非你另行同意，我们将采取合理措施，以防止你的个人信息与其他被动收集之信息进行合并。 我们可能会将你的个人信息向三得利（中国）投资有限公司全世界范围内的其他关联公司进行披露，但前提是他们也同意遵守本隐私制度的规定。另外，我们可能也会将你的个人信息透露给在中国或其他国家的第三方，但仅限于：
  					</div>
  					<div class="secondContent pd10 spac1 lineheight20 mgb20 js-sec js-service" id="js-service">
  						<!-- 服务政策 -->
  						<p class="f16">斯多克科技有权根据互联网的发展和中华人民共和国有关法律、法规的变化，不时地完善和修改斯多克科技服务条款。斯多克科技保留随时修改服务条款的权利，用户在使用斯多克科技平台服务时，有必要对最新的斯多克科技服务条款进行仔细阅读和重新确认，当发生有关争议时，请以最新的服务条款为准。
  					</div>
  					<div class="secondContent pd10 spac1 lineheight20 mgb20 js-sec js-law" id="js-law">
  						<!-- 法律文件 -->
  						<p class="f16">Meter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。
  					</div>
				</div>  					
  				
  				<div class="js-content" id="js-stock" style="border: 1px solid orange;min-height: 600px;">5</div>
		  	</div>
  		</div>
  	
  		<div class="col-md-2">
  			<div class="bar">
		  		<ul class="sidebar">
		  			<li class="side-fli pd20 active js-sideli" data-target="js-purchase"><a href="front/help/secondary.jsp?id=js-purchase" data-target="js-purchase">产品购买</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-account"><a href="front/help/secondary.jsp?id=js-account" data-target="js-account">账户管理</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-corporation"><a href="front/help/secondary.jsp?id=js-corporation" data-target="js-corporation">项目合作</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-service"><a href="front/help/secondary.jsp?id=js-service" data-target="js-service">协议条款</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-stock"><a href="front/help/secondary.jsp?id=js-stock" data-target="js-stock">股票名词</a></li>
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
	//console.log("js-id = "+js_id);
	if(js_id.match("root")){
		//top navigator
		var $liObj=$('<li class="js-purchase" data-target="js-purchase"><a><span class="icon js-purchase"></span>产品购买</a></li>');
		$liObj.appendTo($("#breadcrumb"));
		$liObj.children("a").attr("href","javascript:void(0)");
		//sidebar 
		$(".side-fli").removeClass("active");
		$(".side-fli[data-target='js-purchase']").addClass("active");
		//show and hide content block
		$(".js-content[id!='js-purchase']").addClass("hide");
	}else{
		//top navigator
		var str=$(".side-fli").children("a[data-target='"+js_id+"']").text();
		console.log("str = "+str);
		var $liObj=$('<li class="'+js_id+'" data-target="'+js_id+'"><a><span class="icon '+js_id+'"></span>'+str+'</a></li>');
		$liObj.appendTo($("#breadcrumb"));
		$liObj.children("a").attr("href","javascript:void(0)");
		//sidebar 
		$(".side-fli").removeClass("active");
		$(".side-fli[data-target='"+js_id+"']").addClass("active");
		//show and hide content block
		$(".js-content[id!='"+js_id+"']").addClass("hide");				
	}
	
	$(".js-sideli").on({
		"click":function(){
			var target=$(this).children("a").attr("data-target");
			console.log("data-target = "+target);
			window.location.href="front/help/secondary.jsp?id="+target;
		}
	});
	
	//二级索引导航
	var js_sid="<%=sid%>";
	console.log("sid = "+js_sid);
	if((js_sid).match("sroot")){
		//index item active
		$("span.item[data-target='js-privacy']").addClass("active");
		$(".secondContent[id!='js-privacy']").addClass("hide");
	}else{
		$("span.item[data-target='"+js_sid+"']").addClass("active");
		$(".secondContent[id!='"+js_sid+"']").addClass("hide");
	}
	$("span.item").children("a").on({
		"click":function(){
			var starget=$(this).attr("data-target");
			//console.log("starget = "+starget);
			window.location.href="front/help/secondary.jsp?id="+js_id+"&sid="+starget;
		}
	}); 
	
});
</script>
</body>
</html>
