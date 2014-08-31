
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<!--  <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>  -->
<body>
    <footer class="footer" style="background-color: #B9B9B9;">
    <div class="container">
       <div class="col-sm-12">
           <ul class="list-inline">
               <li><a href="#" target="_blank" style="margin:0 20px 0 20px;">产品</a>|</li>
               <li><a href="#" style="margin:0 20px 0 20px;" data-toggle="modal" 
   data-target="#policy">隐私条款</a>|</li>
               <li><a href="#" target="_blank" style="margin:0 20px 0 20px;">关于斯多克</a>|</li>
               <li><a href="#" target="_blank" style="margin:0 20px 0 20px;">联系</a>|</li>
               <li><a href="#" target="_blank" style="margin:0 20px 0 20px;"data-toggle="modal" 
   data-target="#address">地址</a>|</li>         
            </ul>
        </div>
        <div style="clear:both"></div>  
        <hr style="border:#ADADAD solid 1px;">
        <div style="clear:both"></div>
        <div class="col-sm-12 text-center">
            <p>&copy; 2014 斯多克科技有限公司版权所有   All rights reserved.</p>
            <!-- <span class="icon-logo"></span> -->
            <p class="small">
              <a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a> | 京公网安备11010802014853
            </p>
        </div>
        </div><!--footer--> 
    </footer>
    <!-- 模态框（Modal）  对应  隐私条款 -->
	<div class="modal fade" id="policy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	              <!-- 模态框标题 -->
	                                   隐私条款
	            </h4>
	         </div>
	         <div class="modal-body">
	            <!-- 在这里添加一些文本 -->
	                               具体的隐私条款：<br/>
			               （1）<br/>
			               （2）<br/>
			               （3）<br/>
	         </div>
	         <!--  <div class="modal-footer">
	            <button type="button" class="btn btn-default" 
	               data-dismiss="modal">关闭
	            </button>-->
	            <!--<button type="button" class="btn btn-primary">
	               提交更改
	            </button>-->
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>
	
	<!-- 模态框（Modal）  对应  地址 -->
	<div class="modal fade" id="address" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	              <!-- 模态框标题 -->
	                                  公司地址
	            </h4>
	         </div>
	         <div class="modal-body">
	            <!-- 在这里添加一些文本 -->
	                               地址：<br/>
			        Email：<br/>
			               传真：<br/>
			               QQ：<br/>
	         </div>
	         <!--  <div class="modal-footer">
	            <button type="button" class="btn btn-default" 
	               data-dismiss="modal">关闭
	            </button>-->
	            <!--<button type="button" class="btn btn-primary">
	               提交更改
	            </button>-->
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>
	
	<script src="front/dist/js/jquery.min.js"></script>
   <script src="front/dist/js/bootstrap.min.js"></script>
</body>
</html>