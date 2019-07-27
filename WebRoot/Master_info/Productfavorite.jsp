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

<title>我的收藏</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Collect.css'>
<script type="text/javascript">
	function queryProductDetilsByProductId(ProductId, Subclass_name) {
		location.href = "queryProductDetilsByProductId?ProductId=" + ProductId + "&Subclass_name=" + Subclass_name;
	}
</script>
</head>

<body>
	<jsp:include page="Header_Master.jsp"></jsp:include>
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
							href="CollectAction!queryCollectByMobile_phone"
							class="ps-sd-md-menuName ps-sd-md-current">我的收藏</a>
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
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 我的收藏 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">我的收藏</h6>
					</div>
					<div class="ps-md-bd">
						<!-- 收藏的商品 start -->
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl">
									<a class="ui-tab-btn ui-tab-cur">收藏的商品</a>
								</div>
							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section goodsCollect clearfix">
									<table class="ui-table">
										<colgroup>
											<col class="cg-col-1">
											<col class="cg-col-2">
											<col class="cg-col-3">
											<col class="cg-col-auto">
										</colgroup>
										<thead>
											<tr class="ui-table-head">
												<td>商品信息</td>
												<td>波奇价</td>
												<td>库存状态</td>
												<td>操作</td>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="collects" status="status" var="collects">
												<!-- 循环模块 start -->
												<tr class="ui-table-row">
													<td class="ui-table-cell"><div class="ui-table-span">
															<div class="goods">
																<div class="goods-item vm-section">
																	<span class="vm-line"></span><a
																		href="javascript:queryProductDetilsByProductId('<s:property value="#collects.Product_code"/>','<s:property value="#collects.Subclass_name"/>')"
																		target="_blank" class="goods-image vm-mod"> <img
																		src="<s:property value="#collects.Product_photo" />"
																		height="118" width="150">
																	</a>
																	<dl class="goods-info vm-mod">
																		<dt class="goods-name">
																			<a target="_blank"
																				href="javascript:queryProductDetilsByProductId('<s:property value="#collects.Product_code"/>','<s:property value="#collects.Subclass_name"/>')"><s:property
																					value="#collects.Product_name" /></a>
																		</dt>
																	</dl>
																</div>
															</div>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<p class="color-orange">
																&yen;
																<s:property value="#collects.Member_price" />
															</p>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<s:if test="#collects.Product_state==1">
																<p class="color-orange">已到货</p>
															</s:if>
															<s:else>
																<p class="color-orange">未到货</p>
															</s:else>
														</div></td>
													<td class="ui-table-cell"><div class="ui-table-span">
															<p>
															<form action="CollectAction!deleteCollectById1"
																method="post" name="deleteCollectById1">
																<input type="hidden" name="collect.id"
																	value="<s:property value="#collects.id" />"/> 
														<input class="color-blue J-cancelCollect" value="取消收藏" type="submit">  
															</form>
															</p>
														</div></td>
												</tr>
												<!-- 循环模块 end -->
											</s:iterator>
										</tbody>
									</table>
									<!-- 分页 start -->
									<!-- 分页 end -->
									<!-- 收藏的商品 start -->
									<div class="ui-tab" id="pingpai">
										<div class="ui-tab-head">
											<div class="ui-tab-ctrl">
												<a	class="ui-tab-btn ui-tab-cur">收藏的品牌</a> 
											</div>
										</div>
										<div class="ui-tab-body">
											<div class="ui-noData">
												<p class="no_brand">
													您还未收藏任何品牌，到<a class="color-blue" href="#">锦涛宠店</a>逛逛吧！
												</p>
											</div>
										</div>
									</div>
									<!-- 分页 start -->
									<!-- 分页 end -->
									<!-- 收藏的商品 end -->
								</div>
							</div>
							<!-- 我的收藏 end -->			
										<!-- 收藏的商户 start -->
										<div class="ui-tab">
											<div class="ui-tab-head">
												<div class="ui-tab-ctrl">
													<a class="ui-tab-btn  ui-tab-cur">收藏的商户</a> 
												</div>
											</div>
											<div class="ui-tab-body">
												<div class="ui-tab-section shopCollect clearfix">
													<table class="ui-table">
														<colgroup>
															<col class="cg-col-1">
															<col class="cg-col-2">
															<col class="cg-col-auto">
														</colgroup>
														<thead>
															<tr class="ui-table-head">
																<td>商户名称</td>
																<td>商品商标</td>
																<td>操作</td>
															</tr>
														</thead>
														<tbody> 
														<s:iterator value="collectStoreView" status="status" var="collectStoreView">
															<tr class="ui-table-row">
																<td class="ui-table-cell"><div
																		class="ui-noData">
																		<p>
																			<s:property value="#collectStoreView.Store_name" />
																		</p>
																</div></td>
																<td class="ui-table-cell"><div
																		class="ui-noData">
																		<p>
																			<img
																		src="<s:property value="#collectStoreView.Store_logo" />"
																		height="118" width="150">
																		</p>
																</div></td>
																<td class="ui-table-cell"><div
																		class="ui-noData">
																		<p>
																		<form action="CollectAction!deleteCollectById1"
																			method="post" name="cart2">
																			<input type="hidden" name="collect.id"
																				value="<s:property value="#collectStoreView.id" />" />
																		<input class="color-blue J-cancelCollect" value="取消收藏" type="submit">		
																		</form>
																		</p>
																</div></td>  
															</tr>
														</s:iterator>
														</tbody>
													</table>
													<!-- 分页 start -->
													<!-- 分页 end -->
												</div>
											</div>
										</div>
										<!-- 收藏的商户 end -->
									 
						</div>
					</div>
					<!-- 我的收藏 end -->
				</div>
			</div>
		</div>
		<!-- content end -->
</body>
</html>