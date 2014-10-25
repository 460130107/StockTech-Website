<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>斯多克为您带来更多惊喜</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="证券,股指,投资,交易">
	<meta http-equiv="description" content="斯多克为您带来更多惊喜">
	
	<link href="front/dist/css/bootstrap.css" rel="stylesheet">
	<link href="front/dist/css/common.css" rel="stylesheet">
	<link href="front/dist/css/index.css" rel="stylesheet">

  </head>
  
  <body>
  <jsp:include page="_header.jsp?index=index" />

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="header-14">
					<a href="index.jsp"><span class="fui-home"></span></a>
					<div>紧张研发中...</div>
				</div>
				<div class="hero-unit">
					<h1>Stockii</h1>
					<img src="static/img/zarpe_logo.png" width="800" />
				</div>
				<h3></h3>
				<p>
					新产品正在路上，输入您的邮件地址并点击“提醒我产品更新”，我们将向您发送最新的产品信息以便于您了解。如果你希望直接和我们进行深度合作，请点击<a
						href="corpration.html">合作伙伴</a>并与我们取得联系。
				</p>
				<div class="row">
					<div class="subscribe-form col-sm-8 col-sm-offset-2">
						<form>
							<div class="input-group">
								<input type="text" class="form-control"> <span
									class="input-group-btn">
									<button class="btn btn-primary" type="button">提醒我产品更新</button>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="_footer.jsp" />
    
    <script type="text/javascript" src="front/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="front/dist/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="front/dist/js/site.effect.js"></script>
  </body>
</html>
