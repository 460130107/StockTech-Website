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

<script type="text/javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="front/dist/js/jquery.infinitescroll.min.js"></script>
<script type="text/javascript" src="front/dist/js/jquery.stockii.table.js"></script>

</head>
<body>
<jsp:include page="_header.jsp?index=product" />
	<div class="container" style="height: 1000px; padding-bottom: 300px;">
		<table id="table_test" class="table">
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
// 		loadCompanyInfo();
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
	
	/* request company info */
	function loadCompanyInfo() {
		$.ajax({
			url:"http://192.168.1.220:8080/client/api",
			type:"get",
			data: "?command=liststockclassfication&response=json",
// 			data:{"page":"all","search":"type2,type3,type4"},
			success:function(msg){
// 				console.log("get info success");
// 				var obj=eval("("+msg+")");
// 				total.all=obj.type2.length+obj.type3.length+obj.type4.length;
// 				total.type2=obj.type2.length;
// 				console.log("total.type2 = "+total.type2);
// 				total.type3=obj.type3.length;
// 				total.type4=obj.type4.length;
// 				reshapePagination();
// 				displayPagination();
				alert("test");
			},
			error:function(){
				console.log("get info error");
			}
		});
	}
	
	function initTable() {
		var options = {
			theme: "success",
		};
		options.columns = [
			{ id: "code", name: "股票代码", width: 10, align: "left", },
			{ id: "name", name: "股票名称", width: 10, align: "left", },
			{ id: "cprice", name: "当前价格", width: 10, align: "left"},
			{ id: "rise", name: "涨幅", width: 10, align: "left", },
			{ id: "vol", name: "交易量", width: 10, align: "left", },
			{ id: "amo", name: "交易额", width: 10, align: "left"},
			{ id: "maxmin", name: "最值", width: 10, align: "left", },
			{ id: "yesto", name: "昨收/今开", width: 20, align: "left", },
			{ id: "pe", name: "市盈率", width: 10, align: "left", }
		];
		
		options.ajax = function() {
			var jsonObj = {
				sum: 10000,
				records: [{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
						maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						{code: 1000, name: "中信证券", cprice: "12.25", rise: "12%", vol: "120031", amo: "12.52", 
							maxmin: "12.76/12.02", yesto: "12.76/12.02", pe: "1230%"},
						],
			};
			var result = [];
			var j = 0;
			for(var i = 0; i < jsonObj.records.length * 100; i ++) {
				var each = jsonObj.records[i % jsonObj.records.length];
				var obj = {};
				obj.code = each.code + j;
				obj.name = each.name;
				obj.cprice = each.cprice;
				obj.rise = each.rise;
				obj.vol = each.vol;
				obj.amo = each.amo;
				obj.maxmin = each.maxmin;
				obj.yesto = each.yesto;
				obj.pe = each.pe;
				result[i] = obj;
				j++;
			}
			return result;
		};
		
		$("#table_test").stockiitable(options);
	}
	
</script>
</body>
</html>