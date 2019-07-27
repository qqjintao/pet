<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  <body>
  <center>
    <div>
		<h1>修改登录密码</h1>
		<s:form method="post" action="SafeAction!changePassword" >
			<s:password name="oldPassword" label="当前密码" />
			<s:password name="newPassword" label="新密码" />
			<s:password name="newPassword1" label="确认密码：" />
			<s:submit value="确定" />
			<s:reset value="重置" />
		</s:form>
	</div>
	</center>
  </body>
</html>
