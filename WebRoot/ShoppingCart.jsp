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

<title>我的购物车</title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->

<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<style>
.shop-total, .all-total {
	height: 50px;
	line-height: 50px;
	font-weight: bold;
	color: #f00;
	float: left;
}

.goods-check {
	width: 25px;
	height: 25px;
	margin-top: 5px;
}
</style>
<script type="text/javascript">
	function deleteShoppingCart(OrderProduct_code) {
		document.getElementById("deleteOrderProduct_code").value = OrderProduct_code;
		document.getElementById("deleteShoppingCart").submit();

	}
</script>
</head>

<body>
	<!-- 隱藏表單  用於購物車商品的刪除-->
	<form action="queryShoppingCartView!deleteShoppingCart"
		id="deleteShoppingCart" method="post" style="display: none;">
		<input type="text" id="deleteOrderProduct_code"
			name="orderProduct.OrderProduct_code">
	</form>
	<!--  -->
	<jsp:include page="Product_Header.jsp"></jsp:include>
	<div class="container">
		<div class="check">
			<div class="col-md-3 cart-total">
				<a class="continue" href="#">继续购物</a>
				<div class="price-details">
					<h3>账单明细</h3>
					<span>总计：</span> <span class="total1" id="AllTotal">0.00</span> <span>重量总计：</span>
					<span class="total1" id="Product_weight1">0.00</span> <span>商品税费：</span>
					<span class="total1" id="Product_tax1">0.00</span> <span>可得到的积分总和：</span>
					<span class="total1" id="Integral2">0.00</span> <span>优惠券抵扣金额：</span>
					<span class="total1" id="Discount_coupon1">0.00</span> <span>积分抵扣金额：</span>
					<span class="total1" id="Integral1">0.00</span> <span>快递费用</span>
					<span class="total1" id="Deliverycosts1">0.00</span>
					<div class="clearfix"></div>
				</div>
				<ul class="total_price">
					<li class="last_price">
						<h4>合计:</h4>
					</li>
					<li class="shop-total-amount" id="AllTotals">0.00</li>
				</ul>
				<a class="order" onclick="Payment()">立即付款</a>
				<div class="total-item">
					<h3>我的优积分</h3>
					积&nbsp;&nbsp;分: <label id="Integral"><s:property
							value="finance.Integral" /></label> <input type="button" value="使用"
						id="Integralbutton">
					<h3>我的优惠券</h3>
					优惠券: <label id="Discount_coupon"><s:property
							value="finance.Discount_coupon" /></label> <input type="button"
						value="使用" id="Discount_couponbutton">
				</div>
				<!-- 全选 -->
				<a class="order"
					onclick="document.getElementById('AllCheck').click();"> <input
					type="checkbox" class="goods-check" id="AllCheck"
					style="display: none;">全选
				</a>
				<!-- 选择配送方式-->
				<a class="order">选择快递</a>
				<table border="1">
					<tbody>
						<s:iterator value="shoppingCartViewSubbranch" status="status"
							var="shoppingCartViewSubbranchs">
							<tr>
								<td>店铺名称：</td>
								<td><s:property
										value="#shoppingCartViewSubbranchs.Store_name" /></td>
								<td>快递价格：</td>
								<td>说明：</td>
								<td>商家配送说明：</td>
							</tr>
							<s:iterator value="postalServiceViews" status="status"
								var="postalServiceViewss">
								<s:if
									test="#postalServiceViewss.Store_name==#shoppingCartViewSubbranchs.Store_name">
									<tr>
										<td><input type="radio" checked="checked" onchange="TotalPrice();"
											name="<s:property value="#shoppingCartViewSubbranchs.Store_name" />"
											value="<s:property value="#postalServiceViewss.Postal_code"/>"
											data-seatPrice="<s:property value="#postalServiceViewss.Price"/>"></td>
										<td><s:property value="#postalServiceViewss.Postal_name" /></td>
										<td><s:property value="#postalServiceViewss.Price" /></td>
										<td><s:property value="#postalServiceViewss.Explain" /></td>
										<td><s:property
												value="#postalServiceViewss.Distribution_explain" /></td>
									</tr>
								</s:if>
							</s:iterator>
						</s:iterator>
					</tbody>
				</table>
				<!-- 选择支付方式-->
				<a class="order">支付方式</a>
				<table border="0">
					<tbody>
						<s:iterator value="paymentService" status="status"
							var="paymentServices">
							<tr>
								<td><input type="radio" name="Payment_name" checked="checked" value="<s:property
										value="#paymentServices.Payment_code" />"> <s:property
										value="#paymentServices.Payment_name" /></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
				<!-- 选择送货地址-->
				<a class="order">选择送货地址</a>
				<table border="1">
					<tbody>
						<tr>
							<td>&nbsp;</td>
							<td>收货人姓名：</td>
							<td>收货详细地址</td>
							<td>手机号码：</td>
							<td>固定电话：</td>
							<td>邮政编号：</td>
						</tr>
						<s:iterator value="location_tables" status="status"
							var="location_tables">
							<s:if test="#location_tables.Address_code==1">
								<tr>
									<td><input type="radio" name="location_tables"
										value="<s:property value="#location_tables.id"/>"
										checked="checked"></td>
									<td><s:property value="#location_tables.Name" /></td>
									<td><s:property value="#location_tables.Province" /> <s:property
											value="#location_tables.City" /> <s:property
											value="#location_tables.Street" /></td>
									<td><s:property value="#location_tables.Phone" /></td>
									<td><s:property
											value="#location_tables.Fixedline_telephone" /></td>
									<td><s:property value="#location_tables.Zip_code" /></td>
								</tr>
							</s:if>
							<s:else>
								<tr>
									<td><input type="radio" name="location_tables"
										value="<s:property value="#location_tables.id"/>"></td>
									<td><s:property value="#location_tables.Name" /></td>
									<td><s:property value="#location_tables.Province" /> <s:property
											value="#location_tables.City" /> <s:property
											value="#location_tables.Street" /></td>
									<td><s:property value="#location_tables.Phone" /></td>
									<td><s:property
											value="#location_tables.Fixedline_telephone" /></td>
									<td><s:property value="#location_tables.Zip_code" /></td>
								</tr>
							</s:else>
						</s:iterator>
					</tbody>
				</table>
			</div>
			<div class="col-md-9 cart-items">
				<h1>我的购物车</h1>
				<s:iterator value="shoppingCartViewSubbranch" status="status"
					var="shoppingCartViewSubbranchs">
					<s:if test="#status.first">
						<div class="one-shop">
							<s:iterator value="shoppingCartView" status="st"
								var="shoppingCartViews">
								<s:if test="#st.index<#shoppingCartViewSubbranchs.sum">
									<div class="cart-header">
										<div class="one-goods">
											<div class="goods-msg">
												<div class="close1"
													onclick="deleteShoppingCart(<s:property value="#shoppingCartViews.OrderProduct_code"/>)"></div>
												<div>
													<input type="checkbox" class="goods-check GoodsCheck"
														data-seatID="<s:property value="#shoppingCartViews.OrderProduct_code"/>"
														data-seatStoreName="<s:property value="#shoppingCartViews.Store_name"/>">
												</div>

												<div class="cart-sec simpleCart_shelfItem">
													<div class="cart-item cyc">
														<img
															src="<s:property value="#shoppingCartViews.Product_photo"/>"
															class="img-responsive" alt="" />
													</div>
													<div class="cart-item-info">
														<h3>
															<a href="#">产品名称：<s:property
																	value="#shoppingCartViews.Product_name" /></a><span>套装:<s:property
																	value="#shoppingCartViews.ProductSuit_name" /></span> <span>始发城市:<s:property
																	value="#shoppingCartViews.Product_until" /></span>
														</h3>
														<ul class="qty">
															<li><p>
																	数量 :
																	<button type="button" class="minus">-</button>
																	<input type="text" class="am-num-text"
																		value="<s:property value='#shoppingCartViews.OrderProduct_sum'/>"
																		data-seatID="<s:property value="#shoppingCartViews.OrderProduct_code"/>" />
																	<button type="button" class="plus">+</button>
																</p></li>
															<li><p>
																	重量 :<span id="Product_weight"><s:property
																			value="#shoppingCartViews.Product_weight" /></span>
																</p></li>
														</ul>

														<div class="delivery">
															<p>
																会员单件物品价格 ：￥<span class="shop-total-amount GoodsPrice"><font
																	color="#ff0000"><s:property
																			value="#shoppingCartViews.Member_price" /></font></span>
															</p>
															<span>税：<span id="Product_tax"><s:property
																		value="#shoppingCartViews.Product_tax" /></span></span>
															<div class="clearfix"></div>
															<p>
																店家名称 :
																<s:property value="#shoppingCartViews.Store_name" />
															</p>
															<span>可获得积分：<span id="Integral"><s:property
																		value="#shoppingCartViews.Integral" /></span></span>
														</div>
													</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</s:if>
								<s:else>
									<s:set name="first" value="#shoppingCartViewSubbranchs.sum"
										scope="page"></s:set>
								</s:else>
							</s:iterator>
							<!-- 店铺合计 -->
							<div class="shop-total">
								<label> <input type="checkbox"
									class="goods-check ShopCheck">店铺全选
								</label>
								<p>
									<s:property value="#shoppingCartViewSubbranchs.Store_name" />
									合计：￥<span class="shop-total-amount ShopTotal">0</span>
								</p>
							</div>
						</div>
						<div class="clearfix"></div>
						<br>
						<h1></h1>
						<br>
					</s:if>

					<s:else>
						<div class="one-shop">
							<s:set name="last"
								value="#attr.first+shoppingCartViewSubbranch.get(#status.index).sum"
								scope="page"></s:set>
							<s:iterator value="shoppingCartView" status="st"
								var="shoppingCartViews">
								<s:if test="#st.index<#attr.first">
									<!-- 比较 -->
								</s:if>
								<s:elseif
									test="#attr.first <= #st.index && #st.index<#attr.last">
									<div class="cart-header">
										<div class="one-goods">
											<div class="goods-msg">
												<div class="close1"
													onclick="deleteShoppingCart(<s:property value="#shoppingCartViews.OrderProduct_code"/>)"></div>

												<div>
													<input type="checkbox" class="goods-check GoodsCheck"
														data-seatID="<s:property value="#shoppingCartViews.OrderProduct_code"/>"
														data-seatStoreName="<s:property value="#shoppingCartViews.Store_name"/>">
												</div>

												<div class="cart-sec simpleCart_shelfItem">
													<div class="cart-item cyc">
														<img
															src="<s:property value="#shoppingCartViews.Product_photo"/>"
															class="img-responsive" alt="" />
													</div>
													<div class="cart-item-info">
														<h3>
															<a href="#">产品名称：<s:property
																	value="#shoppingCartViews.Product_name" /></a><span>套装:<s:property
																	value="#shoppingCartViews.ProductSuit_name" /></span> <span>始发城市:<s:property
																	value="#shoppingCartViews.Product_until" /></span>
														</h3>
														<ul class="qty">
															<li><p>
																	数量 :
																	<button type="button" class="minus">-</button>
																	<input type="text" class="am-num-text"
																		value="<s:property value='#shoppingCartViews.OrderProduct_sum'/>"
																		data-seatID="<s:property value="#shoppingCartViews.OrderProduct_code"/>" />
																	<button type="button" class="plus">+</button>
																</p></li>
															<li><p>
																	重量 : <span id="Product_weight"><s:property
																			value="#shoppingCartViews.Product_weight" /></span>
																</p></li>
														</ul>

														<div class="delivery">
															<p>
																会员单件物品价格 ：￥<span class="shop-total-amount GoodsPrice"><font
																	color="#ff0000"><s:property
																			value="#shoppingCartViews.Member_price" /></font></span>
															</p>
															<span>税：<span id="Product_tax"><s:property
																		value="#shoppingCartViews.Product_tax" /></span></span>
															<div class="clearfix"></div>
															<p>
																店家名称 :
																<s:property value="#shoppingCartViews.Store_name" />
															</p>
															<span>可获得积分：<span id="Integral"><s:property
																		value="#shoppingCartViews.Integral" /></span></span>
														</div>
													</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</s:elseif>
								<s:elseif test="#st.index==#attr.last">
									<s:set name="first" value="#attr.last" scope="page"></s:set>
								</s:elseif>
							</s:iterator>
							<!-- 店铺合计 -->
							<div class="shop-total">
								<label> <input type="checkbox"
									class="goods-check ShopCheck">店铺全选
								</label>
								<p>
									<s:property value="#shoppingCartViewSubbranchs.Store_name" />
									合计：￥<span class="shop-total-amount ShopTotal">0</span>
								</p>
							</div>
						</div>
						<div class="clearfix"></div>
						<br>
						<h1></h1>
						<br>
					</s:else>
				</s:iterator>
			</div>
		</div>
	</div>
	<script src="js/shoppingCart.js"> </script>
	<script>
	//我的积分使用
		$(function() {
		$("#Integralbutton").click(function() {
			var price = parseFloat($(this).parents().find("#Integral").text()); //得到商品的单价 
			$("#Integral1").text(price.toFixed(2));
			var newprice=0;
			$("#Integral").text(newprice.toFixed(2));
			document.getElementById("Integralbutton").style.display = "none";
			TotalPrice();
		});

	});
	//我的优惠券使用
	$(function() {
		$("#Discount_couponbutton").click(function() {
			var price = parseFloat($(this).parents().find("#Discount_coupon").text()); //得到商品的单价 
			$("#Discount_coupon1").text(price.toFixed(2));
			var newprice=0;
			$("#Discount_coupon").text(newprice.toFixed(2));
			document.getElementById("Discount_couponbutton").style.display = "none";
			TotalPrice();
		});

	});
	
	$(".am-num-text").change(function(){
  			var t = $(this).parent().find('.am-num-text');
			var id = $(this).parent().find('.am-num-text').attr("data-seatID");	
			t.val(parseInt(t.val()));
			if (t.val() <= 1) {
				t.val(1);
			} 
			TotalPrice();   
			$.ajax({
				type : 'post',
				url : 'queryShoppingCartView!updateOrderProduct_sum',
				data : {
					orderProduct_sum : parseInt(t.val()),
					orderProduct_code: id
				},
				dataType : 'text',
				anysc : true,
				success : function() {

				},
				error : function() {

				}
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
			TotalPrice();   
			$.ajax({
				type : 'post',
				url : 'queryShoppingCartView!updateOrderProduct_sum',
				data : {
					orderProduct_sum : parseInt(t.val()),
					orderProduct_code: id
				},
				dataType : 'text',
				anysc : true,
				success : function() {

				},
				error : function() {

				}
			});
		});
		// 数量加 
		$(".plus").click(function() {
			var t = $(this).parent().find('.am-num-text');
			var id = $(this).parent().find('.am-num-text').attr("data-seatID");
			t.val(parseInt(t.val()) + 1);
			if (t.val() <= 1) {
				t.val(1);
			}
			TotalPrice();
			$.ajax({
				type : 'post',
				url : 'queryShoppingCartView!updateOrderProduct_sum',
				data : {
					orderProduct_sum : parseInt(t.val()),
					orderProduct_code: id
				},
				dataType : 'text',
				anysc : true,
				success : function() {

				},
				error : function() {

				}
			});
		});
		// 点击商品按钮 
		$(".GoodsCheck").click(function() {
			var goods = $(this).closest(".one-shop").find(".GoodsCheck"); //获取本店铺的所有商品 
			var goodsC = $(this).closest(".one-shop").find(".GoodsCheck:checked"); //获取本店铺所有被选中的商品 
			var Shops = $(this).closest(".one-shop").find(".ShopCheck"); //获取本店铺的全选按钮 
			if (goods.length == goodsC.length) { //如果选中的商品等于所有商品 
				Shops.prop('checked', true); //店铺全选按钮被选中 
				if ($(".ShopCheck").length == $(".ShopCheck:checked").length) { //如果店铺被选中的数量等于所有店铺的数量 
					$("#AllCheck").prop('checked', true); //全选按钮被选中 
					TotalPrice();
				} else {
					$("#AllCheck").prop('checked', false); //else全选按钮不被选中 
					TotalPrice();
				}
			} else { //如果选中的商品不等于所有商品 
				Shops.prop('checked', false); //店铺全选按钮不被选中 
				$("#AllCheck").prop('checked', false); //全选按钮也不被选中 
				// 计算 
				TotalPrice();
			// 计算 
			}
		});
		// 点击店铺按钮 
		$(".ShopCheck").change(function() {
			if ($(this).prop("checked") == true) { //如果店铺按钮被选中 
	
				$(this).parents(".one-shop").find(".goods-check").prop('checked', true); //店铺内的所有商品按钮也被选中 
				if ($(".ShopCheck").length == $(".ShopCheck:checked").length) { //如果店铺被选中的数量等于所有店铺的数量 
					$("#AllCheck").prop('checked', true); //全选按钮被选中 
					TotalPrice();
				} else {
					$("#AllCheck").prop('checked', false); //else全选按钮不被选中 
					TotalPrice();
				}
			} else { //如果店铺按钮不被选中 
				$(this).parents(".one-shop").find(".goods-check").prop('checked', false); //店铺内的所有商品也不被全选 
				$("#AllCheck").prop('checked', false); //全选按钮也不被选中 
				TotalPrice();
			}
		});
		// 点击全选按钮 
		$("#AllCheck").click(function() {
			if ($(this).prop("checked") == true) { //如果全选按钮被选中 
				$(".goods-check").prop('checked', true); //所有按钮都被选中 
				TotalPrice();
			} else {
				$(".goods-check").prop('checked', false); //else所有按钮不全选 
				TotalPrice();
			}
			$(".ShopCheck").change(); //执行店铺全选的操作 
		});
	
		function TotalPrice() {
			var allprice = 0; //总价 
			var weighttotal = 0;//店铺重量总价
			var taxtotal=0;//税总和
			var integraltotal=0;//积分总和
			var Storename;//店铺名称
			var Deliverycosts=0;//快递费用
			var Storenames= new Array();
			$("#Deliverycosts1").text(Deliverycosts);
			$(".one-shop").each(function() { //循环每个店铺 
				var oprice = 0; //店铺总价 
				$(this).find(".GoodsCheck").each(function() { //循环店铺里面的商品 
					if ($(this).is(":checked")) { //如果该商品被选中 
						var num = parseInt($(this).parents(".one-goods").find(".am-num-text").val()); //得到商品的数量 
						var price = parseFloat($(this).parents(".one-goods").find(".GoodsPrice").text()); //得到商品的单价 
						var product_weight =  parseFloat($(this).parents(".one-goods").find("#Product_weight").text()); //得到商品的重量
						var product_tax =  parseFloat($(this).parents(".one-goods").find("#Product_tax").text()); //得到商品的税
						var integral =  parseFloat($(this).parents(".one-goods").find("#Integral").text()); //得到商品的积分
						var total = price * num; //计算单个商品的总价 
						var product_weighttotal=product_weight* num;//计算单个商品的重量
						var product_taxtotal=product_tax*num;//计算税总和
						var integrals=integral*num;//计算积分总和
						oprice += total; //计算该店铺的总价 
						weighttotal +=product_weighttotal;//计算该店铺的重量总和 
						taxtotal +=product_taxtotal;
						integraltotal+=integrals;
						Storename= $(this).attr("data-seatStoreName");   
						if ($.inArray(Storename, Storenames) == -1) {
							Storenames.push(Storename);
						}
					}
					$(this).closest(".one-shop").find(".ShopTotal").text(oprice.toFixed(2)); //显示被选中商品的店铺总价 
				});
				var oneprice = parseFloat($(this).find(".ShopTotal").text()); //得到每个店铺的总价 
				allprice += oneprice; //计算所有店铺的总价 		
			});  
			for(var i=0;i<Storenames.length;i++){	
            Deliverycosts=Deliverycosts+parseFloat($('input[name="'+Storenames[i]+'"]:checked').attr("data-seatPrice"));
       		}
			var Integralprice=parseFloat($("#Integral1").text());//积分抵消
			var Discount_couponprice=parseFloat($("#Discount_coupon1").text());//优惠券抵消
			allprices = allprice-Integralprice ;//抵消积分
			allprices = allprices-Discount_couponprice ;//抵消优惠券
			allprices = allprices+taxtotal;//增加税
			allprices = allprices+Deliverycosts;//增加快递费用
			$("#Product_weight1").text(weighttotal.toFixed(2)); //输出重量全部总价 
			$("#Product_tax1").text(taxtotal.toFixed(2)); //输出税全部总价 
			$("#Integral2").text(integraltotal.toFixed(2)); //输出积分全部总价 
			$("#Deliverycosts1").text(Deliverycosts.toFixed(2)); //输出快递费用全部总价 
			$("#AllTotal").text(allprice.toFixed(2)); //输出全部总价 
			$("#AllTotals").text(allprices.toFixed(2)); //输出全部总价 
		}
		function Payment() {
			var a = new Array(); //所有购物车编号
			var b = new Array(); //店铺名称
			var c = new Array(); //店铺对应数量
			var e = new Array(); //店铺对应快递的钱
			var f = new Array(); //每家店铺的对应钱
			var g = new Array(); //店铺对应快递的编号
			var Integral=$("#Integral1").text(); //使用的积分
			var Integral2=$("#Integral2").text();//即将可获得的积分总计
			var Discount_coupon=$("#Discount_coupon1").text(); //使用的优惠券
			var totals=$("#AllTotals").text(); 
			var Payment_code=parseInt($('input:radio[name="Payment_name"]:checked').val())//店铺对应支付的编号
			var Location_tableId=parseInt($('input:radio[name="location_tables"]:checked').val())//收货地址的编号
			var Storename;//店铺名称
			var Storenames= new Array();
			var i = 0;
			$(".one-shop").each(function() { //循环每个店铺 
			var oprice = 0; //店铺总价 
				$(this).find(".GoodsCheck").each(function() { //循环店铺里面的商品 
					if ($(this).is(":checked")) { //如果该商品被选中  
						var id = $(this).attr("data-seatID");	
						var name = $(this).attr("data-seatStoreName");
						var num = parseInt($(this).parents(".one-goods").find(".am-num-text").val()); //得到商品的数量 
						var price = parseFloat($(this).parents(".one-goods").find(".GoodsPrice").text()); //得到商品的单价 
						var total = price * num; //计算单个商品的总价 
						oprice += total; //计算该店铺的总价 
						a.push(id);
						Storename= $(this).attr("data-seatStoreName");   
						if ($.inArray(Storename, Storenames) == -1) {
							Storenames.push(Storename);
						}
						if ($.inArray(name, b) == -1) {
							b.push(name);
							i++;
						} else {
							i++;
						}
					}
				});
				f.push(oprice);
				c.push(i);
				i = 0;
			});
			for(var i=0;i<Storenames.length;i++){
	            e.push(parseFloat($('input[name="'+Storenames[i]+'"]:checked').attr("data-seatPrice")));
	            g.push(parseFloat($('input:radio[name="'+Storenames[i]+'"]:checked').val()));
	       	}
			if (a.length <= 0 || totals <=0) {
				alert("立即付款失败，请选择商品或者合计＞0");
			} else {
			//alert(a.toString());
			//alert(b.toString());
			//alert(c.toString());
			//alert(f.toString());
			//alert(g.toString());
			//alert(Integral.toString());
			//alert(Discount_coupon.toString());
			//alert(Integral2.toString());
			//alert(Payment_code.toString());
			//alert(Location_tableId.toString());
					$.ajax({
						type : 'post',
						url : 'queryShoppingCartView!account',
						data : {
							"orderProduct_codes" : a,
							"store_names": b,
							"store_sum": c,
							"postal_totals": e,
							"store_totals": f,
							"postal_codes": g,
							"useIntegral": Integral,
							"useDiscount_coupon": Discount_coupon,
							"getIntegral": Integral2,
							"payment_code": Payment_code,
							"location_tableId": Location_tableId
						},
						dataType : 'json',
						anysc : true,
						traditional: true,
						success : function() {
							alert("下单成功！");
							window.location.reload();
						},
						error : function() {
							alert("下单成功！");
							window.location.reload();
						}
					});
			}
	
		}
	</script>
</body>
</html>
