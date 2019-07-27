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
    
    <title>奖品兑换</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" href='Master_info/css/Master_info.css'>
<link rel="stylesheet" href='Master_info/css/Gift.css'>
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
						<a href="FinanceAction!queryAccount" class="ps-sd-md-menuName ">余额</a><a
							href="FinanceAction!queryBeangetBeanList " class="ps-sd-md-menuName ">波奇豆</a><a
							href="FinanceAction!queryCoupon" class="ps-sd-md-menuName">优惠券</a><a
							href="/pet3/Master_info/Couponprize.jsp" class="ps-sd-md-menuName ps-sd-md-current">奖品兑换</a>
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
                    <!-- 我的奖品兑换券 start -->
                    <div class="personal-module">
                        <div class="ps-md-hd clearfix">
                            <h6 class="ps-md-hd-tit fl">我的奖品兑换券</h6>
                        </div>
                        <div class="ps-md-bd gift-list">
                            <table class="ui-table">
                                <colgroup>
                                    <col class="cg-col-1">
                                    <col class="cg-col-2">
                                    <col class="cg-col-3">
                                    <col class="cg-col-4">
                                    <col class="cg-col-auto">
                                </colgroup>
                                <thead>
                                    <tr class="ui-table-head">
                                        <td>兑换券号</td>
                                        <td>面值</td>
                                        <td>需消费金额</td>
                                        <td>生效时间</td>
                                        <td>失效时间</td>
                                        <td>使用说明</td>
                                        <td>使用范围</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="ui-table-row">
                                        <td class="ui-table-cell" colspan="7"><div
                                                class="ui-noData">
                                                <p>暂无可用兑换券！</p>
                                            </div></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 我的奖品兑换券 end -->
                    <!-- 使用兑换券码 start -->
                    <div class="personal-module">
                        <div class="ps-md-hd clearfix">
                            <h6 class="ps-md-hd-tit fl">使用兑换券码</h6>
                        </div>
                        <div class="ps-md-bd gift-search">
                            <form action="" method="post" name="exchangeForm"
                                class="J-exchangeForm">
                                <div class="giftSearch clearfix">
                                    <label class="giftSearch-label fl" for="redemptionCode">请输入兑换券号码：</label><input
                                        type="text"  style="height: 30px;width: 182px"
                                        class="input fl"><span
                                        class="button-light-medium exchangeBtn fl">兑换
                                        <button type="submit"></button>
                                    </span>
                                    <p class="form-error fl"></p>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 使用兑换券码 end -->
                    <!-- 兑换记录 start -->
                    <div class="personal-module">
                        <div class="ps-md-hd clearfix">
                            <h6 class="ps-md-hd-tit fl">兑换记录</h6>
                        </div>
                        <div class="ps-md-bd gift-history">
                            <table class="ui-table">
                                <colgroup>
                                    <col class="cg-col-1">
                                    <col class="cg-col-2">
                                    <col class="cg-col-3">
                                    <col class="cg-col-4">
                                    <col class="cg-col-auto">
                                </colgroup>
                                <thead>
                                    <tr class="ui-table-head">
                                        <td>商品编号</td>
                                        <td>商品信息</td>
                                        <td>获取时间</td>
                                        <td>失效时间</td>
                                        <td>状态</td>
                                        <td>操作</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="ui-table-row">
                                        <td class="ui-table-cell" colspan="5"><div
                                                class="ui-noData">
                                                <p>暂无奖品可兑换！</p>
                                            </div></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 兑换记录 end -->
                </div>
            </div>
        </div>
        <!-- content end -->
    </body>
    </html>