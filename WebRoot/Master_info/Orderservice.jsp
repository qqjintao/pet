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

<title>服务订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Order.css'>

</head>

<body>
	<jsp:include page="Header_Master.jsp"></jsp:include>
	<!-- content start -->
	<div class="content">
		<div class="ct-body clearfix">
			<!-- 左边导航 Start -->
			<div class="personal-side fl">
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">交易管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="IndentAction!queryIndentView"
							class="ps-sd-md-menuName">商城订单</a><a
							href="/pet3/Master_info/Orderservice.jsp"
							class="ps-sd-md-menuName ps-sd-md-current">服务订单</a><a
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
							class="ps-sd-md-menuName ">系统通知</a><a
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
				<!-- 服务订单 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">服务订单</h6>
					</div>
					<div class="ps-md-bd service-order">
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a href="/userinfo/order/service?status=0"
										class="ui-tab-btn ui-tab-cur">全部订单</a>
								</div>
								<div class="ui-tab-search fr">
									
								</div>
							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section clearfix">
									<!-- 订单头部 start -->
									<table class="ui-table">
										<colgroup>
											<col class="cg-col-1">
											<col class="cg-col-2">
											<col class="cg-col-3">
											<col class="cg-col-4">
											<col class="cg-col-5">
											<col class="cg-col-6">
											<col class="cg-col-auto">
										</colgroup>
										<thead>
											<tr class="ui-table-head">
												<td><div class="ui-table-span tl">
														服务信息
														<div></td>
												<td>单价</td>
												<td>数量</td>
												<td><select name="orderState" id=""
													class="select orderState-select J-select-order-state"><option
															value="0" selected="selected">全部订单</option>
														<option value="1">待付款</option>
														<option value="2">待确认</option>
														<option value="3">待使用</option>
														<option value="4">待评价</option>
														<option value="5">已完成</option>
														<option value="6">已退款</option>
														<option value="7">已取消</option></select></td>
												<td>剩余次数</td>
												<td>操作</td>
												<td>应付金额</td>
											</tr>
										</thead>
									</table>
									<!-- 订单头部 end -->
									<!-- 没有订单 start -->
									<table class="ui-table">
										<colgroup>
											<col class="cg-col-1">
											<col class="cg-col-2">
											<col class="cg-col-3">
											<col class="cg-col-4">
											<col class="cg-col-5">
											<col class="cg-col-6">
											<col class="cg-col-auto">
										</colgroup>
										<tbody>
											<tr class="ui-table-row">
												<td class="ui-table-cell" colspan="7"><div
														class="ui-noData">
														<p>
															暂无订单信息，去 <a href=""
																class="color-blue">波奇服务</a> 看看吧！
														</p>
													</div></td>
											</tr>
										</tbody>
									</table>
									<!-- 没有订单 end -->
									<!-- 分页 start -->
									<div class="page clearfix"></div>
									<!-- 分页 end -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 服务订单 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>