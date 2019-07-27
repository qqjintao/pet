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
		<h1>账户余额体现</h1>
		<s:form method="post" action="FinanceAction!changeFinance2" >
			<s:textfield name="finance.Balance" label="体现余额" />
			<s:password name="finance.Payment_code" label="支付密码" />
			<s:submit value="充值" />
			<s:reset value="重置" />
		</s:form>
	</div>
	</center>
  </body>
</html>
