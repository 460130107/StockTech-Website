<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>policy</title> 
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="icon" href="../../favicon.ico">

<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#policy_bd{width: 1000px;margin: 50px auto;}
#myTabContent{
	padding: 30px 10px;
	border: 1px solid #ddd;
	border-top: 0;
}
</style>
</head>
  
<body>
<jsp:include page="_header.jsp?index=project" />

<div id="policy_bd">
<ul id="myTab" class="nav nav-tabs">
   <li class="active"><a href="#provicy" data-toggle="tab">隐私条款</a></li>
   <li><a href="#policy" data-toggle="tab">服务政策</a></li>
   <li><a href="#question" data-toggle="tab">常见问题</a></li>
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="provicy">
      <p>W3Cschoool菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
   </div>
   <div class="tab-pane fade" id="policy">
      <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
      TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
   </div>
   <div class="tab-pane fade" id="question">
      <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
   </div>
</div>

</div>

<jsp:include page="_footer.jsp" />

<!-- script -->
<script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script>
   $(function () {
      $('#myTab li:eq(0) a').tab('show');
   });
</script>
</body>
</html>
