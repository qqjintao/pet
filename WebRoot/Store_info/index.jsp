<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>店家界面</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<%
	String base = "0123456789";
	Random random = new Random();
	StringBuffer sb = new StringBuffer();
	for (int i = 0; i < 5; i++) {
		int number = random.nextInt(base.length());
		sb.append(base.charAt(number));
	}
	String verification_code = sb.toString();
%>
<script type="text/javascript">
	function alert5() {
		var aboutUsalert = document.getElementById("aboutUsalert");
		var aboutUs = document.getElementById("aboutUs");
		aboutUsalert.style.display = "block";
		aboutUsalert.style.position = "absolute";
		aboutUsalert.style.top = "10%";
		aboutUsalert.style.left = "0%";
		aboutUsalert.style.marginTop = "0px";
		aboutUsalert.style.marginLeft = "0px";

		aboutUsBg = document.createElement("div");
		aboutUsBg.style.background = "#000";
		aboutUsBg.style.width = "100%";
		aboutUsBg.style.height = "100%";
		aboutUsBg.style.position = "absolute";
		aboutUsBg.style.top = "0";
		aboutUsBg.style.left = "0";
		aboutUsBg.style.zIndex = "0";
		aboutUsBg.style.opacity = "0.3";
		aboutUsBg.style.filter = "Alpha(opacity=30)";
		document.body.appendChild(aboutUsBg);
		document.body.style.overflow = "hidden";
	}
	function alert4() {
		var queryStorecodealert = document.getElementById("queryStorecodealert");
		var queryStorecode = document.getElementById("queryStorecode");
		queryStorecodealert.style.display = "block";
		queryStorecodealert.style.position = "absolute";
		queryStorecodealert.style.top = "10%";
		queryStorecodealert.style.left = "0%";
		queryStorecodealert.style.marginTop = "0px";
		queryStorecodealert.style.marginLeft = "0px";

		queryStorecodeBg = document.createElement("div");
		queryStorecodeBg.style.background = "#000";
		queryStorecodeBg.style.width = "100%";
		queryStorecodeBg.style.height = "100%";
		queryStorecodeBg.style.position = "absolute";
		queryStorecodeBg.style.top = "0";
		queryStorecodeBg.style.left = "0";
		queryStorecodeBg.style.zIndex = "0";
		queryStorecodeBg.style.opacity = "0.3";
		queryStorecodeBg.style.filter = "Alpha(opacity=30)";
		document.body.appendChild(queryStorecodeBg);
		document.body.style.overflow = "hidden";
	}
	function alert3() {
		var shopChangePasswordalert = document.getElementById("shopChangePasswordalert");
		var shopChangePassword = document.getElementById("shopChangePassword");
		shopChangePasswordalert.style.display = "block";
		shopChangePasswordalert.style.position = "absolute";
		shopChangePasswordalert.style.top = "10%";
		shopChangePasswordalert.style.left = "0%";
		shopChangePasswordalert.style.marginTop = "0px";
		shopChangePasswordalert.style.marginLeft = "0px";

		shopChangePasswordBg = document.createElement("div");
		shopChangePasswordBg.style.background = "#000";
		shopChangePasswordBg.style.width = "100%";
		shopChangePasswordBg.style.height = "100%";
		shopChangePasswordBg.style.position = "absolute";
		shopChangePasswordBg.style.top = "0";
		shopChangePasswordBg.style.left = "0";
		shopChangePasswordBg.style.zIndex = "0";
		shopChangePasswordBg.style.opacity = "0.3";
		shopChangePasswordBg.style.filter = "Alpha(opacity=30)";
		document.body.appendChild(shopChangePasswordBg);
		document.body.style.overflow = "hidden";
	}
	function alert2() {
		var shopRegisteralert = document.getElementById("shopRegisteralert");
		var shopRegister = document.getElementById("shopRegister");
		shopRegisteralert.style.display = "block";
		shopRegisteralert.style.position = "absolute";
		shopRegisteralert.style.top = "10%";
		shopRegisteralert.style.left = "0%";
		shopRegisteralert.style.marginTop = "0px";
		shopRegisteralert.style.marginLeft = "0px";

		shopRegisterBg = document.createElement("div");
		shopRegisterBg.style.background = "#000";
		shopRegisterBg.style.width = "100%";
		shopRegisterBg.style.height = "100%";
		shopRegisterBg.style.position = "absolute";
		shopRegisterBg.style.top = "0";
		shopRegisterBg.style.left = "0";
		shopRegisterBg.style.zIndex = "0";
		shopRegisterBg.style.opacity = "0.3";
		shopRegisterBg.style.filter = "Alpha(opacity=30)";
		document.body.appendChild(shopRegisterBg);
		document.body.style.overflow = "hidden";
	}

	function alert1() {
		var shopLoginalert = document.getElementById("shopLoginalert");
		var shopLogin = document.getElementById("shopLogin");

		shopLoginalert.style.display = "block";
		shopLoginalert.style.position = "absolute";
		shopLoginalert.style.top = "10%";
		shopLoginalert.style.left = "0%";
		shopLoginalert.style.marginTop = "0px";
		shopLoginalert.style.marginLeft = "0px";

		shopLoginBg = document.createElement("div");
		shopLoginBg.style.background = "#000";
		shopLoginBg.style.width = "100%";
		shopLoginBg.style.height = "100%";
		shopLoginBg.style.position = "absolute";
		shopLoginBg.style.top = "0";
		shopLoginBg.style.left = "0";
		shopLoginBg.style.zIndex = "0";
		shopLoginBg.style.opacity = "0.3";
		shopLoginBg.style.filter = "Alpha(opacity=30)";
		document.body.appendChild(shopLoginBg);
		document.body.style.overflow = "hidden";
	}
	function close1() {
		window.location.reload();
	}
