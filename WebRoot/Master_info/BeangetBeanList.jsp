<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的波奇豆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Order.css'>
<style type="text/css">
.myBeans .myBeans-span {
	display: inline-block;
	*display: inline;
	*zoom: 1
}

.myBeans .myBeans-amount {
	color: #F05030
}

.myBeans {
	color: #6A6666
}

.myBeans {
	font-family: Arial, Simsun
}

.myBeans .myBeans-amount {
	font-family: Verdana, Arial
}

.myBeans {
	padding-bottom: 20px
}

.myBeans .myBeans-span {
	margin-right: 20px;
	min-width: 160px;
	_width: 160px;
	_white-space: nowrap
}

.myBeans .myBeans-amount {
	padding-right: 10px;
	font-size: 18px;
	font-weight: 500
}

.beansHistory .cg-col-1 {
	width: 245px
}

.beansHistory .cg-col-2 {
	width: 170px
}
</style>
</head>

<body>
	<jsp:include page="Header_Master.jsp"></jsp:include>
	<div class="content">
		<div class="ct-body clearfix">
			<!-- 左边导航 Start -->
			<div class="personal-side fl">
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">交易管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="IndentAction!queryIndentView"
							class="ps-sd-md-menuName">商城订单</a><a
							href="/pet3/Master_info/Orderservice.jsp" class="ps-sd-md-menuName ">服务订单</a><a
							href="/pet3/Master_info/Returnsreturns.jsp" class="ps-sd-md-menuName ">退货记录</a><a
							href="/pet3/Master_info/Productnotify.jsp" class="ps-sd-md-menuName ">到货通知</a><a
							href="CollectAction!queryCollectByMobile_phone" class="ps-sd-md-menuName ">我的收藏</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">资金管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="FinanceAction!queryAccount" class="ps-sd-md-menuName ">余额</a><a
							href="FinanceAction!queryBeangetBeanList " class="ps-sd-md-menuName ps-sd-md-current">波奇豆</a><a
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName ">优惠券</a><a
							href="/pet3/Master_info/Couponprize.jsp" class="ps-sd-md-menuName ">奖品兑换</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">消息管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="/pet3/Master_info/Productconsult.jsp" class="ps-sd-md-menuName ">咨询回复</a><a
							href="/pet3/Master_info/Messagenotice.jsp" class="ps-sd-md-menuName ">系统通知</a><a
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
			<!-- 左边导航 End -->
			<div class="personal-main fr">
				<!-- 我的波奇豆 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">我的积分</h6>
					</div>
					<div class="ps-md-bd myBeans">
						<span class="myBeans-span">可用积分：<strong
							class="myBeans-amount">
							<s:if test="finance.Integral>0">
							有有效积分
							</s:if>
							<s:else>无有效积分</s:else>
							</strong></span><span class="myBeans-span">可用积分：<strong
							class="myBeans-amount"><s:property value="finance.Integral"/></strong>（100积分=1元）
						</span>
					</div>
				</div>
				<!-- 我的波奇豆 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>