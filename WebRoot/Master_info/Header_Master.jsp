<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人中心首页</title>
<!-- include css start -->
<link rel="stylesheet" href='css/Master_info.css'>
</head>
<body>
	<!-- siteNav start -->
	<div class="siteNav">
		<div class="sn-body clearfix">
			<div class="sn-menu fl">
				<a href="/pet3" target="_blank" class="sn-menu-item">主页</a><a href="/pet3/Master_info/Service.jsp"
					target="_blank" class="sn-menu-item">锦涛宠店服务</a><a href="/pet3/ForumAction.action"
					target="_blank" class="sn-menu-item">锦涛宠店论坛</a><a href="http://localhost:8080/electronicMarket/baike.jsp"
					target="_blank" class="sn-menu-item">宠物百科</a>
			</div>
			<ul class="sn-quick fr">
				<li class="sn-quick-item"><em class="sn-quick-userName">您好，<s:property value="#session.registry.Nickname"/></em>
				</li>
				<li class="sn-quick-item"><a href="#"
					>退出</a></li>
				<li class="sn-quick-item sn-quick-app"><span
					class="sn-quick-line"></span><span class="sn-quick-zoom"></span><em
					class="sn-quick-sina"><i class="icon-sina"></i>微博</em>
					<div class="sn-quick-code">
						<img
							src="images/myweixin.jpg" height="100px" width="100px"
							alt="">
					</div></li>
				<li class="sn-quick-item sn-quick-app"><span
					class="sn-quick-line"></span><span class="sn-quick-zoom"></span><em
					class="sn-quick-wechat"><i class="icon-wechat"></i>微信</em>
					<div class="sn-quick-code">
						<img
							src="images/myweixin.jpg" height="100px" width="100px"
							alt="">
					</div></li>
				<li class="sn-quick-item sn-quick-app"><span
					class="sn-quick-line"></span><span class="sn-quick-zoom"></span><em
					class="sn-quick-mobile"><i class="icon-mobile"></i>手机版</em>
					<div class="sn-quick-code sn-quick-down">
						<img
							src="images/myweixin.jpg" height="100px" width="100px"
							alt="" class="fl">
						<div class="sn-quick-sdk fl">
							<h6 class="sn-quick-sdk-tit">锦涛宠物APP</h6>
							<p class="sn-quick-sdk-des">首次下单满39送39</p>
							<p>
								<a
									href="" 
									class="icon-app-iphone"></a>
							</p>
							<p>
								<a href=""
									class="icon-app-android"></a>
							</p>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
	<!-- siteNav end -->
	<!-- header start -->
	<div class="header">
		<div class="hd-body clearfix">
			<a href="http://www.boqii.com" class="personal-logo fl"></a>
			<ul class="personal-nav fl">
				<li class="ps-nav-item ps-nav-current"><a href="/pet3/Master_tableAction!userinfo"
					class="ps-nav-name">我的个人信息</a><i class="ps-nav-triangle"></i></li>
				<li class="ps-nav-item"><a href="/pet3/ForumAction.action"
					class="ps-nav-name">社区主页</a><i class="ps-nav-triangle"></i></li>
				<li class="ps-nav-item ps-nav-more-cate"><a href="javascript:;"
					class="ps-nav-name">个人设置<i class="icon-tip"></i></a>
					<div class="ps-nav-cate">
						<p>
							<a href="/pet3/Master_tableAction" class="ps-nav-cName">个人资料</a>
						</p>
						<p>
							<a href="/pet3/SafeAction" class="ps-nav-cName">安全设置</a>
						</p>
						<p>
							<a href="/pet3/Location_tableAction" class="ps-nav-cName">收货地址</a>
						</p>
					</div> <i class="ps-nav-triangle"></i></li>
				<li class="ps-nav-item ps-nav-more-cate"><a href="javascript:;"
					class="ps-nav-name">消息<i class="icon-tip"></i></a>
					<div class="ps-nav-cate">
						<p>
							<a href="/pet3/Master_info/Productconsult.jsp"
								class="ps-nav-cName">咨询回复</a>
						</p>
						<!-- 查看通知 -->
						<p>
							<a href="/pet3/Master_info/Messagenotice.jsp"
								class="ps-nav-cName">系统通知</a>
						</p>
						<!-- 查看消息 -->
						<p>
							<a href="/pet3/Master_info/Message.jsp"
								class="ps-nav-cName">私信</a>
						</p>
					</div> <i class="ps-nav-triangle"></i></li>
			</ul>
		</div>
	</div>
	<!-- header end -->
	<!-- siteNav end -->
</body>
</html>
