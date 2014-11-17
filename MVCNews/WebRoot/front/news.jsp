<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>斯多克 -- 咨询中心</title>  
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="front/dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/base.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/common.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/page.css">
<style type="text/css">
div{
	/* border: 1px solid green; */
	/* min-height: 100px; */
}
</style>
</head>
  
<body>
<jsp:include page="_header.jsp?index=news"></jsp:include>
	<div class="container text-center">
		<!-- hot news -->
		<div class="row text-left hotnews" data-type="type1">
			<div class="col-lg-4"><img alt="news1" src="front/dist/img/news/news1.jpg"><p class="profile"><a href="javascript:viod(0);">今日头条1</a></p></div>
			<div class="col-lg-4"><img alt="news2" src="front/dist/img/news/news1.jpg"><p class="profile"><a href="javascript:viod(0);">今日头条2</a></p></div>
			<div class="col-lg-4"><img alt="news3" src="front/dist/img/news/news1.jpg"><p class="profile"><a href="javascript:viod(0);">今日头条3</a></p></div>
		</div>
		<!-- end hot news -->
		<div class="row">
			<div class="col-lg-8">
				<!-- 要闻概览 -->
				<div class="row overview">
					<div class="col-lg-12">
						<div class="tab-horizontal">
							<div class="topbar">
								<ul class="mgt20">
									<li class="active" data-target="js-block1">财经头条</li>
									<li class="" data-target="js-block2">财经要闻</li>
									<li class="" data-target="js-block3">投资者管理</li>
								</ul>
								<span class="more"><a href="front/news_all.jsp">更多&#10174;</a></span>
							</div>
							<div class="clearfix"></div>
							<div class="content mgt20 mgb20">
								<div class="block" data-aim="js-block1" data-type="type2">
									<ul>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会中国去确定举办2016年G20峰会中国去确定举办2016年G20峰会中国去确定举办2016年G20峰会</a></span><span class="date">2014-11-16</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会</a></span><span class="date">2014-11-16</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会</a></span><span class="date">2014-11-16</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会</a></span><span class="date">2014-11-16</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会</a></span><span class="date">2014-11-16</span></li>
									</ul>
								</div>
								<div class="block hide" data-aim="js-block2" data-type="type3">
									<ul>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会2</a></span><span class="date">2014-11-18</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会2</a></span><span class="date">2014-11-18</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会2</a></span><span class="date">2014-11-18</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会2</a></span><span class="date">2014-11-18</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会2</a></span><span class="date">2014-11-18</span></li>
									</ul>
								</div>
								<div class="block hide" data-aim="js-block3" data-type="type4">
									<ul>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会3</a></span><span class="date">2014-11-19</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会3</a></span><span class="date">2014-11-19</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会3</a></span><span class="date">2014-11-19</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会3</a></span><span class="date">2014-11-19</span></li>
										<li class="item"><span class="title"><a href="javascript:viod(0);" class="">中国去确定举办2016年G20峰会3</a></span><span class="date">2014-11-19</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end 要闻概览 -->
				
				<!-- 四大板块 -->
				<div class="row classify">
					<!-- 股票市场 -->
					<div class="col-lg-6 sector" data-type="type5">
						<div class="caption text-left"><span class="title">股票市场</span><span class="more"><a href="javascript:viod(0);">更多&#10174;</a></span></div>
						<ul class="list">
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？今天你站队了吗？今天你站队了吗？今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>												
						</ul>
					</div>
					<!-- 基金市场 -->
					<div class="col-lg-6 sector" data-type="type6">
						<div class="caption text-left"><span class="title">基金市场</span><span class="more"><a href="javascript:viod(0);">更多&#10174;</a></span></div>
						<ul class="list">
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>												
						</ul>
					</div>
				</div>
				<div class="row classify">
					<!-- 债券/外汇 -->
					<div class="col-lg-6 sector" data-type="type7">
						<div class="caption text-left"><span class="title">债券/外汇</span><span class="more"><a href="javascript:viod(0);">更多&#10174;</a></span></div>
						<ul class="list">
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>												
						</ul>
					</div>
					<!-- 期货市场 -->
					<div class="col-lg-6 sector" data-type="type8">
						<div class="caption text-left"><span class="title">期货市场</span><span class="more"><a href="javascript:viod(0);">更多&#10174;</a></span></div>
						<ul class="list">
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>
							<li class=""><span class="title"><a href="javascript:viod(0);">今天你站队了吗？</a></span><span class="date">2014-11-16</span></li>												
						</ul>
					</div>
				</div>
			</div>
			<!-- end 四大板块 -->
			
			<!-- 指数板块 -->
			<div class="col-lg-4">
				<div class="row stock-index">
					<div class="tab-hor-compact">
						<div class="topbar mgt20">
							<ul class="mgt20">
								<li data-target="js-shangzheng">上证指数<span class="flag-border">&#9650</span><span class="flag-cover">&#9650</span></li>
								<li data-target="js-shenzheng">深证指数<span class="flag-border hide">&#9650</span><span class="flag-cover hide">&#9650</span></li>
								<li data-target="js-hushen">沪深300<span class="flag-border hide">&#9650</span><span class="flag-cover hide">&#9650</span></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="content">
							<div class="block" data-aim="js-shangzheng">shangzheng</div>
							<div class="block hide" data-aim="js-shenzheng">shenzheng</div>
							<div class="block hide" data-aim="js-hushen">hushen</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- end 指数板块 -->
		</div>
	</div>
