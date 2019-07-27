<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>登录页面</title>
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" />

    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/slider-pro.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <link rel="stylesheet" href="css/animate.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/color.css" id="colors" />
</head>

  <body>
    <header>
        <!-- Navigation Menu start-->
        <nav class="navbar blete-main-menu" role="navigation">
            <div class="container">

                <!-- Navbar Toggle -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Logo -->
                    <a class="navbar-brand" href="index.html"><img class="logo" id="logo" src="images/logo.png" alt="logo"></a>

                </div>
                <!-- Navbar Toggle End -->

                <!-- navbar-collapse start-->
                <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav blete-menu-wrapper">
                        <li class="active">
                            <a href="index.jsp">首页</a>
                        </li>
                        <li>
                             <a href="Product!queryProductByBroadHeading_name?queryName=狗  狗">狗  狗</a>
                        </li>
                        <li>
                             <a href="Product!queryProductByBroadHeading_name?queryName=喵咪">猫  咪</a>
                        </li>
                         <li>
                             <a href="Product!queryProductByBroadHeading_name?queryName=小宠">小  宠</a>
                        </li>
                        <li>
                             <a href="Product!queryProductByBroadHeading_name?queryName=水族&爬虫">水族&爬虫</a>
                        </li>
                        <li>
                            <a href="Master_tableAction!userinfo">个人中心</a>
                        </li>
                        <li>
                            <a href="ForumAction">我的主页</a>
                        </li>
                        <li>
                        	<s:if test="#session.registry!=null">
                            <a href="Login.jsp">退出登录</a>
                            </s:if>
                            <s:else>
                             <a href="Login.jsp">登录</a>
                            </s:else>
                        </li>
                    </ul>
                </div>
                <!-- navbar-collapse end-->

            </div>
        </nav>
        <!-- Navigation Menu end-->
    </header>
    <!-- Header End -->
  </body>
</html>
