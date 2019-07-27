<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>所有机票预订信息</title>
  </head>
  
  <body>
    	<s:form action="Product!queryProductByProduct_name" method="get">
    	<s:textfield  name="queryName" value="二哈"></s:textfield>
    	<s:submit>提交</s:submit>
    	</s:form>
    	
    	<s:form action="Product!queryProductByMember_price" method="get">
    	<s:textfield  name="Member_price_a" value="1"></s:textfield>
    	<s:textfield  name="Member_price_b" value="200"></s:textfield>
    	<s:submit>提交</s:submit>
    	</s:form>
    	
    	<s:form action="Product!queryProductByProductId" method="get">
    	<s:textfield  name="id" value="1"></s:textfield>
    	<s:submit>提交</s:submit>
    	</s:form>

    	
  </body>
</html>
