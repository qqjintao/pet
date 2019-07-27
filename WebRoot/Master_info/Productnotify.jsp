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

<title>到货通知</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Stock.css'>
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
							href="/pet3/Master_info/Orderservice.jsp" class="ps-sd-md-menuName ">服务订单</a><a
							href="/pet3/Master_info/Returnsreturns.jsp" class="ps-sd-md-menuName ">退货记录</a><a
							href="/pet3/Master_info/Productnotify.jsp" class="ps-sd-md-menuName ps-sd-md-current">到货通知</a><a
							href="CollectAction!queryCollectByMobile_phone" class="ps-sd-md-menuName ">我的收藏</a>
					</dd>
				</dl>
				<dl class="ps-side-module">
					<dt class="ps-sd-md-name">资金管理</dt>
					<dd class="ps-sd-md-menu">
						<a href="FinanceAction!queryAccount" class="ps-sd-md-menuName ">余额</a><a
							href="FinanceAction!queryBeangetBeanList " class="ps-sd-md-menuName ">波奇豆</a><a
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName">优惠券</a><a
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
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 到货通知 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">到货通知</h6>
					</div>
					<div class="ps-md-bd stockNotice">
						<!-- 订单列表 start -->
						<table class="ui-table">
							<colgroup>
								<col class="cg-col-1">
								<col class="cg-col-2" style="width:71px;">
								<col class="cg-col-3" style="width:68px;">
								<col class="cg-col-auto">
							</colgroup>
							<thead>
								<tr class="ui-table-head">
									<td>商品信息</td>
									<td>波奇价</td>
									<td>库存状态</td>
									<td>通知状态</td>
									<td>操作</td>
								</tr>
							</thead>
							<tbody>
								<tr class="ui-table-row">
									<td class="ui-table-cell" colspan="5"><div
											class="ui-noData">
											<p>
												您还没有为缺货商品设置过到货通知，<a href="#"
													class="color-blue">锦涛宠店商城</a> 逛逛吧！
											</p>
										</div></td>
								</tr>
							</tbody>
						</table>
						<!-- 订单列表 end -->
						<!-- 分页 start -->
						<!-- 分页 end -->
					</div>
				</div>
				<!-- 到货通知 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>