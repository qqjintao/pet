<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑收货地址</title>
<!-- include css start -->
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Address.css'>
<!-- include css end -->
<script type="text/javascript">
	function provinces() {
		var obj = document.getElementById("Provinces");
		var index = obj.selectedIndex;
		if (index == 0) {

		} else {
			document.getElementById("updateprovince").value = index;
			document.getElementById("state").value = 0;
			document.getElementById("userInfoForm").submit();
		}
	}
	function userInfoForm_submit() {
		var obj = document.getElementById("Provinces");
		var index = obj.selectedIndex;
		document.getElementById("updateprovince").value = index;
		document.getElementById("state").value = 1;
		document.getElementById("userInfoForm").submit();
	}
</script>
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
				<!-- 新增/编辑收货地址 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">编辑收货地址</h6>
					</div>
					<div class="ps-md-bd">
						<form action="Location_tableAction!updatelocation_table"
							method="post" class="J-saveAddressForm" id="userInfoForm">
							<input type="text" name="updateprovince" id="updateprovince"
								style="display: none;"> <input type="text" name="state"
								id="state" style="display: none;"><input type="text"
								name="location_table.Address_code"
								value="<s:property value="location_table.Address_code"/>"
								style="display: none;">
							<div class="address-form clearfix">
								<input type='hidden' name='location_table.id'
									value="<s:property value="location_table.id"/>" />
								<div class="address-form-row clearfix">
									<div class="address-form-type fl">
										<em class="color-orange">* </em>收货人姓名：
									</div>
									<div class="address-form-cell fl">
										<div class="address-form-span fl">
											<input type="text" name="location_table.Name"
												style="height:30px"
												value="<s:property value="location_table.Name"/>"
												class="input address-form-input">
										</div>
										<p class="form-error fl"></p>
									</div>
								</div>
								<div class="address-form-row clearfix">
									<div class="address-form-type fl" id="address">
										<em class="color-orange">* </em>所在地区：
									</div>
									<div class="address-form-cell fl">
										<select id="Provinces" class="select_bk"
											name="location_table.Province" onchange="provinces()">
											<option selected>省份</option>
											<s:set name="thisprovince" value="location_table.Province"
												scope="page">
											</s:set>
											<s:iterator value="province" status="status" var="province">
												<s:if test="#province.toString()==#attr.thisprovince">
													<option value="<s:property value="province"/>"
														selected="selected">
													<s:property value="#province"/>
													</option>
												</s:if>
												<s:else>
													<option value="<s:property value="province"/>">
													<s:property value="#province"/>
													</option>
												</s:else>
											</s:iterator>
										</select> <select id="City" class="select_bk"
											name="location_table.City">
											<option selected>城市</option>
											<s:set name="thiscity" value="location_table.City"
												scope="page">
											</s:set>
											<s:iterator value="city" status="status" var="city">
												<s:if test="#city.toString()==#attr.thiscity">
													<option value="<s:property value="#city"/>"
														selected="selected">
													<s:property value="#city"/>
													</option>
												</s:if>
												<s:else>
													<option value="<s:property value="#city"/>">
													<s:property value="#city"/>
													</option>
												</s:else>
											</s:iterator>
										</select>
									</div>
								</div>
								<div class="address-form-row clearfix">
									<div class="address-form-type fl">
										<em class="color-orange">* </em>街道地址：
									</div>
									<div class="address-form-cell fl">
										<div class="address-form-span fl">
											<input type="text" name="location_table.Street"
												style="height:30px"
												value="<s:property value="location_table.Street"/>"
												class="input address-form-street">
										</div>
										<p class="form-error fl"></p>
									</div>
								</div>
								<div class="address-form-row clearfix">
									<div class="address-form-type fl">
										<em class="color-orange">* </em>手机号码：
									</div>
									<div class="address-form-cell fl">
										<div class="address-form-span fl">
											<input type="text" name="location_table.Phone"
												style="height:30px"
												value="<s:property value="location_table.Phone"/>"
												class="input address-form-input J-mobile">
										</div>
										<div class="address-form-span fl">或固定电话：</div>
										<div class="address-form-span fl">
											<input type="text" name="location_table.Fixedline_telephone"
												style="height:30px"
												value="<s:property value="location_table.Fixedline_telephone"/>"
												class="input address-form-input J-telephone">&nbsp;&nbsp;&nbsp;正确的固定电话格式如：021-12345678
										</div>
										<div class="cb"></div>
										<p class="form-error fl"></p>
									</div>
								</div>
								<div class="address-form-row clearfix">
									<div class="address-form-type fl">邮政编码：</div>
									<div class="address-form-cell fl">
										<div class="address-form-span fl">
											<input type="text" name="location_table.Zip_code"
												style="height:30px"
												value="<s:property value="location_table.Zip_code"/>"
												class="input address-form-input">
										</div>
										<p class="form-error fl"></p>
									</div>
								</div>
								<div class="address-form-row clearfix">
									<div class="address-form-type fl">&nbsp;</div>
									<div class="address-form-cell fl">
										<div class="address-form-span fl">
											<span class="button-light-medium saveAddressBtn">保存
												<button type="button" onclick="userInfoForm_submit()"></button>
											</span>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- 新增/编辑收货地址 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>
