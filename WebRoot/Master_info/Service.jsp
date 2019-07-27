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

<title>锦涛宠物店服务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Index.css'>
</head>
<body>
	<div class="layout">
		<!-- header start -->
		<!-- topbar start -->
		<div class="topbar home-topbar clearfix">
			<div class="layout-auto clearfix">
				<div class="tb-location">
					<i class="icon iconfont">&#xe60a;</i><span class="tb-location-span">所在地：深圳</span><a
						href="?stay=1" id="changeAddress">[定位地址]</a>
				</div>
				<div class="tb-menu">
					<a href="" class="tb-menu-item" target="_blank">波奇网</a><span
						class="tb-menu-line">|</span><a href="" class="tb-menu-item"
						target="_blank">波奇商城</a><span class="tb-menu-line">|</span><a
						href="" class="tb-menu-item" target="_blank">波奇论坛</a><span
						class="tb-menu-line">|</span><a href="" class="tb-menu-item"
						target="_blank">宠物百科</a><span class="tb-menu-line">|</span><a
						href="" class="tb-menu-item" target="_blank">手机版</a>
				</div>
			</div>
		</div>
		<!-- topbar end -->
		<!-- header start -->
		<div class="header home-header clearfix">
			<div class="layout-auto clearfix">
				<div class="hd-logo">
					<a href=""><img src="Master_info/images/logo.gif" alt=""
						width="200"></a>
				</div>
				<div class="hd-search">
					<form action="" method="get"
						id="J-header-search">
						<input type="text" name="keyword"
							class="hd-search-key placeholder J-header-search-key"
							value="搜索宠物店" data-placeholder="搜索宠物店">
						<button type="button"
							class="hd-search-button J-header-search-button">
							<i class="icon iconfont">&#xe612;</i>
						</button>
					</form>
					<div class="hd-datalist"></div>
				</div>
				<div class="hd-menu">
					<div class="hd-menu-item hd-menu-user">
						★@***<i class="icon iconfont">&#xe603;</i>
						<div class="hd-submenu">
							<a href="">个人中心</a><a
								href="">我的优惠券</a>
						</div>
					</div>
					<a href="" class="hd-menu-item">退出</a><span class="hd-menu-line"></span>
				</div>
			</div>
		</div>
		<!-- header end -->
		<!-- header end -->
		<!-- content start -->
		<div class="content clearfix">
			<div class="homepage">
				<div class="layout-auto clearfix">
					<div class="top">
						<div class="guider" id="guider">
							<div class="font-16 gray">pet3.jsp</div>
							<div class="font-50">锦涛宠物店咨询服务</div>
							<div class="font-18">宠物洗澡、造型、寄养、医疗、绝育、摄影……&nbsp;这里都能搞定！</div>
						</div>
						<div class="address clearfix" id="address">
							<div class="current-city m-shadow">
								<span class="location font-18"><i
									class="oldicon i_location"></i>所在地： </span><a href="javascript:;"
									class="city" id="citylist"><span>珠海</span></a>
							</div>
							<div class="address-input clearfix m-shadow">
								<div class="input-container">
									<input type="text" id="searchKeywords"
										value="宠物所在小区、街道、地标名、商圈名……"
										data-placeholder="宠物所在小区、街道、地标名、商圈名……" class="placeholder fl"
										autocomplete="off"><a onclick="alert('版块正在维修！');" class="fl"
										id="search"><i class="oldicon i_search"></i></a>
									<div class="top_s_menu" id="service_s_menu"></div>
								</div>
							</div>

						</div>
						<div class="busniess clearfix">
							<ul>
								<li><a id="xihu" onclick="alert('版块正在维修！');"><div
											class="b-center">
											<i class="oldicon i_wash"></i>
											<div>洗护</div>
										</div></a></li>
								<li><a id="zaoxing" onclick="alert('版块正在维修！');"><div
											class="b-center">
											<i class="oldicon i_zhaoxin"></i>
											<div>造型</div>
										</div></a></li>
								<li><a id="jiyang" onclick="alert('版块正在维修！');"><div
											class="b-center">
											<i class="oldicon i_jiyang"></i>
											<div>寄养</div>
										</div></a></li>
								<li><a id="quchong" onclick="alert('版块正在维修！');"><div
											class="b-center">
											<i class="oldicon i_yiliao"></i>
											<div>医疗</div>
										</div></a></li>

							</ul>
						</div>
					</div>
					<div class="mcontent hidden">
						<div class="map" id="map">
							<div class="ps-container" id="resultdiv">
								<div class="result" id="result"></div>
							</div>
							<div class="container" id="bd-map"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- content end -->
</body>
</html>