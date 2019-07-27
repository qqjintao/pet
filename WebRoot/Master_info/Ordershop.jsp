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

<title>商城订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Order.css'>
<script type="text/javascript">
	function queryProductDetilsByProductId(ProductId, Subclass_name) {
		location.href = "queryProductDetilsByProductId?ProductId=" + ProductId + "&Subclass_name=" + Subclass_name;
	}
	function queryIndent_state() {
		var Indent_state=document.getElementById("Indent_state").value; 
		location.href = "IndentAction!queryIndentViewByState?indent_state=" + Indent_state;
	}
</script>
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
							class="ps-sd-md-menuName ps-sd-md-current">商城订单</a><a
							href="/pet3/Master_info/Orderservice.jsp"
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
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName ">优惠券</a><a
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
				<!-- 商城订单 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">商城订单</h6>
					</div>
					<div class="ps-md-bd shopOrder">
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a href="http://www.boqii.com/userinfo/Order/shop?timenode=1"
										class="ui-tab-btn ui-tab-cur">全部订单</a>
								</div>

							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section clearfix">
									<!-- 订单列表 start -->
									<table class="ui-table" id="order_table">
										<colgroup>
											<col class="cg-col-1">
											<col class="cg-col-2">
											<col class="cg-col-3">
											<col class="cg-col-4">
											<col class="cg-col-5">
											<col class="cg-col-auto">
										</colgroup>
										<thead>
											<tr class="ui-table-head">
												<td>订单编号</td>
												<td>商品信息</td>
												<td>收货人</td>
												<td>订单金额</td>
												<td><select name="orderState" id="Indent_state" onchange="queryIndent_state();"
													class="select orderState-select J-select-order-state-shop"><option
															value="0" selected="selected">订单状态</option>
														<option value="1">待付款</option>
														<option value="2">待发货</option>
														<option value="3">待收货</option>
														<option value="4">待评价</option> 
														<option value="5">已完成</option>
														<option value="6">已取消</option></select></td>
												<td>操作</td>
											</tr>
										</thead>
										<tbody>
											<!-- 循环模块 start -->
											<s:iterator value="indentView" status="status"
												var="indentView">
												<tr class="ui-table-row">
													<td class="ui-table-cell"><div
															class="goods"> 
															<p class="color-blue">
																<a href="">
																<s:property value="#indentView.Indent_code" /></a>
															</p>
														</div></td>
													<td class="ui-table-cell"><div
															class="ui-table-span clearfix">
															<div class="ui-table-span tl">
																<div class="goods-item fl">
																	<a 
																		href="javascript:queryProductDetilsByProductId('<s:property value="#indentView.Product_code"/>','<s:property value="#indentView.Subclass_name"/>')"
																		class="goods-image fl" target="_blank"><img
																		src="<s:property value="#indentView.Product_photo"/>"
																		height="58" width="58"
																		alt="<s:property value="#indentView.Product_photo"/>"></a>
																</div>
															</div>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<p>
																<s:property value="#indentView.Name" />
															</p>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<p>
																&yen;
																<s:property value="#indentView.Indent_memberprice" />
															</p>
															<p>
																<s:property value="#indentView.Payment_name" />
															</p>
															<p>
																<s:property value="#indentView.Postal_name" />
															</p>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<s:if test="#indentView.Indent_state==0">
																<p class="color-orange">订单取消</p>
															</s:if>
															<s:elseif test="#indentView.Indent_deal1==0">
																<p class="color-orange">待付款</p>
															</s:elseif>
															<s:elseif test="#indentView.Indent_deal2==0">
																<p class="color-orange">待商家确认收款款</p>
															</s:elseif>
															<s:elseif test="#indentView.Indent_deal3==0">
																<p class="color-orange">待发货</p>
															</s:elseif>
															<s:elseif test="#indentView.Indent_deal4==0">
																<p class="color-orange">待确认收货</p>
															</s:elseif>
															<s:elseif test="#indentView.Evaluate==null">
																<p class="color-orange">待评价</p>
															</s:elseif>
															<s:else>
																<p class="color-orange">已完成</p>
															</s:else>
														</div></td>
													<td class="ui-table-cell"><div
															class="ui-table-span order_countdown">
															<s:if test="#indentView.Evaluate==null">
															<p>
																<a class="button-dark-small buyAgainBtn J-buyAgainBtn">立即评价</a>
															</p>
															</s:if>
															<s:else>
															<p>
																<a href="javascript:queryProductDetilsByProductId('<s:property value="#indentView.Product_code"/>','<s:property value="#indentView.Subclass_name"/>')"
																	class="button-dark-small buyAgainBtn J-buyAgainBtn">再次购买</a>
															</p>
															</s:else>
														</div></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<!-- 订单列表 end -->
									<!-- 分页 start -->
									<div class="page clearfix"></div>
									<!-- 分页 end -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 商城订单 end -->
				<!-- 猜你喜欢 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">猜你喜欢</h6>
					</div>
					<div class="ps-md-bd">
						<div class="goods-section">
							<ul class="goods-list clearfix"></ul>
						</div>
					</div>
				</div>
				<!-- 猜你喜欢 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>