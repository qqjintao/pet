<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>系统通知</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Message.css'>
<script type="text/javascript">
	function a(i) {
		if (i == 1) {
			document.getElementById('sctz').setAttribute('class', 'ui-tab-btn ui-tab-cur');
			document.getElementById('sqtz').setAttribute('class', 'ui-tab-btn');
			document.getElementById('shangcheng').style.display = "block";
			document.getElementById('shequ').style.display = "none";
		} else {
			document.getElementById('sqtz').setAttribute('class', 'ui-tab-btn ui-tab-cur');
			document.getElementById('sctz').setAttribute('class', 'ui-tab-btn');
			document.getElementById('shequ').style.display = "block";
			document.getElementById('shangcheng').style.display = "none";
		}
	}
</script>
</head>
<body>
	<jsp:include page="Header_Master.jsp"></jsp:include>
	<!-- content start -->
	<div class="content">
		<div class="ct-body clearfix">
			<!-- left start -->
			<div class="personal-side fl">
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">交易管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="IndentAction!queryIndentView"
							class="ps-sd-md-menuName">商城订单</a><a
							href="CollectAction!queryCollectByMobile_phone"
							class="ps-sd-md-menuName ">服务订单</a><a
							href="/pet3/Master_info/Returnsreturns.jsp"
							class="ps-sd-md-menuName ">退货记录</a><a
							href="/pet3/Master_info/Productnotify.jsp"
							class="ps-sd-md-menuName ">到货通知</a><a
							href="CollectAction!queryCollectByMobile_phone"
							class="ps-sd-md-menuName ">我的收藏</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">资金管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="FinanceAction!queryAccount" class="ps-sd-md-menuName ">余额</a><a
							href="FinanceAction!queryBeangetBeanList "
							class="ps-sd-md-menuName ">波奇豆</a><a
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName">优惠券</a><a
							href="/pet3/Master_info/Couponprize.jsp"
							class="ps-sd-md-menuName ">奖品兑换</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">消息管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="/pet3/Master_info/Productconsult.jsp"
							class="ps-sd-md-menuName ">咨询回复</a><a
							href="/pet3/Master_info/Messagenotice.jsp"
							class="ps-sd-md-menuName ps-sd-md-current">系统通知</a><a
							href="/pet3/Master_info/Message.jsp" class="ps-sd-md-menuName ">私信</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">个人设置</dt>
					<dd class="ps-sd-md-menu">
						<a href="/pet3/Master_tableAction" class="ps-sd-md-menuName ">个人资料</a><a
							href="/pet3/SafeAction" class="ps-sd-md-menuName">安全设置</a><a
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 系统通知 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">系统通知</h6>
					</div>
					<div class="ps-md-bd sysMsg">
						<!-- 商城通知 start -->
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a onclick="a(1)" id="sctz" class="ui-tab-btn ui-tab-cur">商城通知</a><a
										id="sqtz" onclick="a(0)" class="ui-tab-btn">社区通知</a>
								</div>
							</div>
							<div class="ui-tab-body" id="shangcheng">
								<div class="ui-tab-section clearfix">
									<ul class="sysMsgList shopMsgList J-msgList">
										<li class="sysMsgItem noData clearfix"><p>暂无商城通知</p></li>
									</ul>
								</div>
							</div>
							<div class="ui-tab-body" id="shequ" style="display: none;">
								<div class="ui-tab-section clearfix">
									<ul class="sysMsgList shopMsgList J-msgList">
										<li class="sysMsgItem noData clearfix"><p>暂无社区通知</p></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 商城通知 end -->
					</div>
				</div>
				<!-- 系统通知 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>