<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的文章</title>
<link href="front/css/bootstrap.css" rel="stylesheet">
<link href="front/css/jquery-ui.min.css" rel="stylesheet">
<link href="front/css/global-style.css" rel="stylesheet">
<link href="front/css/myarticle.css" rel="stylesheet">
</head>
<body onload="FF0010();">
<s:include value="header.jsp">  
	<s:param name="index">myarticles</s:param>  
	</s:include>
<div class="container container-content">
		<div id="waterfall" class="row article-list">
			<div class="col-lg-4 cell">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/1.jpg" />
					<div class="caption">
						<h3>
							<a href="#">冯诺尔曼结构</a>
						</h3>
						<p>
							也称普林斯顿结构，是一种将程序指令存储器和数据存储器合并在一起的存储器结构。程序指令存储地址和数据存储地址指向同一个存储器的不同物理位置。
						</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 cell">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/1024.jpg" />
					<div class="caption">
						<h3>
							<a href="#">哈佛结构</a>
						</h3>
						<p>
							哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 cell">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/2950.jpg" />
					<div class="caption">
						<h3>
							<a href="#">改进型哈佛结构</a>
						</h3>
						<p>改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。
						</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 cell">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/1024.jpg" />
					<div class="caption">
						<h3>
							<a href="#">哈佛结构</a>
						</h3>
						<p>
							哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 cell">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/2950.jpg" />
					<div class="caption">
						<h3>
							<a href="#">改进型哈佛结构</a>
						</h3>
						<p>改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。
						</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/1024.jpg" />
					<div class="caption">
						<h3>
							<a href="#">哈佛结构</a>
						</h3>
						<p>
							哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="thumbnail">
					<img alt="300x200" src="front/img/2950.jpg" />
					<div class="caption">
						<h3>
							<a href="#">改进型哈佛结构</a>
						</h3>
						<p>改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。
						</p>
						<hr/>
						<p class="text-right">
							<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a>
							<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>



		<div id="article_bd">
	<div class="list">
		<div class="list_blog">
			<h4><span class="list_blog_title">文摘列表</span><span class="list_blog_fun"><a href="article_add.action">[发布文章]</a></span></h4>
			
			<ul id="article_list">
			<!-- 
				<li class="lsit_item"><a href="javascript:void(0)" onclick="readArticle(0)">测试测试测试</a></li>				
				<li class="lsit_item"><a href="javascript:void(0)" onclick="readArticle(0)">诗水蛇山神庙</a></li>
				<li class="lsit_item"><a href="javascript:void(0)" onclick="readArticle(0)">诗水蛇山神庙</a></li>
			 -->			 	
			</ul>
		</div>
		<div class="list_search"></div>
	</div>
	<div class="con">
		<article>
			<h2 class="con_title" id="article_title">测试测试测试</h2>
			<hr/>
			<p class="con_bd" id="article_content">答案是Profile。Maven的Profile用于在不同的环境下应用不同的配置。一套配置即称为一个Profile。这里的“环境”可以是操作系统版本，JDK版本或某些文件是否存在这样的物理环境，也可以是你自己定义的一套逻辑环境。比如上面的A中所说的Linux和Mac OS X便是一种物理环境，而B中讲的开发环境和部署环境则为逻辑环境。Maven提供了Activation机制来激活某个Profile，它既允许自动激活（即在某些条件满足时自动使某个Profile生效），也可以手动激活。答案是Profile。Maven的Profile用于在不同的环境下应用不同的配置。一套配置即称为一个Profile。这里的“环境”可以是操作系统版本，JDK版本或某些文件是否存在这样的物理环境，也可以是你自己定义的一套逻辑环境。比如上面的A中所说的Linux和Mac OS X便是一种物理环境，而B中讲的开发环境和部署环境则为逻辑环境。Maven提供了Activation机制来激活某个Profile，它既允许自动激活（即在某些条件满足时自动使某个Profile生效），也可以手动激活。答案是Profile。Maven的Profile用于在不同的环境下应用不同的配置。一套配置即称为一个Profile。这里的“环境”可以是操作系统版本，JDK版本或某些文件是否存在这样的物理环境，也可以是你自己定义的一套逻辑环境。比如上面的A中所说的Linux和Mac OS X便是一种物理环境，而B中讲的开发环境和部署环境则为逻辑环境。Maven提供了Activation机制来激活某个Profile，它既允许自动激活（即在某些条件满足时自动使某个Profile生效），也可以手动激活。</p>
		</article>
	</div>  
</div>
</div>
<s:include value="footer.jsp"></s:include>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="front/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="front/js/bootstrap.js"></script>
<!-- station function -->
<script type="text/javascript" src="front/js/article.js"></script>
<!-- ajax -->
<script type="text/javascript" src="front/js/ajax.get.js"></script>
<!-- waterfall flow -->
<script type="text/javascript" src="front/js/jquery.waterfall.js"></script>

<script>
$(document).ready(function(){
	$.ajax({
		type: "post",//使用get方法访问后台
	        dataType: "json",//返回json格式的数据
	        url: "interface/acquireMenu.action",//要访问的后台地址
	        data: "type=1",//要发送的数据
	        success: function(msg){//msg为返回的数据，在这里做数据绑定
	            var data = msg.index;
	            var html='';
	            $.each(data, function(i, n){
	                html+='<li class="lsit_item"><a href="javascript:void(0)" onclick="readArticle('+n.newsInfoId+')">'+n.newsInfoTitle+'</a></li>';
	                
	            });
	            $('#article_list').html(html);
		}
	});
		
	loadArticleWaterFall();
});

function loadArticleWaterFall() {
	//无限加载演示，可删除
	var opt = {
		getResource : function(index, render) {//index为已加载次数,render为渲染接口函数,接受一个dom集合或jquery对象作为参数。通过ajax等异步方法得到的数据可以传入该接口进行渲染，如 render(elem)
			/*if(index>=7) index=index%7+1;
			var html='';
			for(var i=20*(index-1);i<20*(index-1)+20;i++){
			 var k='';
			 for(var ii=0;ii<3-i.toString().length;ii++){
			      k+='0';
			 }
			 k+=i;
			   var src="./images/"+k+".jpg";
			 html+='<div class="cell"><a href="#"><img src="'+src+'" /></a><p>'+'duoruiao'+k+'</p></div>';
			}*/
			
			var html = '';
			var limit = 20;
			for ( var i = 0; i < limit; i++) {
				html += '<div class="col-lg-4 cell"><div class="thumbnail"><a href="#"><img alt="300x200" src="front/img/1024.jpg" />' 
					+ '<div class="caption"><h3><a href="#">哈佛结构</a></h3><p>哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>'
					+ '<hr/><p class="text-right"><a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a>'
					+ '<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a><a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a>'
					+ '</p></div></div></div>'
			}
			return $(html);
		},
		auto_imgHeight : true,
		insert_type : 1
	};
	//不可删除，里面的‘opt’参数可删除

	$('#waterfall').waterfall(opt);
}
	
function readArticle(value){
		$.ajax({
 			type: "post",//使用get方法访问后台
           dataType: "json",//返回json格式的数据
           url: "interface/acquireNewsInfo.action",//要访问的后台地址
           data: "pid="+value,//要发送的数据
           success: function(msg){//msg为返回的数据，在这里做数据绑定
               var data = msg.articleInfo;
               $('#article_title').html(data.newsInfoTitle);
               $('#article_content').html(data.newsInfoContent);
		}
	});
}
</script>
</body>
</html>