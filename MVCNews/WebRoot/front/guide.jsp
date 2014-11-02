<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'guide.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<style type="text/css">
.active{color:rgb(46,167,224);border-bottom: 4px solid rgb(46,167,224);}
.nav-list{border-bottom: 4px solid #ddd;height: 30px;}
.nav-list-item{float: left;height: 30px;line-height: 30px;}
.nav-list-item:hover{border-bottom: 4px solid rgb(46,167,224);cursor: pointer;color:rgb(46,167,224);}
.layer{position: relative;}
/*特殊标题1*/
.flag-left{
	position: absolute;left: -20px;top: 20px;	
}
</style>
</head>

<body>
<jsp:include page="_header.jsp"></jsp:include>
  <div class="container">
  	<h3>新手指南</h3>
  	<!-- 导航栏 -->
  	<div class="row" style="width: 1000px;">
  		<div class="col-md-12">
  			<ul class="list-unstyled nav-list">
  				<li class="f20 nav-list-item pdl20 pdr20 active" js-show="item1">XXX</li>
  				<li class="f20 nav-list-item pdl20 pdr20" js-show="item2">QQQ</li>
  				<li class="f20 nav-list-item pdl20 pdr20" js-show="item3">SSS</li>
  				<li class="f20 nav-list-item pdl20 pdr20" js-show="item4">安全保障</li>
  			</ul>
  		</div>
  	</div>
  	
  	<!-- 主体 -->
  	
  	<!-- item1 -->
  	<div id="item1">
  	<div class="layer bgc-white" style="width: 1000px;">
  	<div class="container" id="item1">
  		 <div class="row　mgt10">
  		 	<div class="flag-left">
  		 		<span class="bgc-blue1 pd10 pdr30" style="display: inline-block;">什么是XXXX</span><br>
  		 		<span class="icon-triangle-rt"></span>
  		 	</div>
  		 	
  		 	<div class="col-md-6" style="height: 400px;">
  		 		<p class="pdt60">　　国内规模最大电子代工企业之一的长城开发（000021）今日披露2010年年报。数据显示，公司去年实现营业收入207.72亿元，同比增长54.95%；净利润3.84亿元，同比增长48.58%；每股收益0.29元。公司拟向全体股东每10股派发现金1.5元。值得注意的是，在业绩向好的同时，长城开发正加快产业基地布局速度，以实现“2015年跨入全球IEMS企业前列”的战略目标。公司公告称，为进一步加快中国电子东莞产业基地的建设，拟与实际控制人中国电子旗下公司共同投资设立中国电子东莞产业建设有限公司，负责开发建设东莞虎门249.5亩商住用地。新公司注册资本3.2亿元，长城开发出资5120万元，占比16%。
  		 	</div>
  		 	<div class="col-md-6"><img alt="200*200" src="front/dist/img/index_intro3.jpg" style=""></div>		 	
  		 </div>	
  	</div><!--end item1 -->
  	</div>
  	
  	<!-- just for test -->
  	<div class="layer" style="width: 1000px;">
  	<div class="container" id="item1">
  		 <div class="row　mgt10">
  		 	<div class="flag-left">
  		 		<span class="bgc-blue1 pd10 pdr30" style="display: inline-block;">什么是XXXX</span><br>
  		 		<span class="icon-triangle-rt"></span>
  		 	</div>
  		 	
  		 	<div class="col-md-6" style="height: 400px;">
  		 		<p class="pdt60">　　国内规模最大电子代工企业之一的长城开发（000021）今日披露2010年年报。数据显示，公司去年实现营业收入207.72亿元，同比增长54.95%；净利润3.84亿元，同比增长48.58%；每股收益0.29元。公司拟向全体股东每10股派发现金1.5元。值得注意的是，在业绩向好的同时，长城开发正加快产业基地布局速度，以实现“2015年跨入全球IEMS企业前列”的战略目标。公司公告称，为进一步加快中国电子东莞产业基地的建设，拟与实际控制人中国电子旗下公司共同投资设立中国电子东莞产业建设有限公司，负责开发建设东莞虎门249.5亩商住用地。新公司注册资本3.2亿元，长城开发出资5120万元，占比16%。
  		 	</div>
  		 	<div class="col-md-6"><img alt="200*200" src="front/dist/img/index_intro3.jpg" style=""></div>		 	
  		 </div>	
  	</div><!--end item1 -->
  	</div>
  	
  	<div class="layer bgc-white" style="width: 1000px;">
  	<div class="container" id="item1">
  		 <div class="row　mgt10">
  		 	<div class="flag-left">
  		 		<span class="bgc-blue1 pd10 pdr30" style="display: inline-block;">什么是XXXX</span><br>
  		 		<span class="icon-triangle-rt"></span>
  		 	</div>
  		 	
  		 	<div class="col-md-6" style="height: 400px;">
  		 		<p class="pdt60">　　国内规模最大电子代工企业之一的长城开发（000021）今日披露2010年年报。数据显示，公司去年实现营业收入207.72亿元，同比增长54.95%；净利润3.84亿元，同比增长48.58%；每股收益0.29元。公司拟向全体股东每10股派发现金1.5元。值得注意的是，在业绩向好的同时，长城开发正加快产业基地布局速度，以实现“2015年跨入全球IEMS企业前列”的战略目标。公司公告称，为进一步加快中国电子东莞产业基地的建设，拟与实际控制人中国电子旗下公司共同投资设立中国电子东莞产业建设有限公司，负责开发建设东莞虎门249.5亩商住用地。新公司注册资本3.2亿元，长城开发出资5120万元，占比16%。
  		 	</div>
  		 	<div class="col-md-6"><img alt="200*200" src="front/dist/img/index_intro3.jpg" style=""></div>		 	
  		 </div>	
  	</div><!--end item1 -->
  	</div>
  	
  	</div>
  	
  	
  	
  </div>


<jsp:include page="_footer.jsp"></jsp:include>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="front/dist/js/site.effect.js"></script>
</body>

</html>
