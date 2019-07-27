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

<title>商品列表</title>

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
<script type="text/javascript">
	function queryProductDetilsByProductId(ProductId, Subclass_name) {
		location.href = "queryProductDetilsByProductId?ProductId=" + ProductId + "&Subclass_name=" + Subclass_name;
	}
</script>
</head>
<body>
<jsp:include page="Product_Header.jsp"></jsp:include>
<div style="text-align: center;">
	<s:form action="Product!queryProductByProduct_name" method="post"  theme="simple">
    		依据商品名称查询：<s:textfield  name="queryName" value=" "></s:textfield>
    		<s:submit value="查询"></s:submit>
		</s:form>
		 <s:form action="Product!queryProductByMember_price" method="post"  theme="simple">
		    	依据商品价格区间查询：<s:textfield  name="Member_price_a" value=" " ></s:textfield>
		    	<s:textfield  name="Member_price_b" value=" "></s:textfield><s:submit value="查询"></s:submit>
		 </s:form>
		 <s:form action="Product!queryProductBySubclass_name" method="post"  theme="simple">
		    	依据商品小类名称：<s:textfield  name="queryName" value=" "></s:textfield><s:submit value="查询"></s:submit>
		</s:form>
		 <s:form action="Product!queryProductByBroadHeading_name" method="post"  theme="simple">
		    	依据商品大类名称：<s:textfield  name="queryName" value=" "></s:textfield><s:submit value="查询"></s:submit>     
		</s:form>
</div>
	<div class="special">
		<div class="container">
			<h3>商品列表</h3>
			<div class="specia-top">
				<ul class="grid_2">
					<s:iterator value="browse_products" status="st"
						var="browse_product">
						<li><a
							href="javascript:queryProductDetilsByProductId('<s:property value="#browse_product.Product_code"/>','<s:property value="#browse_product.Subclass_name"/>')"><img
								src="<s:property value="#browse_product.Product_photo" />"
								class="img-responsive" alt=""></a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5>
									<s:property value="#browse_product.Product_name" />
								</h5>
								<div class="item_add">
									<span class="item_price"><h6>
											会员价 ¥
											<s:property value="#browse_product.Member_price" />
										</h6></span>
								</div>
								<div class="item_add">
									<span class="item_price">销量：<s:property value="#browse_product.Sales" /></span><br>
									<span class="item_price">评价数量：<s:property value="#browse_product.Evaluate" /></span>
								</div>
								<div class="item_add">
									<span class="item_price"><a
							href="javascript:queryProductDetilsByProductId('<s:property value="#browse_product.Product_code"/>','<s:property value="#browse_product.Subclass_name"/>')">点击查看</a></span> 
								</div>
							</div></li>
					</s:iterator>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
