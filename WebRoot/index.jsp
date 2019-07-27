<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>首页</title>

    <!-- Favicon Ico -->
    <link rel="shortcut icon" href="images/favicon.ico">

    <!-- =============================
                stylesheets
    ================================== -->

    <!-- Normalize And Bootstrap -->
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" />

    <!-- Plugin Default Stylesheets -->
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
    <!-- Preloader -->
    <div class="preloader">
        <div class="status"></div>
    </div>

    <jsp:include page="Header.jsp"></jsp:include>

    <!-- =============================
                Main Slider
    ================================== -->
    <section class="slider-pro blete-slider" id="blete-slider">
        <div class="sp-slides">

            <!-- Slides -->
            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>

                <img class="sp-image" src="images/img-header/slider-img-4.jpg" alt="Slider 1"/>

                <h1 class="sp-layer blete-slider-text-big"
                data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
              		  忠犬八公的故事
                </h1>

                <p class="sp-layer"
                data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                    <span class="blete-highlight-text">台词：</span>忠诚的意义在于我们不应该忘记爱过的每一个人
                </p>
            </div>
            <!-- Slides End -->

            <!-- Slides -->
            <div class="sp-slide blete-main-slides">
            <div class="blete-img-overlay"></div>
                <img class="sp-image" src="images/img-header/slider-img-5.jpg" alt="Slider 2"/>

                <h1 class="sp-layer blete-slider-text-big"
                 data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
            	       加菲猫
                </h1>

                <p class="sp-layer"
                 data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                    <span class="blete-highlight-text">台词：</span>加菲猫肯定不是为猪肉卷而生，但猪肉卷一定是为加菲猫而生。
                </p>
            </div>
            <!-- Slides End -->

            <!-- Slides -->
            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>

                <img class="sp-image" src="images/img-header/slider-img-6.jpg" alt="Slider 3"/>

                <h1 class="sp-layer blete-slider-text-big"
                data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1000" data-hide-delay="200">
                   我与狗狗的十个约定
                </h1>

                <p class="sp-layer"
                data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                   <span class="blete-highlight-text">台词：</span>希望你有一天你可以完全的信任我,能成为你忠诚的朋友,是我最大的幸福。
                </p>

            </div>
            <!-- Slides End -->

        </div>
    </section>
    <!-- Main Slider End -->

    <!-- =============================
                    About Section
    ================================== -->
    <section id="about" class="blete-section-wrapper">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>经营范围： <span class="blete-highlight-text">宠物类别</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">宠物大类，小类包含宠物全方位服务~</p>
                </div>
                <!-- Section Header End -->

                <!-- What We Do -->
                <div class="blete-what-we-do">

                    <div class="col-md-3 col-sm-3 col-xs-12 blete-blurb-round-icon wow bounceInLeft">
                        <a href="Product!queryProductByBroadHeading_name?queryName=狗狗">
                        <div class="blete-icon">
                            <i>
                            <img src="images/index_picture/index_dog.png">
                            </i>
                        </div>
                        <h3>狗狗</h3></a>
                        <p>人类最忠诚的朋友</p>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12 blete-blurb-round-icon wow bounceInLeft" data-wow-delay=".5s">
                    	 <a href="Product!queryProductByBroadHeading_name?queryName=喵咪">
                        <div class="blete-icon">
                            <i>
                             <img src="images/index_picture/index_cat.png">
                            </i>
                        </div>
                        <h3>猫咪</h3> </a>
                        <p>喵星人很高冷</p>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12 blete-blurb-round-icon wow bounceInRight" data-wow-delay=".5s">
                    <a href="Product!queryProductByBroadHeading_name?queryName=小宠">
                        <div class="blete-icon">
                            <i>
                            <img src="images/index_picture/index_rabbit.png">
                            </i>
                        </div>
                        <h3>小宠</h3></a>
                        <p>龙猫</p>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12 blete-blurb-round-icon wow bounceInRight" data-wow-delay=".5s">
                       <a href="Product!queryProductByBroadHeading_name?queryName=水族&爬虫">
                        <div class="blete-icon">
                            <i>
                             <img src="images/index_picture/index_fish.png">
                            </i>
                        </div>
                        <h3>水族&爬虫</h3></a>
                        <p>金鱼嘴</p>
                    </div>
                    
                </div>
                <!-- What We Do End -->

            </div>
        </div>
    </section>
    <!-- About Section End -->


    <!-- =============================
                    Featuers Section
    ================================== -->
    <section id="features" class="blete-section-wrapper blete-features-section" data-stellar-background-ratio="0.5">
        <div class="blete-parallax-overlay"></div>
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header blete-section-header-parallax wow slideInDown">
                    <h2>热门：<span class="blete-highlight-text">宠物热搜榜</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1"></p>
                </div>
                <!-- Section Header End -->

                <!-- Features -->
                <div class="blete-features">
                    <div class="col-md-4 col-sm-4 col-xs-12 wow rotateInDownLeft">

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/dog_1.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>哈奇士</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/dog_2.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>金毛</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                 <img src="images/index_picture/dog_3.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>萨摩耶</h3>
                                <p>.</p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-12 wow slideInUp" data-wow-duration="1s">

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/cat_1.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>苏格兰折耳猫</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/cat_2.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>异国短毛猫</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/cat_3.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>波斯猫</h3>
                                <p>.</p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-12 wow rotateInDownRight">

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/rabbit_1.png" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>垂耳兔</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                <img src="images/index_picture/rabbit_2.jpg" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>貂</h3>
                                <p>.</p>
                            </div>
                        </div>

                        <div class="blete-blurb-icon-left-square">
                            <div>
                                <i>
                                 <img src="images/index_picture/rabbit_3.jpg" height="210px">
                                </i>
                            </div>

                            <div>
                                <h3>大绯胸鹦鹉</h3>
                                <p>.</p> 
                            </div>
                        </div>

                    </div>
                                
                </div>
                <!-- Features End -->

            </div>
        </div>
    </section>
    <!-- Featuers Section End -->


    <!-- =============================
                    Team Section
    ================================== -->
    <section id="team" class="blete-section-wrapper blete-team-section">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>代言 ： <span class="blete-highlight-text">明星整容</span> 代言榜</h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">我们也选择锦涛宠店</p>
                </div>
                <!-- Section Header End -->

                <!-- Team Slider -->
                <div id="team-slider" class="owl-carousel blete-team-carousal col-md-12 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="2s">

                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">

                        <div class="blete-member-img-wrapper">
                            <img src="images/img-team/team-img-1.jpg" alt="Team Member 1">
                        </div>

                        <div class="blete-member-details">
                            <h3>胡歌</h3>
                            <span class="blete-member-desg">大陆演员</span>
                            <p>胡歌，1982年9月20日出生于上海，著名演员、歌手、制片人。 </p>
                            <ul class="blete-team-social-icon">
                                <li class="social-facebook">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="social-gplus">
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Slides End -->

                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">

                        <div class="blete-member-img-wrapper">
                            <img src="images/img-team/team-img-2.jpg" alt="Team Member 2">
                        </div>

                        <div class="blete-member-details">
                            <h3>霍建华</h3>
                            <span class="blete-member-desg">中国台湾男演员、歌手、出品人</span>
                            <p>霍建华，1979年12月26日出生于台湾台北，中国台湾男演员，歌手、出品人。</p>
                            <ul class="blete-team-social-icon">
                                <li class="social-facebook">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="social-gplus">
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Slides End -->

                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">

                        <div class="blete-member-img-wrapper">
                            <img src="images/img-team/team-img-3.jpg" alt="Team Member 3">
                        </div>

                        <div class="blete-member-details">
                            <h3>赵丽颖</h3>
                            <span class="blete-member-desg">中国内地女演员</span>
                            <p>赵丽颖，1987年10月16日出生于河北省廊坊市，中国内地影视女演员。</p>
                            <ul class="blete-team-social-icon">
                                <li class="social-facebook">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="social-gplus">
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Slides End -->

                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">

                        <div class="blete-member-img-wrapper">
                            <img src="images/img-team/team-img-4.jpg" alt="Team Member 4">
                        </div>

                        <div class="blete-member-details">
                            <h3>邓紫棋</h3>
                            <span class="blete-member-desg">中国香港歌手</span>
                            <p>邓紫棋（G.E.M.），1991年8月16日生于中国上海，4岁移居香港，中国香港创作型女歌手。</p>
                            <ul class="blete-team-social-icon">
                                <li class="social-facebook">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="social-gplus">
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Slides End -->
					
					 <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">

                        <div class="blete-member-img-wrapper">
                            <img src="images/img-team/team-img-5.jpg" alt="Team Member 4">
                        </div>

                        <div class="blete-member-details">
                            <h3>波多野结衣</h3>
                            <span class="blete-member-desg">日本女演员、AV女优</span>
                            <p>波多野结衣（はたの ゆい），女，1988年5月24日出生于日本京都府，著名日本女演员、AV女优。</p>
                            <ul class="blete-team-social-icon">
                                <li class="social-facebook">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="social-gplus">
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Slides End -->
                </div>
                <!-- Team Slider End -->
            </div>
        </div>
    </section>
    <!-- Team Section End -->
 
    <section id="featured-works" class="blete-section-wrapper blete-section-work">
        <!-- Container -->
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>宠物照： <span class="blete-highlight-text">亲密</span> 家庭宠物照</h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">让分享变得更快乐</p>
                </div>
                <!-- Section Header End -->

            </div>
        </div>
        <!-- Container End -->

        <!-- Featured Works Slider -->
        <div class="container-fluid">
            <div class="row-fluid">

                <div class="blete-portfolio-work-slider-section wow fadeIn" data-wow-duration="2s">
                    <div id="featured-work-slider" class="owl-carousel blete-portfolio-works-slider">

                        <!-- Work 1 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu1.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 1 End -->

                        <!-- Work 2 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu2.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 2 End -->

                        <!-- Work 3 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu3.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 3 End -->

                        <!-- Work 4 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu4.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 4 End -->

                        <!-- Work 5 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu5.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 5 End -->

                        <!-- Work 6 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu6.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 6 End -->

                        <!-- Work 7 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu7.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 7 End -->
						<!-- Work 1 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu8.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 1 End -->

                        <!-- Work 2 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu9.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 2 End -->

                        <!-- Work 3 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu10.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 3 End -->

                        <!-- Work 4 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu11.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 4 End -->

                        <!-- Work 5 -->
                        <div class="blete-portfolio-work-item">

                            <img src="images\family\tu12.jpg" alt="work">
                            <div class="blete-port-work-details">
                                <ul class="blete-work-meta">
                                    <li class="blete-lighbox"><a class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Work 5 End -->
                        <!--  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured Works Slider -->

    </section>
    <!-- Featured Work End -->


    <!-- =============================
                Custom Section
    ================================== -->
    <section class="blete-custom-sec blete-section-wrapper blete-description">
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>本店名称 <span class="blete-highlight-text">锦涛宠店</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">从这里开始，遇见你最好的朋友！</p>
                </div>
                <!-- Section Header End -->

                <div class="col-md-6 col-sm-6 col-xs-12 blete-custom-sec-img wow bounceInLeft">
                    <img src="images/features.png" alt="Custom Image">
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12 blete-custom-sec-text wow bounceInRight">
                    <p>  锦涛宠店是什么？猫是性感而有品位的，锦涛宠店网购，代表的就是时尚、性感、潮流和品质；猫天生挑剔，挑剔品质，挑剔品牌，挑剔环境，这恰好符合锦涛宠店网购要全力打造的品质之城的定义。
      我们希望锦涛宠店成为您在网购世界中的第五大道或者香榭丽舍大道，能够成为中国乃至世界B2C的新地标！
      </p>
                    <p>多种新型网络营销模式正在不断被开创。加入锦涛宠店，将拥有更多接触最前沿电子商务的机会，也将为全新的B2C事业创造更多的奇迹！</p>
                    <ul>
                        <li><i class="fa fa-check"></i>专业的一站式锦涛宠店宠物主题网站——锦涛宠店网 </li>
                        <li><i class="fa fa-check"></i>宠物用品网上商城——锦涛宠店商城 </li>
                        <li><i class="fa fa-check"></i>锦涛宠店服务电商平台——锦涛宠店服务</li>
                        <li><i class="fa fa-check"></i>大而真实的宠物主题社区——锦涛宠店论坛</li>
                        <li><i class="fa fa-check"></i>大而全的宠物世界百科全书——宠物百科</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- Custom Section End -->


    <!-- =============================
                Contact Section
    ================================== -->
    <section id="contact" class="blete-section-wrapper blete-contact-section" data-stellar-background-ratio="0.5">
    <div class="blete-parallax-overlay"></div>
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown blete-section-header-parallax">
                    <h2>关于 <span class="blete-highlight-text">我们</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">致力于成为为社会创造最大价值的企业</p>
                </div>
                <!-- Section Header End -->

                <div class="blete-contact-details">

                    <!-- Address Area -->
                    <div class="col-md-5 col-sm-4 col-xs-12 blete-contact-address wow bounceInLeft">
                        <p>锦涛宠店于2004年正式涉足电商领域。2016年，锦涛宠店集团市场交易额达到9392亿元*，净收入达到2601亿元，同比增长43%。锦涛宠店是中国收入规模最大的互联网企业。2016年7月，锦涛宠店入榜2016《财富》全球500强，成为中国首家、唯一入选的互联网企业。
