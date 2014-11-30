<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="<%=basePath%>" />
<link rel="stylesheet" href="front/dist/css/bootstrap.css">
<link rel="stylesheet" href="front/dist/css/base.css">
<link rel="stylesheet" href="front/dist/css/common.css">
<link rel="stylesheet" href="front/dist/css/tablesorter.theme.default.css">

<script type="text/javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="front/dist/js/jquery.infinitescroll.min.js"></script>
<script type="text/javascript" src="front/dist/js/jquery.stockii.table.js"></script>
<script type="text/javascript" src="front/dist/js/jquery.tablesorter.js"></script>

</head>
<body>
<jsp:include page="_header.jsp?index=product" />
	<div class="container" style="height: 1000px; padding-bottom: 300px;">
		<h1 style="font-size: 30px; padding: 20px;">A股所有公司</h1>
		
		<table id="table_test" class="tablesorter">
		</table>
		
<!-- 		<div class="row"> -->
<!-- 			<div class="loading col-lg-2 col-lg-offset-5"> -->
<!-- 				<img src="front/dist/img/loading.gif"><span>正在加载...</span> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<div id="navigation" align="center">
			<!-- 页面导航-->
			<a href="front/pages/2.htm?page=1"></a>
			<!-- 此处可以是url，可以是action，要注意不是每种html都可以加，是跟当前网页有相同布局的才可以。另外一个重要的地方是page参数，这个一定要加在这里，它的作用是指出当前页面页码，没加载一次数据，page自动+1,我们可以从服务器用request拿到他然后进行后面的分页处理。-->
		</div>
	</div>
<%-- <jsp:include page="_footer.jsp" /> --%>

<script type="text/javascript">
	$(function() {
		initTable();
// 		loadMore();
	});

	$(window).scroll(function(){  
	    // 当滚动到最底部以上300像素时， 加载新内容  
	    if ($(document).height() - $(this).scrollTop() - $(this).height() < 800) {
	    	loadMore();  
	    }
	});
// 	$(function() { //别忘了加这句，除非你没学Jquery  
// 		$("#data_table").infinitescroll({
// 			navSelector : "#navigation", //导航的选择器，会被隐藏
// 			nextSelector : "#navigation a", //包含下一页链接的选择器
// 			itemSelector : ".scroll", //你将要取回的选项(内容块)
// 			debug : true, //启用调试信息
// 			animate : false, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
// 			extraScrollPx : 150, //滚动条距离底部多少像素的时候开始加载，默认150
// 			bufferPx : 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
// 			errorCallback : function() {
// 				alert('error');
// 			}, //当出错的时候，比如404页面的时候执行的函数
// 			localMode : true, //是否允许载入具有相同函数的页面，默认为false
// 			dataType : 'html',//可以是json
// 		    template: function(data) {
// 				data表示服务端返回的json格式数据，这里需要把data转换成瀑布流块的html格式，然后返回给回到函数
// 				return 'alert';
// 		    },
// 			loading : {
// 				msgText : "加载中...",
// 				finishedMsg : 'No more pages to load.',//结束显示信息
// 				selector : '.loading' // 显示loading信息的div
// 			}
// 		}, function(newElems) {
// 			程序执行完的回调函数
// 							var $newElems = $(newElems);
// 							$('.wrapper:eq(1)').masonry('appended', $newElems);
// 		});
// 	});

	function loadMore() {
		for(var i = 0; i < 30; i++) {
			$("#data_table").append("<tr><td>3</td><td>Mark</td><td>Mark</td><td>Mark</td></tr>");
		}
	}
	
	/* request company info and init the table */
	function initTable() {
		var options = {
			customClass: "success",
		};
		options.columns = [
// 			{ id: "stockid", name: "股票代码", width: 10, align: "left"},
// 			{ id: "growth", name: "涨幅", width: 10, align: "left", },
// 			{ id: "cprice", name: "当前价格", width: 10, align: "left"},
// 			{ id: "bought_price", name: "买价", width: 10, align: "left"},
// 			{ id: "sold_price", name: "售价", width: 10, align: "left"},
// 			{ id: "last_deal_amount", name: "上次交易量", width: 10, align: "left"},
// 			{ id: "total_deal_amount", name: "总交流量", width: 10, align: "left"},
// 			{ id: "max", name: "最高", width: 10, align: "left"},
// 			{ id: "min", name: "最低", width: 10, align: "left"},
// 			{ id: "total_stock", name: "总股数", width: 10, align: "left"},

			{ id: "number", name: "序号", width: 10, align: "left"},
			{ id: "stockid", name: "#股票代码", width: 20, align: "left"},
			{ id: "stockname", name: "股票名称", width: 20, align: "left", },
			{ id: "areaname", name: "所在地区", width: 10, align: "left", },
			{ id: "industryname", name: "所在行业", width: 30, align: "left", },
			
// 			{ id: "code", name: "股票代码", width: 10, align: "left", },
// 			{ id: "name", name: "股票名称", width: 10, align: "left", },
// 			{ id: "cprice", name: "当前价格", width: 10, align: "left"},
// 			{ id: "rise", name: "涨幅", width: 10, align: "left", },
// 			{ id: "vol", name: "交易量", width: 10, align: "left", },
// 			{ id: "amo", name: "交易额", width: 10, align: "left"},
// 			{ id: "maxmin", name: "最值", width: 10, align: "left", },
// 			{ id: "yesto", name: "昨收/今开", width: 20, align: "left", },
// 			{ id: "pe", name: "市盈率", width: 10, align: "left", }
		];
		
		$.ajax({
			url:"<%=request.getContextPath()%>/interface/Test2Action.action",
			type:"get",
			data: "",
			dataType: "json",
			success:function(data){
				var jsonObj = eval("(" + data.getResponse + ")");
				var array = jsonObj.liststockclassficationresponse.stockclassification;
				var contentData = [];
				for(var i = 0; i < array.length; i++) {
					var dataItem = {};
					dataItem.number = i + 1;
					dataItem.stockid = array[i].stockid;
					dataItem.stockname = array[i].stockname;
					dataItem.areaname = array[i].areaname;
					dataItem.industryname = array[i].industryname;
					
// 					dataItem.stockid = array[i].stockid;
// 					dataItem.growth = array[i].growth_ratio;
// 					dataItem.cprice = array[i].current_price;
// 					dataItem.bought_price = array[i].bought_price;
// 					dataItem.sold_price = array[i].sold_price;
// 					dataItem.last_deal_amount = array[i].last_deal_amount;
// 					dataItem.total_deal_amount = array[i].total_deal_amount;
// 					dataItem.max = array[i].max;
// 					dataItem.min = array[i].min;
// 					dataItem.total_stock = array[i].total_stock;
					contentData[i] = dataItem;
				}
				options.contentData = contentData;
				$("#table_test").stockiitable(options);
				$("#table_test").tablesorter({theme: 'default'});
			},
			error:function(){
				console.log("get info error");
			}
		
		});
		
		
	}
	
</script>
</body>
</html>