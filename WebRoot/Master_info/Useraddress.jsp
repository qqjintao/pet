<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>收货地址</title>

<!-- include css start -->
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Address.css'>
<!-- include css end -->
<script>
	function operations(location_tableid, operation) {
		document.getElementById("location_tableid").value = location_tableid;
		document.getElementById("operation").value = operation;
		document.getElementById("operationForm").submit();
	}
	function black(newwindow) {
		var iWidth = 880; //弹出窗口的宽度;
		var iHeight = 300; //弹出窗口的高度;
		var iTop = (window.screen.availHeight - 30 - iHeight) / 2; //获得窗口的垂直位置;
		var iLeft = (window.screen.availWidth - 10 - iWidth) / 2; //获得窗口的水平位置;
		window.open(newwindow, "newwindow", "height=" + iHeight + ", width=" + iWidth + ",top=" + iTop + ",left=" + iLeft + " toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
	}
</script>
</head>

<body>
	<!-- 隐藏表单应用业务处理 -->
	<form action="Location_tableAction!operation" method="post"
		style="display: none;" id="operationForm">
		<input type="text" name="location_table.id" id="location_tableid">
		<input type="text" name="operation" id="operation">
	</form>
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
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ps-sd-md-current">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 收货地址 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">收货地址</h6>
					</div>
					<div class="ps-md-bd">
						<div class="address-manage clearfix">
							<a  onclick="black('Master_info/UseraddAddress1.jsp')"
								class="button-light-medium addAddressBtn">新增收货地址</a>
						</div>
						<div class="address-list clearfix">
							<s:iterator value="location_tables" status="st"
								var="location_tables">
								<s:if test="#location_tables.Address_code==1">
									<div class="address-item clearfix address-default">
										<dl class="address-item-inner">
											<dt class="address-item-user">
												<s:property value="#location_tables.Name" />
												<span class="address-defText"> —— 默认收货地址</span>
											</dt>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">收货人：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Name" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">所在地区：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Province" />
													<s:property value="#location_tables.City" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">地址：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Street" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">手机号码：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Phone" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">固定电话：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Fixedline_telephone" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">邮政编号：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Zip_code" />
												</div>
											</dd>
										</dl>
										<div class="address-operate">
											<a
												onclick="operations(<s:property value="#location_tables.id"/>,'1')"
												class="address-operate-ctrl J-editAddress">编辑</a> <a
												onclick="operations(<s:property value="#location_tables.id"/>,'2')"
												class="address-operate-ctrl J-delAddress">删除</a>
										</div>
										<i class="icon-defAddress"></i>
									</div>
								</s:if>
								<s:else>
									<div class="address-item clearfix ">
										<dl class="address-item-inner">
											<dt class="address-item-user">
												<s:property value="#location_tables.Name" />
											</dt>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">收货人：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Name" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">所在地区：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Province" />
													<s:property value="#location_tables.City" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">地址：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Street" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">手机号码：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Phone" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">固定电话：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Fixedline_telephone" />
												</div>
											</dd>
											<dd class="address-item-row clearfix">
												<div class="address-item-key fl">邮政编号：</div>
												<div class="address-item-val fl">
													<s:property value="#location_tables.Zip_code" />
												</div>
											</dd>
										</dl>
										<div class="address-operate">
											<a
												onclick="operations(<s:property value="#location_tables.id"/>,'0')"
												class="address-operate-ctrl address-setDefault J-setDefAddress">设为默认地址</a><a
												onclick="operations(<s:property value="#location_tables.id"/>,'1')"
												class="address-operate-ctrl J-editAddress">编辑</a><a
												onclick="operations(<s:property value="#location_tables.id"/>,'2')"
												class="address-operate-ctrl J-delAddress">删除</a>
										</div>
									</div>
								</s:else>
							</s:iterator>
						</div>
					</div>
				</div>
				<!-- 收货地址 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>