2014年5月，锦涛宠店集团在美国纳斯达克证券交易所正式挂牌上市，是中国第一个成功赴美上市的大型综合型电商平台，并成功跻身全球前十大互联网公司排行榜，2015年7月，锦涛宠店凭借高成长性入选纳斯达克100指数和纳斯达克100平均加权指数。</p>
                        <ul>
                            <li class="blete-office-address"><i class="fa fa-home"></i>北京理工大学珠海学院<br>宿舍栋38<br>14级软工一班 办公室</li>
                            <li class="blete-phone"><i class="fa fa-phone"></i>13724244614</li>
                            <li class="blete-email"><i class="fa fa-envelope-o"></i>1009335882@qq.com</li>
                            <li class="blete-web"><i class="fa  fa-globe"></i>http://localhost:8080/pet3</li>
                        </ul>
                    </div>

                    <!-- Address Area End -->

                    <!-- Contact Form -->
                    <div class="col-md-7 col-sm-8 col-xs-12 blete-contact-form wow bounceInRight">
                        <div id="contact-result"></div>
                        <div id="contact-form">
                            <div class="blete-input-name blete-input-fields">
                                <input type="text" name="name" id="name" placeholder="标题">
                            </div>

                            <div class="blete-input-email blete-input-fields">
                                <input type="email" name="email" id="email" placeholder="邮件">
                            </div>

                            <div class="blete-input-message blete-input-fields">
                                <textarea name="message" id="message" cols="30" rows="10" placeholder="内容"></textarea>
                            </div>

                            <input type="submit" value="发送信息" id="submit-btn">
                        </div>
                    </div>
                    <!-- Contact Form End -->

                </div>
            </div>
        </div>
    </section>
<jsp:include page="Footer.jsp"></jsp:include>
    <!-- =============================
                SCRIPTS
    ================================== -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.easypiechart.js"></script>
    <script src="js/jquery.countTo.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jflickrfeed.min.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.nav.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/smooth-scroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.sliderPro.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
