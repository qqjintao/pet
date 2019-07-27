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
<title>个人中心首页</title>
<!-- include css start --> 
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
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
							href="/pet3/Master_info/Orderservice.jsp"
							class="ps-sd-md-menuName ">服务订单</a><a
							href="/pet3/Master_info/Returnsreturns.jsp"
							class="ps-sd-md-menuName ">退货记录</a><a
							href="/pet3/Master_info/Productnotify.jsp"
							class="ps-sd-md-menuName ">到货通知</a><a
							href="CollectAction!queryCollectByMobile_phone" class="ps-sd-md-menuName ">我的收藏</a>
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
							class="ps-sd-md-menuName ">系统通知</a><a
							href="/pet3/Master_info/Message.jsp" class="ps-sd-md-menuName ">私信</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">个人设置</dt>
					<dd class="ps-sd-md-menu">
						<a href="/pet3/Master_tableAction" class="ps-sd-md-menuName">个人资料</a><a
							href="/pet3/SafeAction" class="ps-sd-md-menuName">安全设置</a><a
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 个人信息 start -->
				<div class="personal-module personal-info clearfix">
					<div class="ps-md-avator fl">
						<img
								src="Master_info/<s:property value="master_table.Head_portrait"/>"
								width="100px" height="100px" alt="">
					</div>
					<div class="personal-md-userInfo fl">
						<p class="ps-md-ui-hd">
							<span class="ps-md-ui-name"><s:property value="registry.Nickname" /></span><span
								class="ps-md-ui-welcome">欢迎回来！</span><a
								href="/pet3/Master_tableAction" class="color-blue">编辑个人资料</a>
						</p>
						<p class="ps-md-ui-safe">
							 <strong class="ps-md-ui-level">&nbsp;</strong><span
								class="color-black">&nbsp; <strong
								class="ps-md-ui-maxLevel">&nbsp;</strong></span><a					 
								class="color-blue">&nbsp;</a>
						</p>
						<p class="ps-md-ui-account">
							账户安全：<a href="/pet3/SafeAction" class="color-blue">安全设置</a>
						</p>
						<i class="icon-circle-gray"></i>
					</div>
				</div>
			</div>
		</div>
</body>
</html>