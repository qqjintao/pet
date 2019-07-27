<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<script type="text/javascript">
	function settable1() {
		document.getElementById("div1").style.display = "none";
		document.getElementById("div2").style.display = "block";
	}
	function settable2() {
		document.getElementById("div1").style.display = "block";
		document.getElementById("div2").style.display = "none";
	}
</script>
</head>
<body>
	<center>
		<div id="div1">
			<h1>修改支付密码</h1>
			（第一次设置密码，原密码可以不填）
			<s:form method="post" action="SafeAction!changePayment_code"
				id="div1">
				<s:password name="oldPassword" label="当前密码" />
				<s:password name="newPassword" label="新密码" />
				<s:password name="newPassword1" label="确认密码：" />
				<s:submit value="确定" />
				<input type="button" value="忘记原密码" onclick="settable1()">
			</s:form>

		</div>
		<div id="div2" style="display: none;">
			<s:form method="post" action="SafeAction!forgetPayment_code"
				id="div1">
				<s:password name="oldPassword" label="手机验证码" />
				<s:password name="newPassword" label="新密码" />
				<s:password name="newPassword1" label="确认密码：" />
				<s:submit value="确定" />
				<input type="button" value="发送手机验证码"><br>
				<input type="button" value="返回修改页面" onclick="settable2()">
			</s:form>
		</div>
	</center>
</body>
</html>