</script>
</head>
<body>
	<h1>欢迎加入锦涛宠店站</h1>
	<div class="hotel">
		<ul class="menu">
			<li class="item1">
				<ul class="cute">
					<div id="shopLogin">
						<li onclick="alert1()"><a href="#">店家登录</a></li>
					</div>
					<div id="shopRegister">
						<li onclick="alert2()"><a href="#">店家注册</a></li>
					</div>
					<div id="shopChangePassword">
						<li onclick="alert3()"><a href="#">忘记登录密码</a></li>
					</div>
					<div id="queryStorecode">
						<li onclick="alert4()"><a href="#">查询店铺编号</a></li>
					</div>
					<div id="aboutUs">
						<li onclick="alert5()"><a href="#">联系管理员</a></li>
					</div>

				</ul>
			</li>
		</ul>
	</div>
	<!-- 店家登录 -->
	<div id="shopLoginalert" class="alert">
		<div class="reg">
			<h1>◎店家登录界面◎</h1>
			<form action="StoreAccountAction!loginStoreAccount" method="post">
			<div class="book-pag">
				<h2>店铺编号：(记住本店编号，方便下次登入)</h2>
				<input type="text" name="storeAccount.Store_code"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>管理员账号：</h2>
				<input type="text" name="storeAccount.Admin_account"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>管理员密码：</h2>
				<input type="password" name="storeAccount.Admin_password"/>
			</div>
			<div class="clear"></div>
			<div class="members">
				<div class="adult">
					<h2>验证码：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" />
					</div>
				</div>
				<div class="child">
					<h2>&nbsp;</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" value="<%=verification_code%>"
							id="verification_code1" readonly="readonly" />
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div>
				<input type="submit" class="book" value="登录"> <input
					type="button" class="book" onclick="close1()" value="关闭">
			</div>
			</form>
		</div>
	</div>
	<!-- 店家注册 -->
	<div id="shopRegisteralert" class="alert">
		<div class="reg">
			<h1>◎店家注册界面◎</h1>
			<form action="StoreAction!registertore" method="post">
			<div class="book-pag">
				<h2>店铺名称：</h2>
				<input type="text" name="store.Store_name"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>公司地址：</h2>
				<input type="text" placeholder="详细地址，精确到街道地址" name="store.Company_address"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>电子邮箱：</h2>
				<input type="text" placeholder="此店联系人的邮箱" name="store.Company_email"/>
			</div>
			<div class="clear"></div>

			<div class="members">
				<div class="adult">
					<h2>店铺负责人姓名：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" placeholder="最高法人姓名" name="store.Store_principal"/>
					</div>
				</div>
				<div class="child">
					<h2>负责人电话</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" placeholder="最高法人联系电话" name="store.Principal_phone"/>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div class="members">
				<div class="adult">
					<h2>管理员账号：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" placeholder="最高管理员账户" name="storeAccount.Admin_account"/>
					</div>
				</div>
				<div class="child">
					<h2>管理员密码</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="password" name="storeAccount.Admin_password"/>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div>
				<input type="submit" class="book" value="注册"> <input
					type="button" class="book" onclick="close1()" value="关闭">
			</div>
			</form>
		</div>
	</div>
	<!-- 忘记登录密码 -->
	<div id="shopChangePasswordalert" class="alert">
		<div class="reg">
			<h1>◎找回密码界面◎</h1>
			<form action="StoreAccountAction!shopChangePassword" method="post">
			<div class="book-pag">
				<h2>店铺编号：</h2>
				<input type="text" name="store.Store_code"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>登录账户：</h2>
				<input type="text" name="storeAccount.Admin_account"/>
			</div>
			<div class="clear"></div>
			<div class="members">
				<div class="adult">
					<h2>店铺负责人姓名：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" placeholder="最高法人姓名" name="store.Store_principal"/>
					</div>
				</div>
				<div class="child">
					<h2>负责人电话</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" placeholder="最高法人联系电话" name="store.Principal_phone"/>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div class="members">
				<div class="adult">
					<h2>新密码：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="password" placeholder="设置新密码" name="storeAccount.Admin_password"/>
					</div>
				</div>
				<div class="child">
					<h2>重复新密码：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="password" />
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="members">
				<div class="adult">
					<h2>验证码：</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" />
					</div>
				</div>
				<div class="child">
					<h2>&nbsp;</h2>
					<div class="dropdown-button">
						<input class="dropdown" type="text" value="<%=verification_code%>"
							readonly="readonly" />
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div>
				<input type="submit" class="book" value="找回密码"> <input
					type="button" class="book" onclick="close1()" value="关闭">
			</div>
			</form>
		</div>
	</div>
	<!-- 查询店铺编号 -->
	<div id="queryStorecodealert" class="alert">
		<div class="reg">
			<h1>◎查询店铺编号◎</h1>
			<form action="StoreAction!queryStoreByStore_name" method="post">
			<div class="book-pag">
				<h2>店铺名称：</h2>
				<input type="text" name="store.Store_name"/>
			</div>
			<div class="clear"></div>
			<div class="book-pag">
				<h2>店铺店铺编号：</h2>
				<input type="text" readonly="readonly" />
			</div>
			<div class="clear"></div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div>
				<input type="submit" class="book" value="查询"> <input
					type="button" class="book" onclick="close1()" value="关闭">
			</div>
			</form>
		</div>
	</div>
	<!-- 联系管理员 -->
	<div id="aboutUsalert" class="alert">
		<div class="reg">
			<h1>◎联系管理员◎</h1>
			<div class="book-pag">
				<h2>管理员手机号码：</h2>
				<input type="text" value="13160679586"/>
			</div>
			<div class="clear"></div>
				<input type="button" class="book" onclick="close1()" value="关闭">
			</div>
		</div>
	</div>
</body>
</html>
