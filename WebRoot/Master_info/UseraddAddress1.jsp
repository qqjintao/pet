<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<script type="text/javascript">
	function provinces() {
		var obj = document.getElementById("Provinces");
		var index = obj.selectedIndex;
		document.getElementById("updateprovince").value = index;
		document.getElementById("state").value = 0;
		document.getElementById("userInfoForm").submit();
	}
	function userInfoForm_submit() {
		var obj = document.getElementById("Provinces");
		var index = obj.selectedIndex;
		document.getElementById("updateprovince").value = index;
		document.getElementById("state").value = 1;
		document.getElementById("userInfoForm").submit();
	}
</script>
</head>
<body>
	<center>
		<div>
			<s:action name="Location_tableAction!showProvince"></s:action>
			<h1>新增收货地址</h1>
			<form method="post" action="Location_tableAction!addLocation_table1"
				id="userInfoForm">
				<input type="text" name="updateprovince" id="updateprovince"
					style="display: none;"> <input type="text" name="state"
					id="state" style="display: none;">
				<table>
					<tbody>
						<tr>
							<td>*收货人姓名：</td>
							<td><input type="text" name="location_table.Name"
								value="<s:property
										value="location_table.Name" />" /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>*所在地区：</td>
							<td><s:select list="#session.province" id="Provinces"
									name="location_table.Province" onchange="provinces()"></s:select>
								<s:select list="#session.city" id="City"
									name="location_table.City"></s:select></td>
							<td></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>*街道地址：</td>
							<td colspan="3"><input type="text"
								name="location_table.Street"
								value="<s:property
										value="location_table.Street" />" /></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>*手机号码：</td>
							<td><input type="text" name="location_table.Phone"
								value="<s:property
										value="location_table.Phone" />" /></td>
							<td>或固定电话：</td>
							<td><input type="text"
								name="location_table.Fixedline_telephone"
								value="<s:property
										value="location_table.Fixedline_telephone" />" /></td>
							<td>正确的固定电话格式如：021-12345678</td>
						</tr>
						<tr>
							<td>邮政编码：</td>
							<td><input type="text"
								value="<s:property
										value="location_table.Zip_code" />"
								name="location_table.Zip_code" /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><button type="button" onclick="userInfoForm_submit()">保存</button></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</center>
</body>
</html>
