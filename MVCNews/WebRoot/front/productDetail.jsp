<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'productDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="front/dist/css/bootstrap.css" rel="stylesheet">
	<link href="front/dist/css/common.css" rel="stylesheet">
	<link href="front/dist/css/product.css" rel="stylesheet">
  </head>
  
  <body>
  <jsp:include page="_header.jsp?index=product" />
  
  <div class="pdt60 pdb60" style="text-align:center;background-size:100% 100%;;background-image: url('front/dist/img/product-detail.jpg');">
  	<!-- <img alt="img" src="front/dist/img/product-detail.jpg" style="width: 100%;"> -->
  	<a class="btn btn-default btn-info" href="">点击下载</a>
  </div>
   <!-- 产品图形介绍 -->
   <div class="bgc-green1">
	  <div class="container">
		<div class="row mb10" >
			<div class="col-md-3">
				<img alt="140x140" src="img/a.jpg" class="img-polaroid" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-8">
				<h3>
					what is xxxx
				</h3>
				<p>
					<em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
				</p>
			</div>
		</div>
		<div class="row mb10">
			<div class="col-md-3">
				<img alt="140x140" src="img/a.jpg" class="img-polaroid" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-8">
				<h3>投资收益</h3>
				<p><em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。</p>
			</div>
		</div>
		<div class="row mb10">
			<div class="col-md-3">
				<img alt="140x140" src="img/a.jpg" class="img-polaroid" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-7">
				<h3>申请须知</h3>
				<p><em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。</p>
			</div>
		</div>
	 </div>
   </div>
	
	<!-- 投资效果 -->
	<!-- <div class="bgc-green">
		<div class="row question">
		<div class="title"> 
	  		<h3>投资效果</h3>
	  	</div> 
	  	<hr>
		<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
			<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
			<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
		</div>
	</div> -->
	
	<!-- 产品相关细节问题 -->
	<div class="bgc-blue">
	<div class="container">
		<div> 
	  		<h3>产品细节咨询</h3>
	  	</div> 
	  	<hr> 
		<ul>
			<li>
				<h5>什么是产品XXX</h5>
				<p>U计划是人人贷推出的便捷高效的自动投标工具。U计划在用户认可的标的范围内，对符合要求的标的进行自动投标，且回款本金在相应期限内自动复投，期限结束后U</p>
			</li>
			<li>
				<h5>原优选理财计划的相关说明</h5>
				<p>1.U计划支持提前退出，提前退出费用为加入计划金额的2%。<br>
							2.U计划到期后自动退出，无需另行操作。<br>
							3.U计划支持的收益处理方式：<br>
							收益再投资<br>
							提取至主账户<br>
							注：收益处理方式选择后不再支持中途修改。</p>
			</li>
			<li>
				<h5>问题问题问题</h5>
				<p>U计划上线后，不再新发优选理财计划。<br>
							    历史上已发布的优选理财计划照常运行，原有规则保持不变。每期收益均会根据您所选择的收益处理方式照常处置，直到优选理财计划期满您主动选择退出为止。<br>
							    原优选理财计划仍保留三种收益处理方式：收益再投资、当日提取至人人贷账户或每月定时提取至用户指定的银行卡，用户可以根据需求修改收益处理方式。<br>
							原优选理财计划仍不支持提前退出。
	                       </p>
			</li>
		</ul>
	</div>
	</div>
<jsp:include page="_footer.jsp" />
  </body>
</html>
