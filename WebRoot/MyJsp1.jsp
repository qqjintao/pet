<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>所有机票预订信息</title>
</head>
<script type="text/javascript" src="jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#Button1").click(function() {
			$.ajax({
				type : 'post',
				url : 'queryShoppingCartView!aaa',
				data : {
					a : "huang"
				},
				dataType : 'text',
				anysc : true,
				success : function(a) {
					alert(a);
				},
				error : function() {
					alert("Error");
				}
			});
		});

	});
</script>
<script type="text/javascript">
	$(function() {
		$("#form1").ajaxForm({
			success : function(result) {
				$("#output").val(result);
			}
		});
	});
</script>

</head>
<body>
	<input type="button" value="Test" id="Button1" />
</body>
</html>