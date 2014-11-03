<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">  
<title>My JSP 'projectDetail.jsp' starting page</title>   
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="icon" href="../../favicon.ico">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/customer-service.css" rel="stylesheet">
</head>
  
<body>
<jsp:include page="_header.jsp?para=project"></jsp:include> 
<div class="suspend">
		<dl>
			<dt class="IE6PNG"></dt>
			<dd class="suspendQQ"><a href="http://jq.qq.com/?_wv=1027&amp;k=LohcW9" target="_blank"></a></dd>
			<dd class="suspendTel"><a href="javascript:void(0);"></a></dd>
		</dl>
	</div>
<!--     <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2271088927&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1715958482:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a> -->

<div class="container" style="border: 1px solid #ddd;">
	<div class="row mgb20" style="border-bottom: 1px dashed #ddd;">
		<h3 class="bgc-green1 pdl20 pdb20 pdt20">新三板合作项目</h3>
		<div class="col-md-8">
			<p>项目概述
			<ul>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
			</ul>
			
		</div>
		<div class="col-md-2"><a class="btn btn-default btn-block btn-info">点击申请</a></div>
	</div>
	
	<div class="row mgb20" style="border-bottom: 1px dashed #ddd;">
		<div class="col-md-8">
			<p>合作方式
			<ul>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
				<li>信用报告（可去当地人民银行打印，部分地区可登陆个人信用信息服务平台）</li>
			</ul>
			
		</div>
	</div>
	
	<div class="row mgb20" style="border-bottom: 1px dashed #ddd;">
		<div class="col-md-12">
			<p>签约合作方
			
			<ul class="list-unstyled list-inline">
				<li><img alt="patener1" src="" class="img200"></li>
				<li><img alt="patener2" src="" class="img200"></li>
				<li><img alt="patener3" src="" class="img200"></li>
				<li><img alt="patener3" src="" class="img200"></li>
			</ul>
			
		</div>
	</div>

</div>

<jsp:include page="_footer.jsp"></jsp:include>

<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
<script type="text/javascript">
$(function() {
	$(".suspend").mouseover(function() {
		        $(this).stop();
		        $(this).animate({width: 160}, 400);
	    	});
	
		    $(".suspend").mouseout(function() {
		        $(this).stop();
		        $(this).animate({width: 40}, 400);
		    });
});
</script>
</body>
</html>
