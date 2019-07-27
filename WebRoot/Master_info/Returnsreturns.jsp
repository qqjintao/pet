<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>退货记录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Order.css'>
<link rel="stylesheet" href='Master_info/css/Returns.css'>
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
						<a href="CollectAction!queryCollectByMobile_phone"
							class="ps-sd-md-menuName">商城订单</a><a
							href="IndentAction!queryIndentView" class="ps-sd-md-menuName ">服务订单</a><a
							href="/pet3/Master_info/Returnsreturns.jsp" class="ps-sd-md-menuName ps-sd-md-current">退货记录</a><a
							href="/pet3/Master_info/Productnotify.jsp" class="ps-sd-md-menuName ">到货通知</a><a
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
			<!-- 左边导航 End -->
			<div class="personal-main fr">
				<!-- 退货记录 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">退货记录</h6>
					</div>
					<div class="ps-md-bd">
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a href="/userinfo/Returns/returns?page=1&type=0"
										class="ui-tab-btn ui-tab-cur">全部<em class="ui-tab-num">(0)</em></a>
								</div>
							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section clearfix">
									<!-- 退货列表 start -->
									<table class="ui-table returns-table">
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
												<td>商品编号</td>
												<td>商品信息</td>
												<td>退货类型</td>
												<td>退款时间</td>
												<td>退款金额</td>
											</tr>
										</thead>
										<tbody>
											<!-- 循环模块 start -->
											<tr class="ui-table-row">
												<td class="ui-table-cell" colspan="6"><div
														class="ui-noData">
														<p>暂无退货记录！</p>
													</div></td>
											</tr>
											<!-- 循环模块 end -->
										</tbody>
									</table>
									<!-- 退货列表 end -->
									<!-- 分页 start -->
									<div class="page clearfix"></div>
									<!-- 分页 end -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 退货记录 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>