<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人资料</title>
<!-- include css start -->
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Personal_data.css'>
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
<!-- include css end -->
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
						<!-- 基本资料 start -->
						<div class="ui-tab">
							<div class="ui-tab-head">
								<div class="ui-tab-ctrl fl">
									<a href="#" class="ui-tab-btn ui-tab-cur">基本资料</a><a href="/pet3/Master_tableAction!updateHead_portrait"
										class="ui-tab-btn">修改头像</a>
								</div>
							</div>
							<div class="ui-tab-body">
								<div class="ui-tab-section basicInfo clearfix">
									<form action="Master_tableAction!updatePersonal_data" 
										method="post" id="userInfoForm" class="J-userInfoForm">
										<input type="hidden" id="uniq" name="uniq"
											value="da8981e1632807aefe5c7ddf3642c617" />
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">
												<em class="color-orange">*</em>昵称： <input type="text"
													name="updateprovince" id="updateprovince"
													style="display: none;"> <input type="text"
													name="state" id="state" style="display: none;">
											</div>
											<div class="basicInfo-cell fl">
												<input type="text"
													value="<s:property value="registry.Nickname" />"
													name="registry.Nickname"
													class="input basicInfo-userName fl" style="height:30px">

												<p class="form-error fl"></p>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">
												<em class="color-orange">* </em>性别：
											</div>
											<!-- 性别处理 -->
											<s:radio name="master_table.Sex" list="%{#{'男':'男','女':'女'}}" />
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">
												<i class="icon-mail"></i>邮箱：
											</div>
											<div class="basicInfo-cell fl">
												<input type="text"
													value="<s:property value="registry.Mailbox"/>"
													name="registry.Mailbox" class="input basicInfo-userName fl"
													style="height:30px">
												<p class="form-error fl"></p>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">
												<i class="icon-phone"></i>手机：
											</div>
											<div class="basicInfo-cell fl">
												<p>
													<input type="text"
														value="<s:property value="registry.Mobile_phone"/>"
														name="registry.Mobile_phone"
														class="input basicInfo-userName fl" style="height:30px"
														readonly="readonly"> <span
														class="color-gray-light">（<em class="color-green">已验证</em>）
													</span><a href="" class="color-blue" target="_blank">更改手机</a>
												</p>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">城市：</div>
											<div class="address-form-cell fl">
												<select id="Provinces" class="select_bk"
													name="master_table.Province" onchange="provinces()">
													<option selected>省份</option>
													<s:set name="thisprovince" value="master_table.Province"
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
													name="master_table.City">
													<option selected>城市</option>
													<s:set name="thiscity" value="master_table.City"
														scope="page">
													</s:set>
													<s:iterator value="city" status="status"
														var="city">
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
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">街道地址：</div>
											<div class="address-form-cell fl">
												<input type="text"
													value="<s:property value="master_table.Street_address"/>"
													name="master_table.Street_address"
													class="input basicInfo-address" style="height:30px">
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">职业：</div>
											<div class="basicInfo-cell fl">
												<select name="master_table.Profession"
													class="select basicInfo-career fl">
													<s:if test="master_table.Profession!=null">
														<option
															value="<s:property value="master_table.Profession"/>"
															selected="selected">
															<s:property value="master_table.Profession"/>
								</option>
													</s:if>
													<s:else>
														<option value="请选择职业" selected="selected">
									请选择职业
								</option>
													</s:else>
													<option value="计算机硬件">
									计算机硬件
								</option>
													<option value="计算机软件">
									计算机软件
								</option>
													<option value="IT-管理">
									IT-管理
								</option>
													<option value="IT-品管、技术支持及其它">
									IT-品管、技术支持及其它
								</option>
													<option value="通信技术">
									通信技术
								</option>
													<option value="电子/电器/半导体/仪器仪表">
									电子/电器/半导体/仪器仪表
								</option>
													<option value="销售管理">
									销售管理
								</option>
													<option value="销售人员">
									销售人员
								</option>
													<option value="销售行政及商务">
									销售行政及商务
								</option>
													<option value="客服及技术支持">
									客服及技术支持
								</option>
													<option value="财务/审计/税务">
									财务/审计/税务
								</option>
													<option value="证券/金融/投资">
									证券/金融/投资
								</option>
													<option value="银行">
									银行
								</option>
													<option value="保险">
									保险
								</option>
													<option value="生产/营运">
									生产/营运
								</option>
													<option value="质量/安全管理">
									质量/安全管理
								</option>
													<option value="工程/机械/能源">
									工程/机械/能源
								</option>
													<option value="汽车">
									汽车
								</option>
													<option value="技工">
									技工
								</option>
													<option value="服装/纺织/皮革">
									服装/纺织/皮革
								</option>
													<option value="采购">
									采购
								</option>
													<option value="贸易">
									贸易
								</option>
													<option value="物流/仓储">
									物流/仓储
								</option>
													<option value="生物/制药/医疗器械">
									生物/制药/医疗器械
								</option>
													<option value="化工">
									化工
								</option>
													<option value="医院/医疗/护理">
									医院/医疗/护理
								</option>
													<option value="广告">
									广告
								</option>
													<option value="公关/媒介">
									公关/媒介
								</option>
													<option value="市场/营销">
									市场/营销
								</option>
													<option value="影视/媒体">
									影视/媒体
								</option>
													<option value="写作/出版/印刷">
									写作/出版/印刷
								</option>
													<option value="艺术/设计">
									艺术/设计
								</option>
													<option value="建筑工程">
									建筑工程
								</option>
													<option value="房地产">
									房地产
								</option>
													<option value="物业管理">
									物业管理
								</option>
													<option value="人力资源">
									人力资源
								</option>
													<option value="高级管理">
									高级管理
								</option>
													<option value="行政/后勤">
									行政/后勤
								</option>
													<option value="咨询/顾问">
									咨询/顾问
								</option>
													<option value="律师/法务">
									律师/法务
								</option>
													<option value="教师">
									教师
								</option>
													<option value="科研人员">
									科研人员
								</option>
													<option value="餐饮/娱乐">
									餐饮/娱乐
								</option>
													<option value="酒店/旅游">
									酒店/旅游
								</option>
													<option value="美容/健身">
									美容/健身
								</option>
													<option value="百货/连锁/零售服务">
									百货/连锁/零售服务
								</option>
													<option value="交通运输服务">
									交通运输服务
								</option>
													<option value="保安/家政/其他服务">
									保安/家政/其他服务
								</option>
													<option value="公务员">
									公务员
								</option>
													<option value="翻译">
									翻译
								</option>
													<option value="在校学生">
									在校学生
								</option>
													<option value="储备干部/培训生/实习生">
									储备干部/培训生/实习生
								</option>
													<option value="兼职">
									兼职
								</option>
													<option value="其他">
									其他
								</option>
												</select>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">QQ：</div>
											<div class="basicInfo-cell fl">
												<input type="text"
													value="<s:property value="master_table.QQ"/>"
													name="master_table.QQ" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">个性签名：</div>
											<div class="basicInfo-cell fl">
												<textarea name="master_table.Personalized_signature"
													class="textarea basicInfo-signature"><s:property value="master_table.Personalized_signature"/></textarea>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">喜欢的宠物种类：</div>
											<div class="basicInfo-cell fl">
												<input type="text"
													value="<s:property value="master_table.Interest1"/>"
													name="master_table.Interest1" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
												<input type="text"
													value="<s:property value="master_table.Interest2"/>"
													name="master_table.Interest2" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
												<input type="text"
													value="<s:property value="master_table.Interest3"/>"
													name="master_table.Interest3" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
												<input type="text"
													value="<s:property value="master_table.Interest4"/>"
													name="master_table.Interest4" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
												<input type="text"
													value="<s:property value="master_table.Interest5"/>"
													name="master_table.Interest5" class="input basicInfo-qq fl"
													style="height:30px">
												<p class="form-error fl"></p>
												<span class="color-gray-light fl">（最多可添加5个标签,请输入宠物种类名称）</span>
											</div>
										</div>
										<div class="basicInfo-row clearfix">
											<div class="basicInfo-type fl">&nbsp;</div>
											<div class="basicInfo-cell fl">
												<span class="button-light-medium submitBtn">提交
													<button type="button" onclick="userInfoForm_submit()"></button>
												</span>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- 基本资料 end -->
					</div>
				</div>
				<!-- 个人资料 end -->
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>
