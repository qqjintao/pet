<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title></title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
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
</body>
</html>
