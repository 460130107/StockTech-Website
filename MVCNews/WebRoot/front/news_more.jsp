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
<%
String more="";
more=request.getParameter("more");
if(more==""||more==null){
	more="root";
}
System.out.println(more);
 %>

<jsp:include page="_header.jsp?index=news"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="tab-horizontal">
				<div class="topbar">
					<ul class="mgt20">
						<!-- <li class="active" data-target="js-type-all"></li>
						<li class="" data-target="js-type-2"></li>
						<li class="" data-target="js-type-3"></li>
						<li class="" data-target="js-type-4"></li>
						<li class="" data-target="js-type-4"></li> -->
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
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						
					</div><!-- end 全部新闻 -->
					
					<!-- 财经头条 -->
					<!-- <div class="block hide" data-aim="js-type-2" data-type="type2">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div> -->
					</div><!-- end 财经头条 -->
					
					<!-- 财经要闻 type3 -->
					<!-- <div class="block hide" data-aim="js-type-3" data-type="type3">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div> -->
					</div><!-- end 财经要闻 type3 -->
					
					<!-- 投资者管理 type4 -->
					<!-- <div class="block hide" data-aim="js-type-4" data-type="type4">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src=""></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title"><a href="javascript:void(0);"></a></p>
										<p class="source"></p>
										<div class="body"></div>
									</div>
								</div>
							</div>					
						</div> -->
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
	var num_reshape = {};
	var last_page = {};
	var NumPerPage = 5;
	var newsInfo;
	var mapType={"overview":{"all":"all","financeHot":"2","financeNew":"3","devotion":"4"},"classify":{"all":"all","stock":"5","fund":"6","bond":"7","future":"8"}};
	var mapTabBar={"overview":["全部新闻","财经头条","财经新闻","投资者管理"],"classify":["全部新闻","股票市场","基金市场","债券/外汇","期货市场"]};
	var mapForMaptype={"overview":["all","financeHot","financeNew","devotion"],"classify":["all","stock","fund","bond","future"]};
	var typeSet
	var search = "";
	
	//设置tab 标签对应的新闻类别名称
	$.each(mapTabBar["<%=more%>"],function(key,val){
		$liObj=$('<li></li>').attr("data-target","js-type-"+mapType["<%=more%>"][mapForMaptype["<%=more%>"][key]]).text(val).appendTo($(".topbar ul"));
		if(key==0){
			$liObj.addClass("active");
		}
	});
	
	//设置请求主页面(由new.jsp跳转之后)时的search字符串 和 分页使用的typeSet
	if("<%=more%>".match("overview")){
		search = "type2,type3,type4";
		typeSet = ["all","type2","type3","type4"];
	}else{
		search = "type5,type6,type7,type8";
		typeSet = ["all","type5","type6","type7","type8"];
	}
	
	//ajax请求 -- 初始化页面
	$.ajax({
		url:"<%=request.getContextPath()%>/interface/acquireHomepageAction.action",
		type:"GET",
		dataType:"json",
		data:{"page":"more","search":search},
		success:function(msg){
			var obj=eval("("+msg.allInfo+")");
			newsInfo=obj.newsInfo;
			/*重塑分页组件*/
			reshapePagination(obj.pagination.all,NumPerPage);
			displayPagination(currentPage,obj.pagination.all,obj.numPerPage);
			//console.log(obj.pagination);
			//显示当前页面的新闻列表
			replace_tab(newsInfo,"js-type-all");
			//分页显示所需信息
			$.each(typeSet,function(key,val){
				num_reshape[val]=obj.pagination[val];
				last_page[val]=obj.pagination[val]%NumPerPage;
			});
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
				var tit = this;
				var cancel = true;
				if(isNaN($(this).text())){//not a number
					if($(this).attr("data-dir").match("pre")){
						if(currentPage!=1){
							currentPage=currentPage-1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+currentPage+"]").addClass("active");
						}else{
							cancel = false;
						}
					}else{
						if(currentPage!=Math.ceil(total/numPerPage)){
							currentPage=currentPage+1;
							$(this).siblings("li").removeClass("active");
							$(this).siblings("li[data-dir="+currentPage+"]").addClass("active");
						}else{
							cancel = false;
						}
					}
				}else{//is a number
					currentPage=parseInt($(this).text());
					$(this).siblings("li").removeClass("active");
					$(this).addClass("active");
				}
				if(cancel){
					$.ajax({
						url:"<%=request.getContextPath()%>/interface/acquireNewsByTypeAction.action",
						type:"GET",
						dataType:"json",
						data:{"currentPage":currentPage,"search":getCurrentPageType()},
						success:function(msg){
							//显示（下一/上一）页内容
							var obj=eval("("+msg.newsInfo+")");
							//console.log($(tit).index());
							replace_pag(obj,currentPage);
						},
						error:function(){
							console.log("get info error");
						}
					});
				}
			}
		});
	}	
	/*新闻类别切换==初始显示*/
	function switchTab_hor(){
		var target=$(this).attr("data-target");
		/* $(".tab-horizontal .block[data-aim]").removeClass("hide");
		$(".tab-horizontal .block[data-aim!='"+target+"']").addClass("hide"); */
		/*topbar li style switch*/
		$(".tab-horizontal .topbar li").removeClass("active");
		$(".tab-horizontal .topbar li[data-target='"+target+"']").addClass("active");
		/*重塑分页组件*/
		var type = target.split("-")[2];
		if(!isNaN(type)){
			type = "type"+type;
		}
		reshapePagination(num_reshape[type],NumPerPage);
		displayPagination(currentPage,num_reshape[type],NumPerPage);
		replace_tab(newsInfo);
	}
	$(".tab-horizontal .topbar li").click(switchTab_hor);
	
	//翻页显示
	function replace_pag(msg,index){
		var target=$(".tab-horizontal .topbar li.active").attr("data-target");
		var type = target.split("-")[2];
		if(!isNaN(type)){
			type = "type"+type;
		}
		$(".block > .news").each(function(key,val){
			$(this).css("visibility","visible");
		});
		if(index>=Math.ceil(num_reshape[type]/NumPerPage)&&Math.ceil(num_reshape[type]/NumPerPage)!=1){//如果是最后一页
			$(".block > .news").each(function(key,val){
				if(key>=last_page[type]){
					$(this).css("visibility","hidden");
				}else{
					$(this).find(".title a").text(msg[type][key].title);
					$(this).find(".title a").attr("data-id",msg[type][key].id);
					$(this).find(".source").text(msg[type][key].author);
					$(this).find(".body").text(msg[type][key].summary);
					$(this).find("img.imply").attr("src",msg[type][key].img);
				}
			});
		}else{
			$(".block > .news").each(function(key,val){
				$(this).find(".title a").text(msg[type][key].title);
				$(this).find(".title a").attr("data-id",msg[type][key].id);
				$(this).find(".source").text(msg[type][key].author);
				$(this).find(".body").text(msg[type][key].summary);
				$(this).find("img.imply").attr("src",msg[type][key].img);
			});
		}
	}
	//切换选项卡时的初始显示
	function replace_tab(msg){
		var target=$(".tab-horizontal .topbar li.active").attr("data-target");
		var type = target.split("-")[2];
		if(!isNaN(type)){
			type = "type"+type;
		}
		$(".block > .news").each(function(key,val){
			$(this).css("visibility","visible");
		});
		$(".block > .news").each(function(key,val){
			$(this).find(".title a").text(msg[type][key].title);
			$(this).find(".title a").attr("data-id",msg[type][key].id);
			$(this).find(".source").text(msg[type][key].author);
			$(this).find(".body").text(msg[type][key].summary);
			$(this).find("img.imply").attr("src",msg[type][key].img);
		});
	}
	
	//获得当前页面类型
	function getCurrentPageType(){
		search=$(".tab-horizontal .topbar li.active").attr("data-target");
		search = search.split("-")[2];
		if(!isNaN(search)){
			search = "type"+search;
		}else{
			if("<%=more%>".match("overview")){
				search = "type2,type3,type4";
			}else{
				search = "type5,type6,type7,type8";
			}
		}
		return search;
	}
	
});

$(".title a").click(function(){
	window.location.href="front/news_item.jsp?id="+$(this).attr("data-id");
});

</script>
</body>
</html>
