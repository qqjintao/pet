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

<title>商品详细资料</title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/etalage.css">
<script type="text/javascript" src="js/megamenu.js"></script>

<script src="js/jquery.etalage.min.js"></script>
<script src="js/menu_jquery.js"></script>
<script>
	jQuery(document).ready(function($) {
		$('#etalage').etalage({
			thumb_image_width : 430,
			thumb_image_height : 300,
			source_image_width : 1200,
			source_image_height : 1200,
			show_hint : true,
			click_callback : function(image_anchor, instance_id) {
				alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
			}
		});

	});
</script>
<script type="text/javascript">
	function Button_ProductSuitProduct_name(ProductSuitId, ProductId, Subclass_name) {
		location.href = "queryProductDetils_ProductSuitProduct_name?ProductSuitId=" + ProductSuitId + "&ProductId=" + ProductId + "&Subclass_name=" + Subclass_name;
	}
	function queryProductDetilsByProductId(ProductId, Subclass_name) {
		location.href = "queryProductDetilsByProductId?ProductId=" + ProductId + "&Subclass_name=" + Subclass_name;
	}
</script>
</head>
<body>
<div class="top_bg">
		<div class="container">
			<div class="header_top">
				<div class="top_right">
				</div>
				<div class="top_left">
					<h1> 
					</h1>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- header -->
	<div class="header_bg">
		<div class="container">
			<div class="header">
				<div class="head-t">
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png"
							class="img-responsive" alt="" /> </a>
					</div>
					<!-- start header_right -->
					<div class="header_right">
						<div class="rgt-bottom">
							<div class="log">
								<div class="login">
									<div id="loginContainer">
										<a href="Login.jsp" id="loginButton"><span>登录</span></a>
									</div>
								</div>
							</div>
							<div class="reg">
								
							</div>
							<div class="cart box_1">
								<div class="clearfix"></div>
							</div>
							<div class="create_btn">
								<a href="queryShoppingCartView.action">购物车</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="search">
							   
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li><a> </a></li>
					<li><a> </a></li>    
					<li class="active grid"><a class="color1" href="index.jsp">首页  </a></li>
					<li class="grid"><a class="color2" href="Product!queryProductByBroadHeading_name?queryName=狗狗">狗狗</a></li>
					<li><a class="color4" href="Product!queryProductByBroadHeading_name?queryName=喵咪">猫咪</a></li>
					<li><a class="color5" href="Product!queryProductByBroadHeading_name?queryName=小宠">小宠</a></li>
					<li><a class="color6" href="Product!queryProductByBroadHeading_name?queryName=水族&爬虫">水族&爬虫</a></li>
					<li><a class="color7" href="Master_tableAction!userinfo">个人中心</a></li>
					<li><a class="color8" href="ForumAction">我的主页</a></li>
					<li>
                        	<s:if test="#session.registry!=null">
                            <a class="color9" href="Login.jsp">退出登录</a>
                            </s:if>
                            <s:else>
                            <a class="color9" href="Login.jsp">登录</a>
                            </s:else>
                    </li>
				</ul>
			</div>
		</div>
	</div> 
	<div class="container">
		<div class="women_main">
			<!-- start content -->
			<div class="row single">
				<div class="col-md-9 det col-lg-12">
					<div class="single_left">
						<div class="grid images_3_of_2">
							<ul id="etalage">
								<s:iterator value="productPicture" status="stat"
									var="productPictures">
									<li><a> <img class="etalage_thumb_image"
											src="<s:property value="#productPictures.Product_photo" />"
											class="img-responsive" /> <img class="etalage_source_image"
											src="<s:property value="#productPictures.Product_bigphoto" />"
											class="img-responsive" />
									</a></li>
								</s:iterator>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="desc1 span_3_of_2">
							<h3>
								<s:property value="productDetil.ProductProduct_name" />
							</h3>
							<span class="brand">店家名称: <a href="#"><s:property
										value="productDetil.Store_name" /></a></span> <br> <br>
							<div class="price">
								<span class="text">会员价格:</span> <span class="price-new">¥<s:property
										value="productDetil.Member_price" /></span><br> <br> <span
									class="text">市场价格:</span> <span class="price-old">¥<s:property
										value="productDetil.Market_price" /></span> <br> <br> <span
									class="price-tax">税: ¥<s:property
										value="productDetil.Product_tax" /></span><br> <br> <span
									class="price-tax">产品地址：<s:property
										value="productDetil.ProductProduct_until" /></span><br> <br>
								<span class="points"><h5>
										可获得的积分:
										<s:property value="productDetil.Integral" />
									</h5></span><br> <span class="points"><h5>
										所剩数量:
										<s:property value="productDetil.Quantity" />
									</h5></span><br> <span class="points"><h5>
										套装单件重量:
										<s:property value="productDetil.Product_weight" />
									</h5></span><br>
							</div>
							<span class="code">止售时间: <s:property
									value="productDetil.End_time" /></span> <span class="code">是否支持优惠券:<small>
									<s:property value="productDetil.Discount_coupon" />
							</small></span>
							<div class="det_nav1">
								<h4>选择套装 :</h4>
								<div class=" sky-form col col-4">
									<s:iterator value="productDetils_ProductSuitProduct_name"
										status="stat" var="productDetils_ProductSuitProduct_names">
										<ul>
											<li><input type="button"
												style="background:url('images/button_login.png') center center no-repeat;background-size:cover;"
												id="button_ProductSuitProduct_name"
												onclick="Button_ProductSuitProduct_name('<s:property value="#productDetils_ProductSuitProduct_names.ProductSuitId"/>','<s:property value="#productDetils_ProductSuitProduct_names.ProductId"/>'
												,'<s:property value="Subclass_name"/>')"
												value="<s:property value="#productDetils_ProductSuitProduct_names.Product_name"/>"></li>
										</ul>
									</s:iterator>
								</div>
							</div>
							<span class="code">产品促销信息: <s:property
									value="productDetil.ProductSuitProduct_until" /></span><br>
							<button type="button" class="minus">-</button>
							<input type="text" name="orderProduct.OrderProduct_sum" value="1"
								id="OrderProduct_sum" class="am-num-text"
								data-seatProductSuitId="<s:property value="orderProduct.ProductSuitId"/>"
								data-seatStore_name="<s:property value="productDetil.Store_name"/>"
								date-seatProductId="<s:property value="#productDetils_ProductSuitProduct_names.ProductId"/>">
							<button type="button" class="plus">+</button>
							<div class="btn_form">
								<a id="immediatelyBuy">立即购买</a> <a
									id="immediatelyAddOrderProduct">加入购物车</a> <a id="collect">收藏商品</a>
							</div>

						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-bottom1">
						<h6>商品介绍：</h6>
						<p class="prod-desc">
							<s:property value="productDetil.Product_introduce" />
						</p>
					</div>
					<div class="single-bottom2">
						<h6>商品评价：</h6>
						<s:iterator value="productMessagesView" status="stat"
							var="productMessagesViews">
							<div class="product">
								<div class="product-desc">
									<div class="product-img">
										<img
											src="Master_info/<s:property value="#productMessagesViews.Head_portrait"/>"
											class="img-responsive " alt="" />
										<center>
											<s:property value="#productMessagesViews.Nickname" />
										</center>
									</div>
									<div class="prod1-desc">
										<h5>
											<a class="product_link"><s:property
													value="#productMessagesViews.ProductMessages_title" /></a>
										</h5>
										<p class="product_descr">
											<s:property
												value="#productMessagesViews.ProductMessages_context" />
										</p>

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="product_price">
									<span class="price-access"><p class="product_descr">
											<s:property
												value="#productMessagesViews.ProductMessages_time" />
										</p> </span> <span>评分</span>
									<button class="button1">
										<span><p class="product_descr">
												<s:property
													value="#productMessagesViews.ProductMessages_code" /></span>
									</button>
								</div>
								<div class="clearfix"></div>
							</div>
						</s:iterator>

						<div class="single-bottom1">
							<h6>售后服务及店家基本资料：</h6>
							<p class="prod-desc">店家基本信息：
							<table border="1">
								<tbody>
									<tr>
										<td>店铺名称</td>
										<td>店铺商标</td>
										<td>商标地址</td>
										<td>店铺商家介绍</td>
										<td>店铺付款说明</td>
										<td>配送说明</td>
										<td>操作</td>
									</tr>
									<tr>
										<td><s:property value="store.Store_name" /></td>
										<td><img alt="商标"
											src="<s:property value="store.Store_logo"/>"></td>
										<td><s:property value="store.Store_brand" /></td>
										<td><s:property value="store.Store_introduce" /></td>
										<td><s:property value="store.Payment_explain" /></td>
										<td><s:property value="store.Distribution_explain" /></td>
										<td><input type="button" value="收藏店家" id="CollectStore"
											data-seatStore_code="<s:property value="store.Store_code"/>"></td>
									</tr>
								</tbody>
							</table>
							店家客服：
							<table border="1">
								<tbody>
									<tr>
										<td>客服QQ</td>
										<td>QQ状态</td>
										<td>备注</td>
									</tr>
									<s:iterator value="serviceQQ" status="stat" var="serviceQQ">
										<tr>
											<td><s:property value="#serviceQQ.QQ_number" /></td>
											<s:if test="#serviceQQ.QQ_state">
												<td>在线</td>
											</s:if>
											<s:else>
												<td>离线</td>
											</s:else>
											<td><s:property value="#serviceQQ.Remark" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
							店家公告：
							<table border="1">
								<tbody>
									<tr>
										<td>公告标题</td>
										<td>公告内容</td>
										<td>公告发布时间</td>
									</tr>
									<s:iterator value="stroeAnnouncement" status="stat"
										var="stroeAnnouncement">
										<tr>
											<s:if test="#stroeAnnouncement.Announcement_state==1">
												<td><s:property
														value="#stroeAnnouncement.Announcement_tile" /></td>
												<td><s:property
														value="#stroeAnnouncement.Announcement_content" /></td>
												<td><s:property
														value="#stroeAnnouncement.Announcement_time" /></td>
											</s:if>
										</tr>
									</s:iterator>
								</tbody>
							</table>
							</p>
						</div>
						<div class="single-bottom1">
							<h6>购买记录：</h6>
							<p class="prod-desc">
							<table width="100%" border="0">
								<tbody>
									<tr>
										<td>购买用户</td>
										<td>购买数量</td>
										<td>规格</td>
										<td>购买时间</td>
									</tr>
									<s:iterator value="indentProductView" status="st"
										var="indentProductViews">
										<tr>
											<td><s:property value="#indentProductViews.Mobile_phone" /></td>
											<td><s:property
													value="#indentProductViews.Product_number" /></td>
											<td><s:property value="#indentProductViews.Product_name" /></td>
											<td><s:property value="#indentProductViews.Indent_time4" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
							</p>
						</div>

						<div class="single-bottom2">
							<h6>类似产品</h6>
							<s:iterator value="browse_products" status="st"
								var="browse_product">
								<div class="product">
									<div class="product-desc">
										<div class="product-img">
											<a
												href="javascript:queryProductDetilsByProductId('<s:property value="#browse_product.Product_code"/>','<s:property value="#browse_product.Subclass_name"/>')">
												<img
												src="<s:property value="#browse_product.Product_photo" />"
												class="img-responsive " alt="" />
											</a>
										</div>
										<div class="prod1-desc">
											<h5>
												<a class="product_link" href="#"><s:property
														value="#browse_product.Product_name" /></a>
											</h5>
											<p class="product_descr">
												销量：
												<s:property value="#browse_product.Sales" />
											</p>
											<br>
											<p class="product_descr">
												评价数量：
												<s:property value="#browse_product.Evaluate" />
											</p>
											<div class="item_add"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="product_price">
										<span class="price-access">会员价 ¥ <s:property
												value="#browse_product.Member_price" /></span>
										<div class="item_add">
											<span class="item_price"><a
												href="javascript:queryProductDetilsByProductId('<s:property value="#browse_product.Product_code"/>','<s:property value="#browse_product.Subclass_name"/>')">点击查看</a></span>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</s:iterator>
						</div>
					</div>
				</div>
			</div>
			<!-- end content -->
		</div>
	</div>
	<script>
		$(function() { //立即加入购物车
			$("#immediatelyAddOrderProduct").click(function() {
				var OrderProduct_sum = document.getElementById("OrderProduct_sum").value;
				var ProductSuitId = $(this).parent().parent().find('#OrderProduct_sum').attr("data-seatProductSuitId");
				var Store_name = $(this).parent().parent().find('#OrderProduct_sum').attr("data-seatStore_name");
				$.ajax({
					type : 'post',
					url : 'OrderProductAction!immediatelyAddOrderProduct',
					data : {
						productSuitId : ProductSuitId,
						store_name : Store_name,
						orderProduct_sum : OrderProduct_sum,
					},
					dataType : 'text',
					anysc : true,
					success : function() {
						alert("立即加入购物车成功！");
					},
					error : function() {
						alert("立即加入购物车成功！");
					}
				});
			});
		});
		$(function() {
			$("#immediatelyBuy").click(function() {
				var OrderProduct_sum = document.getElementById("OrderProduct_sum").value;
				var ProductSuitId = $(this).parent().parent().find('#OrderProduct_sum').attr("data-seatProductSuitId");
				var Store_name = $(this).parent().parent().find('#OrderProduct_sum').attr("data-seatStore_name");
				$.ajax({
					type : 'post',
					url : 'OrderProductAction!immediatelyAddOrderProduct',
					data : {
						productSuitId : ProductSuitId,
						store_name : Store_name,
						orderProduct_sum : OrderProduct_sum,
					},
					dataType : 'text',
					anysc : true,
					success : function() {},
					error : function() {}
				});
				window.open('/pet3/queryShoppingCartView.action');
			});
		});
		$(function() { //立即加入收藏
			$("#collect").click(function() {
				var Code = $(this).parent().parent().find('#OrderProduct_sum').attr("date-seatProductId");
				$.ajax({
					type : 'post',
					url : 'CollectAction!addCollect1',
					data : {
						code : Code,
					},
					dataType : 'text',
					anysc : true,
					success : function() {
						alert("加入收藏成功！");
					},
					error : function() {
						alert("加入收藏成功！");
					}
				});
			});
		});
		//收藏店家
		$(function() { //立即加入收藏
			$("#CollectStore").click(function() {
				var Code = $(this).attr("data-seatStore_code");
				$.ajax({
					type : 'post',
					url : 'CollectAction!addCollect3',
					data : {
						code : Code,
					},
					dataType : 'text',
					anysc : true,
					success : function() {
						alert("加入收藏成功！");
					},
					error : function() {
						alert("加入收藏成功！");
					}
				});
			});
		});
		// 数量减 
		$(".minus").click(function() {
			var t = $(this).parent().find('.am-num-text');
			var id = $(this).parent().find('.am-num-text').attr("data-seatID");
			t.val(parseInt(t.val()) - 1);
			if (t.val() <= 1) {
				t.val(1);
			}
		});
		// 数量加 
		$(".plus").click(function() {
			var t = $(this).parent().find('.am-num-text');
			var id = $(this).parent().find('.am-num-text').attr("data-seatID");
			t.val(parseInt(t.val()) + 1);
			if (t.val() <= 1) {
				t.val(1);
			}
		});
	</script>
</body>
</html>
