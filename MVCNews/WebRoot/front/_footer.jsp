<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<link href="front/dist/css/jquery.webui-popover.min.css" rel="stylesheet" type="text/css">
<footer>
    <div class="container pdt30 footer-panel">  
    <div class="row"> 	
		<div class="center col-xs-12 col-sm-12 col-md-12 col-lg-4 sections">
			<div class="sections">
	  			<p class="title">友情链接</p>
	   			<ul class="list-inline" >
	   				<li><a href="http://www.jrj.com.cn/" target="_blank" onFocus="this.blur()">金融界</a></li>
	   				<li><a href="http://www.fund123.cn/" target="_blank" onFocus="this.blur()">数米基金网</a></li>
	   				<li><a href="http://xueqiu.com/" target="_blank" onFocus="this.blur()">雪球网</a></li>
	   				<li><a href="http://www.yicai.com/" target="_blank" onFocus="this.blur()">一财网</a></li>
	   				<li><a href="http://www.simuwang.com/" target="_blank" onFocus="this.blur()">私募排排网</a></li>
	   				<li><a href="http://www.9666.cn/" target="_blank" onFocus="this.blur()">股票牛仔网</a></li>
	   				<li><a href="http://www.secon.cn/" target="_blank" onFocus="this.blur()">股市在线网</a></li>
	   				<li><a href="http://www.cfcyb.com/" target="_blank" onFocus="this.blur()">创业板</a></li>
	   				<li><a href="http://www.guancha.cn/" target="_blank" onFocus="this.blur()">观察者</a></li>
	   				<li><a href="http://www.ourxun.com/" target="_blank" onFocus="this.blur()">钱讯网</a></li>
	   			</ul>
   			</div>
   		</div>
		
   		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 sections">
   			<p class="title">联系我们</p>
   			<div class="row">
   				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
   					<span class="col-lg-5 icon icon-wechat mgr20" data-placement="top"></span>
   					<a href="http://weibo.com/u/5318055999" target="_blank" onFocus="this.blur()"><span class="col-lg-5 icon icon-sina"></span></a>  			
   				</div>  				
   			</div>
   			<div class="row">
   				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
   					<ul class="list-block-second col-lg-12">
		   				<li><span class="ficon icon-address"></span><span class="f16 text">北京市海淀区中关村东路8号东升大厦C座133</span></li>
		   				<li><span class="ficon icon-email"></span><span class="f16 text"><a href="#" onFocus="this.blur()">stockii@163.com</a></span></li>
		   				<li><span class="ficon icon-qq"></span><a class="ficon icon-qq-contact" href="http://wpa.qq.com/msgrd?v=3&uin=22711111&site=qq&menu=yes"></a></li>
		   			</ul>
   				</div>
   			</div>
   		</div>
   		
   		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 sections">
   			<p class="title">您的意见</p>
	   		<form class="form-horizontal" role="form" action="AdviceInfoAction" method="post">
	   			<div class="form-group">
    				<div class="col-md-12">
      					<input type="email" class="form-control input-gray" id="inputEmail" placeholder="您的邮箱" name="userEmail">
    				</div>
 		 		</div>
 		 		
				<p class="col-md-5 input-tips" id="submit-tips">
		   		</p>
 		 		
 		 		<div class="form-group">
    				<div class="col-xs-12 col-md-12">
      					<textarea placeholder="你的宝贵意见..." class="form-control input-gray" style="resize:none" name="adviceInfo"></textarea>
    				</div>
 		 		</div>
				
 		 		<div class="form-group mg0">
					<div class="col-xs-5  col-sm-5 col-md-5 col-lg-5">
		   				<input type="submit" value="提交意见" class="fbtn btn-submit bdradius6 bgc-red3" >
		   			</div>
					<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 col-md-offset-1">
		   				<input type="button" value="重写" class="fbtn btn-refresh bdradius6">
		   			</div>
	   			</div>
	   		</form>  			   			
   		</div>   		   	
    </div>
    </div>
    
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
    
<!--     These following code is just for hidding and showing -->
    <div id="qrcode" style="display:none;">
	    <div class="text-center">
	    	<h4 class="mgt10 mgb10">斯多克微信公众账号</h4>
	   	 	<img class="tdcode" alt="QRcode" src="front/dist/img/footer-tdcode.png" style="width: 100px; height: 100px;">
		</div>
	</div>
    
    <script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    	var PageVariables = {
    		settings: {
				trigger:'click',
				title:'',
				content:'<p>This is webui popover demo.</p><p>just enjoy it and have fun !</p>',
				width:180,						
				multi:true,						
				closeable:false,
				style:'',
				padding:true,
				style: "inverse"
			},
    	};
    
    	$(function() {
    		var qrcode = $('#qrcode').html(),
			qrcodeSettings = {content: qrcode,
								title: '',
								padding: false
							};
			$('.icon.icon-wechat').webuiPopover($.extend({}, PageVariables.settings, qrcodeSettings));
			
    	});
    	
    	// TODO abandoned
    	function showWechatQRCode() {
		}
    	
    	function checkBeforeSubmit() {
    		if($("#inputEmail").val() == "") {
    			$("#submit-tips").text("输入邮箱不能为空").show();
    		} else {
    			$("#submit-tips").hide();
    		}
    	}
    	
    </script>
    
</footer>
