<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>斯多克 -- 最新资讯</title>
   
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="front/dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/base.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/common.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/page.css">
</head>
<body>
<jsp:include page="_header.jsp?index=news"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="tab-horizontal">
				<div class="topbar">
					<ul class="mgt20">
						<li class="active" data-target="js-type-all">全部新闻</li>
						<li class="" data-target="js-type-2">财经头条</li>
						<li class="" data-target="js-type-3">财经要闻</li>
						<li class="" data-target="js-type-4">投资者管理</li>
					</ul>
					<span class="more important"><a href="news">返回资讯主页&#8634;</a></span>
				</div>
				<div class="clearfix"></div>
				<div class="content mgt20 mgb20">
					<!-- 全部新闻 -->
					<div class="block" data-aim="js-type-all" data-type="all">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 all-1</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 all-2</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						
					</div><!-- end 全部新闻 -->
					
					<!-- 财经头条 -->
					<div class="block hide" data-aim="js-type-2" data-type="type2">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b2-1</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b2-2</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
					</div><!-- end 财经头条 -->
					
					<!-- 财经要闻 type3 -->
					<div class="block hide" data-aim="js-type-3" data-type="type3">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b3-1</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b3-2</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>	
					</div><!-- end 财经要闻 type3 -->
					
					<!-- 投资者管理 type4 -->
					<div class="block hide" data-aim="js-type-4" data-type="type4">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b4-1</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);">新闻1+1 b4-2</a></p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
					</div><!-- end 投资者管理 type5 -->
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container text-center">
	<div class="row">
		<div class="col-lg-12">
			<ul class="pagination">
				<!-- <li><a href="javascript:void(0);">&laquo;</a></li>
			  	<li class="active"><a href="javascript:void(0);">1</a></li>
			  	<li><a href="javascript:void(0);">2</a></li>
			  	<li><a href="javascript:void(0);">3</a></li>
			  	<li><a href="javascript:void(0);">4</a></li>
			  	<li><a href="javascript:void(0);">5</a></li>
			  	<li><a href="javascript:void(0);">&raquo;</a></li> -->
			</ul>
		</div>
	</div>
</div>

