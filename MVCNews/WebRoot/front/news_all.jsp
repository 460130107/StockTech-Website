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
					<span class="more important"><a href="front/news.jsp">返回资讯主页&#8634;</a></span>
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
										<p class="title">新闻1+1 all-1</p>
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
										<p class="title">新闻1+1 all-2</p>
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
										<p class="title">新闻1+1 b2-1</p>
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
										<p class="title">新闻1+1 b2-2</p>
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
										<p class="title">新闻1+1 b3-1</p>
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
										<p class="title">新闻1+1 b3-2</p>
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
										<p class="title">新闻1+1 b4-1</p>
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
										<p class="title">新闻1+1 b4-2</p>
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
	/*====变量====*/
	
	var total={};
	total.all,total.type2,total.type3,total.type4;	
	var newsMsg;
	/*判断当前显示新闻的类别*/
	function determinType(){
		var type=$(".topbar li.active").attr("data-target");
		return type;/*返回当前新闻类别*/
	}
	/*获取包含所有新闻的综合列表*/
	$.ajax({
		url:"front/test/json_all",
		type:"GET",
		data:{"page":"all","search":"type2,type3,type4"},
		success:function(msg){
			console.log("get info success");
			var obj=eval("("+msg+")");
			newsMsg=obj;
			total.all=obj.type2.length+obj.type3.length+obj.type4.length;
			total.type2=obj.type2.length;
			console.log("total.type2 = "+total.type2);
			total.type3=obj.type3.length;
			total.type4=obj.type4.length;
			reshapePagination();
			displayPagination();
			replace(1,2);
		},
		error:function(){
			console.log("get info error");
		}
	});
	
	/*重塑分页组件*/
	function reshapePagination(){
		var type=determinType();
		var tt;
		if(type.match("all")){tt=total.all;}
		else if(type.match("2")){tt=total.type2;}
		else if(type.match("3")){tt=total.type2;}
		else if(type.match("4")){tt=total.type2;}
		tt=Math.ceil(tt/2)
		$(".pagination li").remove();
		$(".pagination").append('<li><a href="javascript:void(0);" data-dir="pre">&laquo;</a></li>');
		for(var i=1;i<=tt;i++){
			$(".pagination").append('<li data-dir='+i+'><a href="javascript:void(0);">'+i+'</a></li>');
		}
		$(".pagination").append('<li><a href="javascript:void(0);" data-dir="next">&raquo;</a></li>');
	}
	/*获取当前新闻类别所需的页数*/
	function getPageNum(){
		var type=determinType();
		var tt=0;
		if(type.match("all")){tt=total.all;}
		else if(type.match("2")){tt=total.type2;}
		else if(type.match("3")){tt=total.type2;}
		else if(type.match("4")){tt=total.type2;}
		tt=Math.ceil(tt/2)
		return tt;
	}
	/*分页显示*/
	function displayPagination(){
		var NumPerPage=2;/*每页显示新闻数目*/
		var pageNum=getPageNum();
		var current=1;
		$(".pagination li[data-dir=1]").addClass("active");
		$(".pagination li").on({
			"click":function(){				
				var type=determinType();
				if(isNaN($(this).children("a").text())){//not a number
					if($(this).children("a").attr("data-dir").match("pre")){
						if(current!=1){
							current=current-1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+current+"]").addClass("active");
						}
					}else{
						if(current!=pageNum){
							current=current+1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+current+"]").addClass("active");
						}
					}
				}else{//is a number
					current=parseInt($(this).children("a").text());
					$(this).siblings("li").removeClass("active");
					$(this).addClass("active");
				}				
				replace(current,NumPerPage);
			}
		});
	}
	function replace(current,numPerPage){
		//console.log("current = "+flag);
		var type=determinType();
		var curMsg;
		if(type.match("all")){curMsg=newsMsg.type2}
		else if(type.match("2")){curMsg=newsMsg.type2;}
		else if(type.match("3")){curMsg=newsMsg.type3;}
		else if(type.match("4")){curMsg=newsMsg.type4;}
		console.log(curMsg);
		/* console.log("current news type = "+type);
		console.log("current page = "+current); */
		$(".block[data-aim="+type+"] > .news").each(function(key,val){
			$(this).find(".title").text(curMsg[numPerPage*current-numPerPage+key].title);
			$(this).find(".source").text(curMsg[numPerPage*current-numPerPage+key].author);
			$(this).find(".body").text(curMsg[numPerPage*current-numPerPage+key].content);
		});
	}
	
	/*新闻类别切换*/
	function switchTab_hor(){
		var target=$(this).attr("data-target");
		$(".tab-horizontal .block[data-aim]").removeClass("hide");
		$(".tab-horizontal .block[data-aim!='"+target+"']").addClass("hide");
		/*topbar li style switch*/
		$(".tab-horizontal .topbar li").removeClass("active");
		$(".tab-horizontal .topbar li[data-target='"+target+"']").addClass("active");
		/*分页*/
		reshapePagination();
		displayPagination();
		replace(1,2);
	}
	$(".tab-horizontal .topbar li").click(switchTab_hor);
});

</script>
</body>
</html>
