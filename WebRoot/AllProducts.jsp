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

<title>My JSP 'AllProducts.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>
	<div class="container">
		<div class="women_main">
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
									<div class="reg">
										<a href="Login.jsp">登录</a>
									</div>
									<div class="cart box_1">
										<a href="checkout.html">
											<h3>
												<span class="simpleCart_total">$0.00</span> (<span
													id="simpleCart_quantity" class="simpleCart_quantity">0</span>
												items)<img src="images/bag.png" alt="">
											</h3>
										</a>
										<p>
											<a href="javascript:;" class="simpleCart_empty">(清空购物车)</a>
										</p>
										<div class="clearfix"></div>
									</div>
									<div class="create_btn">
										<a href="checkout.html">购物车</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="search">
									<form>
										<input type="text" value="" placeholder="search..."> <input
											type="submit" value="">
									</form>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- start sidebar -->
			<div class="col-md-3 s-d">
				<div class="w_sidebar">
					<div class="w_nav1">
						<h4>小类</h4>
						<ul>
							<li><a href="">women</a></li>
							<li><a href="#">new arrivals</a></li>
							<li><a href="#">trends</a></li>
							<li><a href="#">boys</a></li>
							<li><a href="#">girls</a></li>
							<li><a href="#">sale</a></li>
						</ul>
					</div>
					<h3>filter by</h3>
					<section class="sky-form">
					<h4>catogories</h4>
					<div class="row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>kurtas</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>kutis</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>churidar kurta</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>printed sari</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>biba</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
								sari</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>fashion sari</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
								sari</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>fashion sari</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
								sari</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>fashion sari</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion
								sari</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>fashion sari</label>
						</div>
					</div>
					</section>
					<section class="sky-form">
					<h4>brand</h4>
					<div class="row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>shree</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>biba</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>vishud</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>amari</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>biba</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>biba</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Anouk</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>biba</label>
						</div>
					</div>
					</section>
					<section class="sky-form">
					<h4>colour</h4>
					<ul class="w_nav2">
						<li><a class="color1" href="#"></a></li>
						<li><a class="color2" href="#"></a></li>
						<li><a class="color3" href="#"></a></li>
						<li><a class="color4" href="#"></a></li>
						<li><a class="color5" href="#"></a></li>
						<li><a class="color6" href="#"></a></li>
						<li><a class="color7" href="#"></a></li>
						<li><a class="color8" href="#"></a></li>
						<li><a class="color9" href="#"></a></li>
						<li><a class="color10" href="#"></a></li>
						<li><a class="color12" href="#"></a></li>
						<li><a class="color13" href="#"></a></li>
						<li><a class="color14" href="#"></a></li>
						<li><a class="color15" href="#"></a></li>
						<li><a class="color5" href="#"></a></li>
						<li><a class="color6" href="#"></a></li>
						<li><a class="color7" href="#"></a></li>
						<li><a class="color8" href="#"></a></li>
						<li><a class="color9" href="#"></a></li>
						<li><a class="color10" href="#"></a></li>
					</ul>
					</section>
					<section class="sky-form">
					<h4>discount</h4>
					<div class="row1 scroll-pane">
						<div class="col col-4">
							<label class="radio"><input type="radio" name="radio"
								checked=""><i></i>60 % and above</label> <label class="radio"><input
								type="radio" name="radio"><i></i>50 % and above</label> <label
								class="radio"><input type="radio" name="radio"><i></i>40
								% and above</label>
						</div>
						<div class="col col-4">
							<label class="radio"><input type="radio" name="radio"><i></i>30
								% and above</label> <label class="radio"><input type="radio"
								name="radio"><i></i>20 % and above</label> <label class="radio"><input
								type="radio" name="radio"><i></i>10 % and above</label>
						</div>
					</div>
					</section>
				</div>
			</div>
			<!-- start content -->
			<div class="col-md-9 w_content">
				<div class="women">
					<a href="#"><h4>
							Enthecwear - <span>4449 itemms</span>
						</h4></a>
					<ul class="w_nav">
						<li>Sort :</li>
						<li><a class="active" href="#">popular</a></li> |
						<li><a href="#">new </a></li> |
						<li><a href="#">discount</a></li> |
						<li><a href="#">price: Low High </a></li>
						<div class="clear"></div>
					</ul>
					<div class="clearfix"></div>
				</div>
	<!-- grids_of_4 -->
		<div class="grids_of_4">
		  <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	   	 <img src="images/w1.jpg" class="img-responsive" alt=""/>
				   	  </a>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that</p>
					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>ONLY $99.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
					 </div>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	   	 <img src="images/w2.jpg" class="img-responsive" alt=""/>
				   	  </a>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that</p>
					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>ONLY $76.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
					 </div>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	   	 <img src="images/w3.jpg" class="img-responsive" alt=""/>
				   	  </a>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that</p>
					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>ONLY $58.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
					 </div>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	   	 <img src="images/w4.jpg" class="img-responsive" alt=""/>
				   	  </a>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that</p>
					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>ONLY $112.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
					 </div>
			   	</div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		<!-- end grids_of_4 -->
		</div>
		<div class="clearfix"></div>
		<!-- end content -->
	</div>
	</div>
</body>
</html>