<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
<script type="text/javascript">
$(function(){
	var currentPage=1;
	var num_all,num_type2,num_type3,num_type4;
	var NumPerPage;
	var newsInfo;
	$.ajax({
		url:"<%=request.getContextPath()%>/interface/acquireHomepageAction.action",
		type:"GET",
		dataType:"json",
		data:{"page":"more","search":"type2,type3,type4"},
		success:function(msg){
			//msg.allInfo=
			var obj=eval("("+msg.allInfo+")");
			//console.log(obj.newsInfo.all);
			num_all=obj.pagination.total,num_type2=obj.pagination.type2,num_type3=obj.pagination.type3,num_type4=obj.pagination.type4;
			//NumPerPage=obj.numPerPage;
			NumPerPage=2;
			newsInfo=obj.newsInfo;
			console.log(newsInfo.type3[0].id);
			/*重塑分页组件*/
			reshapePagination(num_all,NumPerPage);
			//reshapePagination(num_all,NumPerPage);
			displayPagination(currentPage,obj.pagination.total,obj.numPerPage);
			//显示当前页面的新闻列表
			replace_tab(newsInfo);
		},
		error:function(){
			console.log("get info error");
		}
	});
	
	/*重塑分页组件*/
	function reshapePagination(total,numPerPage){
		tt=Math.ceil(total/numPerPage);
		$(".pagination li").remove();
		$(".pagination").append('<li data-dir="pre"><a href="javascript:void(0);">&laquo;</a></li>');
		for(var i=1;i<=tt;i++){
			if(i==1){
				$(".pagination").append('<li data-dir='+i+' class="active"><a href="javascript:void(0);">'+i+'</a></li>');
			}else{
				$(".pagination").append('<li data-dir='+i+'><a href="javascript:void(0);">'+i+'</a></li>');
			}
		}
		$(".pagination").append('<li data-dir="next"><a href="javascript:void(0);">&raquo;</a></li>');
	}
	
	/*分页组件==翻页显示*/
	function displayPagination(currentPage,total,numPerPage){
		$(".pagination li").on({
			"click":function(){
				if(isNaN($(this).text())){//not a number
					if($(this).attr("data-dir").match("pre")){
						if(currentPage!=1){
							currentPage=currentPage-1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+currentPage+"]").addClass("active");
						}
					}else{
						if(currentPage!=Math.ceil(total/numPerPage)){
							currentPage=currentPage+1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+currentPage+"]").addClass("active");
						}
					}
				}else{//is a number
					currentPage=parseInt($(this).text());
					$(this).siblings("li").removeClass("active");
					$(this).addClass("active");
				}
				$.ajax({
					url:"<%=request.getContextPath()%>/interface/acquireNewsByTypeAction.action",
					type:"GET",
					dataType:"json",
					data:{"currentPage":currentPage,"search":getCurrentPageType()},
					success:function(msg){
						//显示（下一/上一）页内容
						//console.log("dd "+msg.newsInfo);
						var obj=eval("("+msg.newsInfo+")");
						console.log(obj.all);
						replace_pag(obj);
					},
					error:function(){
						console.log("get info error");
					}
				});
			}
		});
	}	
	/*新闻类别切换==初始显示*/
	function switchTab_hor(){
		var target=$(this).attr("data-target");
		$(".tab-horizontal .block[data-aim]").removeClass("hide");
		$(".tab-horizontal .block[data-aim!='"+target+"']").addClass("hide");
		/*topbar li style switch*/
		$(".tab-horizontal .topbar li").removeClass("active");
		$(".tab-horizontal .topbar li[data-target='"+target+"']").addClass("active");
		/*重塑分页组件*/
		if(target.match("2")){
			reshapePagination(num_type2,NumPerPage);
			displayPagination(currentPage,num_type2,NumPerPage);
		}else if(target.match("3")){
			reshapePagination(num_type3,NumPerPage);
			displayPagination(currentPage,num_type3,NumPerPage);
		}else if(target.match("4")){
			reshapePagination(num_type4,NumPerPage);
			displayPagination(currentPage,num_type4,NumPerPage);
		}else{
			reshapePagination(num_all,NumPerPage);
			displayPagination(currentPage,num_all,NumPerPage);
		}
		
		replace_tab(newsInfo);
		//console.log(newsInfo);
	}
	$(".tab-horizontal .topbar li").click(switchTab_hor);
	
	//翻页显示
	function replace_pag(msg){
		var obj=msg;
		var target=$(".tab-horizontal .topbar li.active").attr("data-target");
		if(target.match("2")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.type2[key].title);
				$(this).find(".title a").attr(obj.type2[key].id);
				$(this).find(".source").text(obj.type2[key].author);
				$(this).find(".body").text(obj.type2[key].summary);
			});
		}else if(target.match("3")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.type3[key].title);
				$(this).find(".title a").attr(obj.type3[key].id);
				$(this).find(".source").text(obj.type3[key].author);
				$(this).find(".body").text(obj.type3[key].summary);
			});
		}else if(target.match("4")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.type4[key].title);
				$(this).find(".title a").attr(obj.type4[key].id);
				$(this).find(".source").text(obj.type4[key].author);
				$(this).find(".body").text(obj.type4[key].summary);
			});
		}else{
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.all[key].title);
				$(this).find(".title a").attr(obj.newsInfo.all[key].id);
				$(this).find(".source").text(obj.all[key].author);
				$(this).find(".body").text(obj.all[key].summary);
			});
		}
	}
	//初始显示
	function replace_tab(msg){
		//var obj=eval("("+msg+")");
		var obj={};
		obj.newsInfo=msg;
		var target=$(".tab-horizontal .topbar li.active").attr("data-target");
		if(target.match("2")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.newsInfo.type2[key].title);
				$(this).find(".title a").attr(obj.newsInfo.type2[key].id);
				$(this).find(".source").text(obj.newsInfo.type2[key].author);
				$(this).find(".body").text(obj.newsInfo.type2[key].summary);
			});
		}else if(target.match("3")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.newsInfo.type3[key].title);
				$(this).find(".title a").attr(obj.newsInfo.type3[key].id);
				$(this).find(".source").text(obj.newsInfo.type3[key].author);
				$(this).find(".body").text(obj.newsInfo.type3[key].summary);
			});
		}else if(target.match("4")){
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.newsInfo.type4[key].title);
				$(this).find(".title a").attr(obj.newsInfo.type4[key].id);
				$(this).find(".source").text(obj.newsInfo.type4[key].author);
				$(this).find(".body").text(obj.newsInfo.type4[key].summary);
			});
		}else{
			$(".block[data-aim="+target+"] > .news").each(function(key,val){
				$(this).find(".title a").text(obj.newsInfo.all[key].title);
				$(this).find(".title a").attr(obj.newsInfo.all[key].id);
				$(this).find(".source").text(obj.newsInfo.all[key].author);
				$(this).find(".body").text(obj.newsInfo.all[key].summary);
			});
		}
	}
	
	//
	function getCurrentPageType(){
		var currentPageType=$(".tab-horizontal .topbar li.active").attr("data-target");
		if(currentPageType.match("2")){
			currentPageType="type2";
		}else if(currentPageType.match("3")){
			currentPageType="type3";
		}else if(currentPageType.match("4")){
			currentPageType="type4";
		}else{
			currentPageType="type2,type3,type4";
		}
		return currentPageType;
	}
});

$(".title a").click(function(){
	window.location.href="news_item?id="+$(this).attr("data-id");
});

</script>
</body>
</html>
