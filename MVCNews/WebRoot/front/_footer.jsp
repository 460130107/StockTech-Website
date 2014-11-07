<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<link href="front/dist/css/jquery.webui-popover.min.css" rel="stylesheet" type="text/css">
<footer>
    <div class="container pdt30 footer-panel">   	
		<div class="center col-lg-4 sections pdr30">
			<div class="sections">
	  			<p class="title">友情链接</p>
	   			<ul class="list-inline" >
	   				<li><a href="http://www.jrj.com.cn/" target="_blank">金融界</a></li>
	   				<li><a href="http://www.fund123.cn/" target="_blank">数米基金网</a></li>
	   				<li><a href="http://xueqiu.com/" target="_blank">雪球网</a></li>
	   				<li><a href="http://www.yicai.com/" target="_blank">一财网</a></li>
	   				<li><a href="http://www.simuwang.com/" target="_blank">私募排排网</a></li>
	   				<li><a href="http://www.9666.cn/" target="_blank">股票牛仔网</a></li>
	   				<li><a href="http://www.secon.cn/" target="_blank">股市在线网</a></li>
	   				<li><a href="http://www.cfcyb.com/" target="_blank">创业板</a></li>
	   				<li><a href="http://www.guancha.cn/" target="_blank">观察者</a></li>
	   				<li><a href="http://www.ourxun.com/" target="_blank">钱讯网</a></li>
	   			</ul>
   			</div>
   			<div class="sections">
	   			
   			</div>
   		</div>
		
   		<div class="left col-lg-4 sections">
   			<p class="title">联系我们</p>
   			<div class="row-fluid">
   				<div class="col-lg-5 icon icon-wechat" onclick="showWechatQRCode()" data-placement="top"></div>
   				<a href="http://weibo.com/u/5318055999" target="blank" class="col-lg-5 col-lg-offset-1 icon icon-sina"></a>
   			</div>
			<div class="row-fluid">
				<ul class="list-block-second col-lg-12">
	   				<li><span class="ficon icon-address"></span><span class="f16 text">北京市海淀区中关村东路8号东升大厦C座133</span></li>
	   				<li><span class="ficon icon-email"></span><span class="f16 text"><a href="#">stockii@163.com</a></span></li>
	   				<li><span class="ficon icon-qq"></span><a class="ficon icon-qq-contact" href="http://wpa.qq.com/msgrd?v=3&uin=22711111&site=qq&menu=yes"></a></li>
	   			</ul>
			</div>
   		</div>
   		
   		<div class="right col-lg-4 sections">
   			<p class="title">您的意见</p>
	   		<form class="form-horizontal" role="form" action="interface/sendMessage.action">
	   			<div class="form-group">
    				<div class="col-md-6">
      					<input type="email" class="form-control input-gray" id="inputName" placeholder="您的名称">
    				</div>
    				<div class="col-md-6">
      					<input type="email" class="form-control input-gray" id="inputEmail" placeholder="您的邮箱">
    				</div>
 		 		</div>
 		 		
 		 		<div class="form-group">
    				<div class="col-md-12">
      					<textarea placeholder="你的宝贵意见..." class="form-control input-gray"></textarea>
    				</div>
 		 		</div>
				
 		 		<div class="form-group mg0">
					<div class="col-md-5">
		   				<input type="button" value="提交意见" class="fbtn btn-submit bdradius6 bgc-red3">
		   			</div>
					<div class="col-md-5 col-md-offset-1">
		   				<input type="button" value="重写" class="fbtn btn-refresh bdradius6">
		   			</div>
	   			</div>
	   		
	   			<!-- TODO if possible, check and review these code to make it work -->
<!-- 	   			<div class="form-group mg0"> -->
<!--     				<div class="col-md-5"> -->
<!--      					<input type="text" class="username bdradius6" placeholder="您的名字"> -->
<!--    					</div> -->
<!--    					<div class="col-md-10"> -->
<!--      					<input type="text" class="email bdradius6" placeholder="您的邮箱"> -->
<!--    					</div> -->
<!--   				</div> -->
<!-- 	   			<div class="form-group mg0"> -->
<!-- 	   				<div class="col-md-10"> -->
<!-- 	   					<textarea placeholder="你的宝贵意见..." class="option bdradius6"></textarea> -->
<!-- 	   				</div> -->
<!-- 	   			</div> -->
<!-- 				<div class="form-group mg0"> -->
<!-- 					<div class="col-md-5"> -->
<!-- 		   				<input type="button" value="提交意见" class="fbtn btn-submit bdradius6 bgc-red3"> -->
<!-- 		   			</div> -->
<!-- 					<div class="col-md-5 col-md-offset-1"> -->
<!-- 		   				<input type="button" value="重写" class="fbtn btn-refresh bdradius6"> -->
<!-- 		   			</div> -->
<!-- 	   			</div> -->
	   		</form>  			   			
   		</div>   		   	
    </div>
    
    <div id="qrcode" style="display:none;">
	    <div class="text-center">
	    	<h4>斯多克微信公众账号</h4>
	   	 	<img class="tdcode" alt="QRcode" src="front/dist/img/footer-tdcode.png" style="width: 100px; height: 100px;">
		</div>
	</div>
    
<!--    <div class="triangle" style="background: #fff;"><span class="footer-triangle"></span></div> -->
<!--     <div class="triangle" style="background: green;"><span style="color: red;position: relative;top: -5px;">&#9660</span></div>  -->
    <div class="bottom">
	    <div class="container">
	    	<div class="left f16 spac1">
	    		Copyright&nbsp;2013-2014 @andreyen, All right reserved.<span class="small">京网ICP 100000</span>
	    	</div>
	    	<div class="right f16">
	    		<ul class="list-block3">
	    			<li><a href="front/about.jsp" target="_self">关于我们</a></li>
	    			<li><a href="front/help/secondary.jsp?id=js-service&sid=js-privacy" target="_self">隐私条款</a></li>
	    			<li><a href="front/help/secondary.jsp?id=js-service&sid=js-service" target="_self">协议声明</a></li>
	    			<li><a href="front/" target="_self">更多信息</a></li>
	    		</ul>
	    	</div>
	    </div>    	
    </div>
    <script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    	$(function() {
	    	var settings = {
				trigger:'click',
				title:'Pop Title',
				content:'<p>This is webui popover demo.</p><p>just enjoy it and have fun !</p>',
				width:180,						
				multi:true,						
				closeable:false,
				style:'',
				padding:true,
				style: "inverse"
			};
			var qrcode = $('#qrcode').html(),
			qrcodeSettings = {content: qrcode,
								title: '',
								padding: false
							};
			$('.icon.icon-wechat').webuiPopover($.extend({},settings,qrcodeSettings));
    	});
    	
    </script>
    
</footer>
