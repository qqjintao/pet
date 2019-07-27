<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人资料</title>
<!-- include css start -->
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Personal_data.css'>
<!-- include css end -->
<script type="text/javascript">
function updateHead_portrait(head_portrait){
	document.getElementById("head_portrait").value=head_portrait;
	document.getElementById("updateHead_portraitForm").submit();
}
function check(){
	    var head_portrait=document.getElementById("head_portrait").value;
	    if(head_portrait!=null){
	    return true;
	    }else{
	    return false;
	    }
	}
</script>
</head>
<body>
	<form action="UplodHead_portraitAction!updateHead_portrait" method="post" id="updateHead_portraitForm" style="display: none;">
	<input type="text" name="head_portrait" id="head_portrait">
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
						<a href="/pet3/Master_tableAction" class="ps-sd-md-menuName ps-sd-md-current">个人资料</a><a
							href="/pet3/SafeAction" class="ps-sd-md-menuName">安全设置</a><a
							href="/pet3/Location_tableAction" class="ps-sd-md-menuName ">收货地址</a><a
							href="/pet3/Master_info/Userbind.jsp" class="ps-sd-md-menuName ">绑定账号</a>
					</dd>
				</dl>
			</div>
			<!-- left end -->
			<div class="personal-main userInfo fr">
				<!-- 个人资料 start -->
				<div class="personal-module">
					<div class="ps-md-hd clearfix">
						<h6 class="ps-md-hd-tit fl">个人资料</h6>
					</div>
					<div class="ps-md-bd">
						<!-- 修改头像 start -->
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a href="/pet3/Master_tableAction" class="ui-tab-btn">基本资料</a><a href="#"
										class="ui-tab-btn ui-tab-cur">修改头像</a>
								</div>
							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section userAvator clearfix">
									<div class="userAvator-avator fl">
										<img  src="Master_info/<s:property value="master_table.Head_portrait"/>" width="100px" height="100px"
											class="J-userAvatorPreview">
									</div>
									<div class="userAvator-section fl">
										<p class="userAvator-head">
											<strong>使用波奇头像：</strong>
										</p>
										<ul class="userAvator-list clearfix">
											<li class="userAvator-item fl J-userAvatorItem " 
												onclick="updateHead_portrait('head_portrait/head1.jpg')"><img
												src="Master_info/head_portrait/head1.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head2.jpg')"><img
												src="Master_info/head_portrait/head2.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head3.jpg')"><img
												src="Master_info/head_portrait/head3.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head4.jpg')"><img
												src="Master_info/head_portrait/head4.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head5.jpg')"><img
												src="Master_info/head_portrait/head5.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head6.jpg')"><img
												src="Master_info/head_portrait/head6.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head7.jpg')"><img
												src="Master_info/head_portrait/head7.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head8.jpg')"><img
												src="Master_info/head_portrait/head8.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head9.jpg')"><img
												src="Master_info/head_portrait/head9.jpg">
												<div class="userAvator-zoom"></div></li>
											<li class="userAvator-item fl J-userAvatorItem "
												onclick="updateHead_portrait('head_portrait/head10.jpg')"><img
												src="Master_info/head_portrait/head10.jpg">
												<div class="userAvator-zoom"></div></li>
										</ul>
										<p class="userAvator-head">
											<strong>上传本地图片：</strong>
										</p>
										<p>
											传一张与爱宠的全家福作为头像吧~<em class="color-gray-light">（文件小于2M，支持图片格式为jpg，png，gif）</em>
										</p>
										<div id="uploadBefore">
											<div class="userInfo-upPreview clearfix">
												<img src="Master_info/<s:property value="master_table.Head_portrait"/>"  width="100px" height="100px">
											</div>
											<div class="userInfo-selectPic clearfix">
												<a
													onclick="document.getElementById('userAvatorUpload').click();"
													class="button-dark-medium darkBtn">选择图片</a>
												<s:if test="#session.error_message!=null">
													<a><s:property value="#session.error_message" />
													</a>
												</s:if>
												<s:else>
													<a>选择图片后保存才能显示</a>
												</s:else>
											</div>
											<div class="uploadAvator-button clearfix">
											<form action="UplodHead_portraitAction" method="post" id="uplodHead_portraitForm" onsubmit="check()"
														enctype="multipart/form-data">
												<div style="display: none;">
														<input type="file" name="upload" id="userAvatorUpload">
												</div>
												<input type="submit" class="button-light-medium J-save"  value="保存">
											</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 修改头像 end -->
					</div>
				</div>
				<!-- 个人资料 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>
