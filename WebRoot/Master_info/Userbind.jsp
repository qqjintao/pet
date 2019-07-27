<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>绑定账号</title>

 <!-- include css start -->
<link rel="stylesheet" href='css/Master_info.css'>
<link rel="stylesheet" href='css/Account.css'>
<!-- include css end -->
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
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ps-sd-md-current">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main fr">
				<!-- 绑定账号 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">绑定账号</h6>
					</div>
					<div class="ps-md-bd">
						<div class="account-bind J-bind-module account-bind-active">
							<div class="account-bind-head">
								<i class="account-bind-icon bind-alipay-icon"><img alt="" src="images/zhifibao.png"></i><span
									class="account-bind-name">绑定支付宝帐号</span><strong
									class="account-bind-state color-orange">未绑定</strong>
							</div>
							<div class="account-bind-body">
								<div class="account-bind-oper">
									<p class="color-gray">绑定后您可以使用支付宝帐号登录锦涛宠店</p>
									<p>
										<a onclick="black('Maintain.jsp')"
											class="button-light-medium account-bind-btn">立即绑定</a>
									</p>
								</div>
								<div class="account-bind-sites">
									<span class="bind-logo"><img
										src="images/logo.png"
										width="120" height="50" alt=""></span><i
										class="account-bind-icon bing-process-icon"><img alt="" src="images/bind-logo.png"></i><span
										class="bind-logo"><img
										src="images/logo_zfb.gif"
										width="120" height="50" alt=""></span>
								</div>
							</div>
						</div>
						<div class="cb"></div>
						<div class="account-bind J-bind-module account-bind-active">
							<div class="account-bind-head">
								<i class="account-bind-icon bind-weibo-icon"><img alt="" src="images/weibo.png"></i><span
									class="account-bind-name">绑定微博帐号</span><strong
									class="account-bind-state color-orange">未绑定</strong>
							</div>
							<div class="account-bind-body">
								<div class="account-bind-oper">
									<p class="color-gray">绑定后您可以使用微博帐号登录锦涛宠店</p>
									<p>
										<a
											onclick="black('Maintain.jsp')"
											class="button-light-medium account-bind-btn">立即绑定</a>
									</p>
								</div>
								<div class="account-bind-sites">
									<span class="bind-logo"><img
										src="images/logo.png"
										width="120" height="50" alt=""></span><i
										class="account-bind-icon bing-process-icon"><img alt="" src="images/bind-logo.png"></i><span
										class="bind-logo"><img
										src="images/logo_wb.gif"
										width="120" height="50" alt=""></span>
								</div>
							</div>
						</div>
						<div class="cb"></div>
						<div class="account-bind J-bind-module account-bind-active">
							<div class="account-bind-head">
								<i class="account-bind-icon bind-qq-icon"><img alt="" src="images/QQ.png"></i><span
									class="account-bind-name">绑定QQ帐号</span><strong
									class="account-bind-state color-green">已绑定</strong>
							</div>
							
                            
                            <div class="account-bind-body">
								<div class="account-bind-oper">
									<p class="color-gray">绑定后您可以使用QQ帐号登录锦涛宠店</p>
									<p>
										<a onclick="black('Maintain.jsp')"
											class="button-light-medium account-bind-btn">立即绑定</a>
									</p>
								</div>
								<div class="account-bind-sites">
									<span class="bind-logo"><img
										src="images/logo.png"
										width="120" height="50" alt=""></span><i
										class="account-bind-icon bing-process-icon"><img alt="" src="images/bind-logo.png"></i><span
										class="bind-logo"><img
										src="images/logo_qq.gif"
										width="120" height="50" alt=""></span>
								</div>
							</div>
						</div>
						<div class="cb"></div>
						<div class="account-bind J-bind-module account-bind-active">
							<div class="account-bind-head">
								<i class="account-bind-icon bind-wexin-icon"><img alt="" src="images/weixin.png"></i><span
									class="account-bind-name">绑定微信帐号</span><strong
									class="account-bind-state color-orange">未绑定</strong>
							</div>	
							<div class="account-bind-body">
								<div class="account-bind-oper">
									<p class="color-gray">绑定后您可以使用微信帐号登录锦涛宠店</p>
									<p>
										<a onclick="black('Maintain.jsp')"
											class="button-light-medium account-bind-btn">立即绑定</a>
									</p>
								</div>
								<div class="account-bind-sites">
									<span class="bind-logo"><img
										src="images/logo.png"
										width="120" height="50" alt=""></span><i
										class="account-bind-icon bing-process-icon"><img alt="" src="images/bind-logo.png"></i><span
										class="bind-logo"><img
										src="images/logo_wx.gif"
										width="120" height="50" alt=""></span>
								</div>
							</div>
						</div>
						<div class="cb"></div>
					</div>
				</div>
				<!-- 绑定账号 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>