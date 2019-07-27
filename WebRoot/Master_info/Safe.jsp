<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>安全设置</title>
<!-- include css start -->
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Safety.css'>
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
							href="/pet3/SafeAction" class="ps-sd-md-menuName ps-sd-md-current">安全设置</a><a
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main safety fr">
				<!-- 安全设置 已完善 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">安全设置</h6>
					</div>
					<div class="ps-md-bd clearfix">
						<div class="safety-avator fl">
							<img
								src="Master_info/<s:property value="master_table.Head_portrait"/>"
								width="100px" height="100px" alt="">
						</div>
						<div class="safety-basicInfo fl">
							<p class="safety-welcome">
								您好，<em class="color-orange"><s:property
										value="registry.Nickname" /></em>
							</p>
							<s:if test="accountsafe==0">
								<div class="safety-safeLevel">
									<span>账户安全：</span><span class="safety-status-view"> <em></em><em></em><em></em></span><em
										class="color-gray-light">（超弱）</em> <em class="color-orange">建议您尽快完善安全设置，以保险账号及资金安全</em>
								</div>
							</s:if>
							<s:elseif test="accountsafe==1">
								<div class="safety-safeLevel">
									<span>账户安全：</span><span class="safety-status-view"> <em
										class="safety-status-span"></em><em></em><em></em></span><em
										class="color-gray-light">（弱）</em> <em class="color-orange">建议您尽快完善安全设置，以保险账号及资金安全</em>
								</div>
							</s:elseif>
							<s:elseif test="accountsafe==2">
								<div class="safety-safeLevel">
									<span>账户安全：</span><span class="safety-status-view"> <em
										class="safety-status-span"></em><em class="safety-status-span"></em><em></em></span><em
										class="color-gray-light">（中）</em> <em class="color-orange">建议您尽快完善安全设置，以保险账号及资金安全</em>
								</div>
							</s:elseif>
							<s:else>
								<div class="safety-safeLevel">
									<span>账户安全：</span><span class="safety-status-view"> <em
										class="safety-status-span"></em><em class="safety-status-span"></em><em
										class="safety-status-span"></em></span><em class="color-gray-light">（强）</em>
									<em class="color-orange"></em>
								</div>
							</s:else>
						</div>
					</div>
				</div>
				<div class="personal-module safety-module">
					<div class="safety-section clearfix">
						<s:if test="passwordsafe==0">
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/jinggao.png"></i>
							<strong class="safety-name fl">登录密码</strong>
							<div class="safety-status fl">
								<p>
									安全程度：<span class="safety-status-view"><em
										class="safety-status-span"></em><em></em><em></em></span><em
										class="color-gray-light">（弱）</em>
								</p>
							</div>
						</s:if>
						<s:elseif test="passwordsafe==1">
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/jinggao.png"></i>
							<strong class="safety-name fl">登录密码</strong>
							<div class="safety-status fl">
								<p>
									安全程度：<span class="safety-status-view"><em
										class="safety-status-span"></em><em class="safety-status-span"></em><em></em></span><em
										class="color-gray-light">（中）</em>
								</p>
							</div>
						</s:elseif>
						<s:else>
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/zhengque.png"></i>
							<strong class="safety-name fl">登录密码</strong>
							<div class="safety-status fl">
								<p>
									安全程度：<span class="safety-status-view"><em
										class="safety-status-span"></em><em class="safety-status-span"></em><em
										class="safety-status-span"></em></span><em class="color-gray-light">（强）</em>
								</p>
							</div>
						</s:else>
						<div class="safety-operate fl" onclick="black('Master_info/Changepassword.jsp')">
							<a class="color-blue" target="_blank">修改登录密码</a>
						</div>
					</div>
					<div class="safety-section clearfix">
						<s:if test="registry.Mailbox.length()==0">
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/jinggao.png"></i>
							<strong class="safety-name fl"><em class="color-orange">邮箱未验证</em></strong>
							<div class="safety-status fl">
								<p class="color-gray-light">邮箱作为您的登录账号，请务必完成此验证</p>
							</div>
							<div class="safety-operate fl">
								<a href="Master_tableAction"
									class="button-light-medium submitBtn" target="_blank">填写邮箱</a>
							</div>
						</s:if>
						<!-- 已经填写邮箱 -->
						<s:else>
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/zhengque.png"></i>
							<strong class="safety-name fl">邮箱已填写</strong>
							<div class="safety-status fl">
								<p class="color-gray-light">邮箱已经填写</p>
							</div>
							<div class="safety-operate fl">
								<a href="Master_tableAction" class="color-blue" target="_blank">修改邮箱</a>
							</div>
						</s:else>

					</div>
					<div class="safety-section clearfix">
						<i class="icon-ok fl"><img alt=""
							src="Master_info/images/zhengque.png"></i><strong
							class="safety-name fl">手机已绑定</strong>
						<div class="safety-status fl">
							<p class="color-gray-light">
								您绑定的手机：<strong class="color-black"><s:property
										value="master_table.Mobile_phone" /></strong>&nbsp;&nbsp;若已丢失或停用，请立即更换，避免账户被盗
							</p>
						</div>
						<div class="safety-operate fl" onclick="black('Master_info/Maintain.jsp')" >
							<a class="color-blue" target="_blank">修改绑定手机</a>
						</div>
					</div>
					<div class="safety-section clearfix">
						<s:if test="finance.Payment_code==null">
							<i class="icon-warning fl"><img alt=""
								src="Master_info/images/jinggao.png"></i>
							<strong class="safety-name fl"><em class="color-orange">未设置支付密码</em></strong>
							<div class="safety-status fl">
								<p class="color-gray-light">为了支付安全，请立即设置支付密码</p>
							</div>
							<div class="safety-operate fl" onclick="black('Master_info/Changepayment_code.jsp')">
								<a  class="button-light-medium submitBtn"
									target="_blank">设置支付密码</a>
							</div>
						</s:if>
						<s:else>
							<i class="icon-ok fl"><img alt=""
								src="Master_info/images/zhengque.png"></i>
							<strong class="safety-name fl">已设置支付密码</strong>
							<div class="safety-status fl">
								<s:if test="payment_codesafe==0">
									<p>
										安全程度：<span class="safety-status-view"><em
											class="safety-status-span"></em><em></em><em></em></span><em
											class="color-gray-light">（弱）</em>
									</p>
								</s:if>
								<s:elseif test="payment_codesafe==1">
									<p>
										安全程度：<span class="safety-status-view"><em
											class="safety-status-span"></em><em
											class="safety-status-span"></em><em></em></span><em
											class="color-gray-light">（中）</em>
									</p>
								</s:elseif>
								<s:else>
									<p>
										安全程度：<span class="safety-status-view"><em
											class="safety-status-span"></em><em
											class="safety-status-span"></em><em
											class="safety-status-span"></em></span><em class="color-gray-light">（强）</em>
									</p>
								</s:else>
							</div>
							<div class="safety-operate fl" onclick="black('Master_info/Changepayment_code.jsp')">
								<a  class="color-blue" 
									target="_blank">修改支付密码 </a>
							</div>
						</s:else>
					</div>
				</div>
				<!-- 安全设置 已完善 end -->
			</div>
		</div>
	</div>
</body>
</html>
