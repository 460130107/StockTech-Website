<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'question.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="front/dist/css/common.css" rel="stylesheet">
	<link href="front/dist/css/question.css" rel="stylesheet">

  </head>
  
  <body>  
  <jsp:include page="_header.jsp?index=corpration" />
  <div id="question_bd">
	<!-- 产品介绍 -->
  	<div class="container_12 mt10">
      <div class="pg-uplan-product">
        <div class="ui-box-title fn-clear">
          <h3 class="fn-left fn-text-overflow">产品介绍</h3>
          <!-- <div class="fn-right text ui-box-text">
            <a target="_blank" href="/financeplan/listPlan!listPlan.action">查看U计划列表</a>
          </div> -->
        </div>
        <div class="fn-clear pg-uplan-product-list text-l mt15">
          <div class="fn-left pg-uplan-product-item mr10">
            <dl class="bg-color-green">
              <dt><span>U</span>计划A</dt>
              <dd>
                <span class="mr20">预期收益</span>
                <span><em>7</em>％/年</span>
              </dd>
              <dd>
                <span class="mr20">锁定期限</span>
                <span><em>3</em>个月</span>
              </dd>
              <dd>
                <span class="mr20">起投金额</span>
                <span><em>1,000</em>元</span>
              </dd>
            </dl>
            <p class="J_click_p text-color-green" data="103">           	            	
            	<span id="J_count_time_a" data1="222608" data2="0">等待预定</span><a class="text" href="#">（查看详情）</a>				            	
            </p>
          </div>
          <div class="fn-left pg-uplan-product-item mr10">
            <dl class="bg-color-orange">
              <dt class="ub"><span>U</span>计划B</dt>
              <dd>
                <span class="mr20">预期收益</span>
                <span><em>9</em>％/年</span>
              </dd>
              <dd>
                <span class="mr20">锁定期限</span>
                <span><em>6</em>个月</span>
              </dd>
              <dd>
                <span class="mr20">起投金额</span>
                <span><em>10,000</em>元</span>
              </dd>
            </dl>
            <p class="J_click_p text-color-orange" data="104">          	            	
                <span  id="J_count_time_b" data1="222608" data2="0">等待预定</span><a class="text" href="#">（查看详情）</a>				          	
            </p>
          </div>
          <div class="fn-left pg-uplan-product-item">
          	
          	
            <dl class="bg-color-yellow">
              <dt><span>U</span>计划C</dt>
              <dd>
                <span class="mr20">预期收益</span>
                <span><em>11</em>%/年</span>
              </dd>
              <dd>
                <span class="mr20">锁定期限</span>
                <span><em>12</em>个月</span>
              </dd>
              <dd>
                <span class="mr20">起投金额</span>
                <span><em>10,000</em>元</span>
              </dd>
            </dl>
             <p class="J_click_p text-color-yellow" data="105">           	
            	<span  id="J_count_time_c" data1="222608" data2="0">等待预定</span><a class="text" href="#">（查看详情）</a>				          	
            </p>
            
          </div>
        </div>
      </div>
    </div><!--./end  产品介绍 -->
  	
  	<!-- 投资效果 -->
  	 <div class="bg-color-steal mt30">
      <div class="container_12 pt30 pg-uplan-performace">
        <div class="ui-box-title fn-clear">
          <h3 class="fn-text-overflow">投资效果</h3>
        </div>

        <div class="fn-clear pg-uplan-performace-list mt40">
          <dl class="fn-left">
            <dd><i class="icon-uplan icon-uplan-money" style="border: 1px solid black;"></i></dd>
            <dt>累计总金额</dt>
            <dd><em>￥201,692</em>万元</dd>
          </dl>
          <dl class="fn-left">
            <dd><i class="icon-uplan icon-uplan-user" style="border: 1px solid black;"></i></dd>
            <dt>加入总人次</dt>
            <dd><em>51,929</em>次</dd>
          </dl>
          <dl class="fn-left">
            <dd><i class="icon-uplan icon-uplan-invest" style="border: 1px solid black;"></i></dd>
            <dt>为用户自动投标</dt>
            <dd><em>2,543,858</em>次</dd>
          </dl>
          <dl class="fn-left">
            <dd><i class="icon-uplan icon-uplan-earn" style="border: 1px solid black;"></i></dd>
            <dt>为用户累计赚取</dt>
            <dd><em>￥180,623,816</em>元</dd>
          </dl>
        </div>

      </div>
    </div><!--./end 投资效果 -->
  	
  	<!-- 常见问题 -->
  	<div class="bg-color-blue">
      <div class="container_12 pt30 pg-uplan-qa">
        <div class="ui-box-title fn-clear">
          <h3 class="fn-text-overflow">常见问题<i class="icon icon-qa ml10"></i></h3>
        </div>
        <div class="pg-uplan-qa-content mt20 pl40">
          <ul>
            <li class="mb30">
              <h5 class="color-dark-text mb5">什么是U计划</h5>
              <p>U计划是人人贷推出的便捷高效的自动投标工具。U计划在用户认可的标的范围内，对符合要求的标的进行自动投标，且回款本金在相应期限内自动复投，期限结束后U计划会通过人人贷债权转让平台进行转让退出。该计划所对应的标的均100%适用于人人贷本金保障计划并由系统实现标的分散投资。出借所获利息收益可选择每月复投或提取，更好的满足用户多样化的理财需求。</p>
            </li>
            <li class="mb30">
              <h5 class="color-dark-text mb5">U计划与原优选理财计划的区别 </h5>
              <p> 1.U计划支持提前退出，提前退出费用为加入计划金额的2%。<br>
							2.U计划到期后自动退出，无需另行操作。<br>
							3.U计划支持的收益处理方式：<br>
							收益再投资<br>
							提取至主账户<br>
							注：收益处理方式选择后不再支持中途修改。
							</p>

            </li>
             <li class="mb30">
              <h5 class="color-dark-text mb5">原优选理财计划的相关说明 </h5>
              <p>U计划上线后，不再新发优选理财计划。<br>
							    历史上已发布的优选理财计划照常运行，原有规则保持不变。每期收益均会根据您所选择的收益处理方式照常处置，直到优选理财计划期满您主动选择退出为止。<br>
							    原优选理财计划仍保留三种收益处理方式：收益再投资、当日提取至人人贷账户或每月定时提取至用户指定的银行卡，用户可以根据需求修改收益处理方式。<br>
							原优选理财计划仍不支持提前退出。
                        </p>
            </li>
          </ul>
        </div>
      </div>
    </div><!--./end 投资效果 -->
   
  </div>
  <jsp:include page="_footer.jsp" />
  </body>
</html>
