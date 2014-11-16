<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>斯多克--咨询中心</title>
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
<jsp:include page="_header.jsp?index=news"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-lg-12 news-general">
			<p class="title">新闻1+1 bl1-1</p>
			<p class="source">新华社</p>
			<div class="share bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
			<p class="body">
			过去一年间，亚马逊与出版商之间的敌对情绪日渐升级，后者的怨气在积累多年后终于爆发。不仅各大论坛上充斥着不满的情绪，就连《纽约时报》和《华尔街日报》这样的一线大报也时常发表火药味十足的专栏文章。这场斗争的焦点源自亚马逊与Hachette之间的艰难谈判，双方的高管为此爆发了几番口角。

需要强调的是，Hachette绝非泛泛之辈：它的母公司是法国媒体巨头拉加代尔(Lagardère)，其他大型出版公司也有着类似的坚实后台。HaperCollins的母公司是鲁珀特·默多克(Rupert Murdoch)的新闻集团，Simon & Schuster隶属于CBS，麦克米兰和企鹅兰登书屋都归于德国巨头旗下。然而，所有的出版商都感觉自己受到了亚马逊的欺凌，而亚马逊则感觉自己被深深的误解。

双方的关系并非历来都这么紧张。1990年代初期，当亚马逊刚刚崭露头角，通过其创始人杰夫·贝索斯(Jeff Bezos)家的车库向外邮寄图书时，它曾经是出版商的宠儿。彼时的图书零售市场已经被大型书店主导，而亚马逊似乎可以对其形成有力的制衡。

1990年代末，以Borders和巴诺书店(Barnes & Noble)为首的大型连锁书店，控制了美国成人图书市场约四分之一的份额。这些书店经营得都很不错，或许缺乏一些个性，但却品种齐全——一家典型的巴诺超级店大约有15万本图书，从而形成了巨大的吸引力。从这方面来看，它甚至堪比美国最大、最负盛名的独立书店，例如丹佛的Tattered Cover和旧金山的City Lights。但现在，即使身居荒凉之地，也可以轻而易举地接触到所有的图书。

由于可以贡献庞大的销量，这些大型连锁书店的出现对出版商本应是好事，但随着权力的逐渐膨胀，他们却渐渐开始伤害出版商的利益：不仅制定了苛刻的条款，有时甚至会退回大量库存。人们还担心，连锁书店这种强势地位可以轻易左右图书销量的走向。巴诺书店的文学采购主管赛萨利·亨思利(Sessalee Hensley)在业内可谓一言九鼎，她的采购决策可以决定一本书的畅销与否。如果你在2000年代初与出版商沟通，他们多半会向你抱怨赛萨利的专横。在称呼她时，没有人会用她的姓氏——身为图书交易领域最有影响力的女性，她不需要姓氏来突出自己的身份。

亚马逊的成功改变了这一切。有一种说法是，亚马逊进入图书市场完全是一场意外——贝索斯原本是想在网上卖点小工具。但事实并非如此：对于早期的电子商务行业来说，图书是一种理想的产品，因为当人们想要购买某本书时，他们已经知道到手的产品是什么样子。除此之外，绝大多数图书都适合在网上销售，这也帮助亚马逊充分利用了不受到地域和库存限制的特点。如果说巴诺超级店的存书量是15万本，亚马逊就是100万本!如果说巴诺能把图书卖到原本没有书店的荒野公路旁，亚马逊甚至能把书送到没有高速公路的地方。只要你有信用卡，而且可以收取邮件，便可在一夜之间接触到全世界最大的书店。

亚马逊获得了迅猛的增长。不到10年，它就对连锁书店构成了严峻的挑战。随着该公司出售的图书越来越多，它给出版商创造的收益也与日俱增。他们还有什么不满的呢?
			</p>
		</div>
	</div>
</div>

<jsp:include page="_footer.jsp"></jsp:include>  
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
</body>
</html>
