<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base
	href="<%=request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort() + request.getContextPath()%>/" />
<link rel="icon" href="../../favicon.ico">
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
</head>
<body>
<jsp:include page="_header.jsp?index=project" />
<div class="project-bd">

<div>
<img alt="header" src="front/dist/img/project-test1.jpg" class="img-head">
</div>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<a href="front/projectDetail.jsp" title="click to sea more details"><img alt="140x140" src="front/dist/img/project_3board_cooperation.jpg" class="img-rounded img300" /></a>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<p><em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong> 编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。</p>
				</div>
			</div>
		</div>
		<div class="col-md-4 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<a href="front/projectDetail.jsp" title="click to sea more details"><img alt="140x140" src="front/dist/img/project_agency.jpg" class="img-rounded img300" /></a>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<p> <em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong> 编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。</p>
				</div>
			</div>
		</div>
		<div class="col-md-4 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<a href="front/projectDetail.jsp" title="click to sea more details"><img alt="140x140" src="front/dist/img/project_broker_cooperation.jpg" class="img-rounded img300" /></a>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<p><em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong> 编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。</p>
				</div>
			</div>
		</div>
	</div>
</div>

</div>

<br>
<jsp:include page="_footer.jsp" />
<script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
</body>
</html>