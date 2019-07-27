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
    
    <title>账户余额</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Money.css'>
<script>
 function black(newwindow){
 var iWidth=350; //弹出窗口的宽度;
var iHeight=200; //弹出窗口的高度;
var iTop = (window.screen.availHeight-30-iHeight)/2; //获得窗口的垂直位置;
var iLeft = (window.screen.availWidth-10-iWidth)/2; //获得窗口的水平位置;
  window.open (newwindow, "newwindow", "height="+iHeight+", width="+iWidth+",top="+iTop+",left="+iLeft+" toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
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
						<a href="FinanceAction!queryAccount" class="ps-sd-md-menuName ps-sd-md-current">余额</a><a
							href="FinanceAction!queryBeangetBeanList " class="ps-sd-md-menuName ">波奇豆</a><a
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName ">优惠券</a><a
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
				<!-- 账户余额 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">账户余额</h6>
					</div>
					<div class="ps-md-bd accountBalance">
						<ul class="clearfix">
							<li class="accountBalance-info fl"><em
								class="accountBalance-type">可用余额：</em><strong
								class="accountBalance-value">&yen;<s:property value="finance.Balance"/></strong></li>
							<li class="accountBalance-info fl"><em
								class="accountBalance-type">可提现：</em><strong
								class="accountBalance-value">&yen;<s:property value="finance.Balance"/></strong></li>
							<!--<li class="accountBalance-info fl"><em class="accountBalance-type">冻结：</em><strong class="accountBalance-value">&yen;</strong></li>-->
							<li class="accountBalance-operate fr"><a
								onclick="black('Master_info/AddBalance.jsp')"
								class="button-light-normal rechargeBtn J-rechargeBtn">充值</a><a
								onclick="black('Master_info/ReductionBalance.jsp')" class="button-dark-normal">提现</a></li>
						</ul>
						<ul class="clearfix">
							<li class="accountBalance-setting fl"><i class="icon-phone"></i><span
								class="color-gray-light">手机已绑定</span><a onclick="alert('版块正在维修...');"
								class="color-blue">修改</a></li>
							<li class="accountBalance-setting fl"><i class="icon-pass"></i><span
								class="color-gray-light">已设置支付密码</span><a
								onclick="black('Master_info/Changepayment_code.jsp')" class="color-blue">修改</a></li>
						</ul>
						<div class="accountNotice clearfix">
							<p>提现规则：20元起提，每日提现限额500元，每日限提现1次</p>
						</div>
					</div>
				</div>
				<!-- 账户余额 end -->	
			</div>
		</div>
	</div>
	<input type='hidden' value='1' id='checkMobile'>
	<!-- content end -->
</body>
</html>