<jsp:include page="_footer.jsp"></jsp:include>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
function switchTab_hor(){
	var target=$(this).attr("data-target");
	$(".tab-horizontal .block[data-aim]").removeClass("hide");
	$(".tab-horizontal .block[data-aim!='"+target+"']").addClass("hide");
	/*topbar li style switch*/
	$(".tab-horizontal .topbar li").removeClass("active");
	$(".tab-horizontal .topbar li[data-target='"+target+"']").addClass("active");
}
function switchTab_hor_com(){
	var target=$(this).attr("data-target");
	$(".tab-hor-compact .block[data-aim]").removeClass("hide");
	$(".tab-hor-compact .block[data-aim!='"+target+"']").addClass("hide");
	/*topbar li style switch*/
	$(".tab-hor-compact .topbar li span").removeClass("hide");
	$(".tab-hor-compact .topbar li[data-target!='"+target+"'] span").addClass("hide");
}
$(".tab-horizontal .topbar li").click(switchTab_hor);
$(".tab-hor-compact .topbar li").click(switchTab_hor_com);

$(function(){
	$.ajax({
		url:"front/test/json",
		type:"GET",
		data:{"page":"index","search":"type1,type2,type3,type4,type5,type6,type7,type8"},
		success:function(msg){
			var obj=eval("("+msg+")");
			/*hotnews*/
			$.each($(".hotnews a"),function(key,val){
				var str=obj.type1[key].split("+");
				$(this).text(str[0]);
				//跳转到具体的某一条新闻
			});
			/*overview*/
			$.each($(".tab-horizontal li.item"),function(key,val){
				var division=Math.floor(key/5);
				var modulus=key%5;
				var date = new Date();
				switch(division){
					case 0:	//console.log(obj.type2);
							var str=obj.type2[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							//跳转到具体某一条新闻
							break;
					case 1: //console.log(obj.type3);
							var str=obj.type3[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							break;
					case 2: //console.log(obj.type4);
							var str=obj.type4[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							break;
				}
			});
			/*classify*/
			$.each($(".classify li"),function(key,val){
				var division=Math.floor(key/5);
				var modulus=key%5;
				var date = new Date();
				switch(division){
					case 0:
							var str=obj.type5[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							//跳转到具体某一条新闻
						   	break;
					case 1:
							var str=obj.type6[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							//跳转到具体某一条新闻
						   	break;
					case 2:	
							var str=obj.type7[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							//跳转到具体某一条新闻
						   	break;
					case 3:
							var str=obj.type8[modulus].split("+");
							$(this).children(".title").children("a").text(str[0]);
							$(this).children(".date").text(str[1]);
							//跳转到具体某一条新闻
						   	break;
				}
			})
		},
		error:function(){
			console.log("get info error");
		}
	});
});
</script>
</body>
</html>
