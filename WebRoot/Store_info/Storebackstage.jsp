<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<title>商家后台管理</title>
<script src="backstage_js/jquery.min.js"></script>
<script src="backstage_js/bootstrap.min.js"></script>
<script>
	$(function() {
		$(".meun-item").click(function() {
			$(".meun-item").removeClass("meun-item-active");
			$(this).addClass("meun-item-active");
			var itmeObj = $(".meun-item").find("img");
			itmeObj.each(function() {
				var items = $(this).attr("src");
				items = items.replace("_grey.png", ".png");
				items = items.replace(".png", "_grey.png")
				$(this).attr("src", items);
			});
			var attrObj = $(this).find("img").attr("src");
			;
			attrObj = attrObj.replace("_grey.png", ".png");
			$(this).find("img").attr("src", attrObj);
		});
		$("#topAD").click(function() {
			$("#topA").toggleClass(" glyphicon-triangle-right");
			$("#topA").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topBD").click(function() {
			$("#topB").toggleClass(" glyphicon-triangle-right");
			$("#topB").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topCD").click(function() {
			$("#topC").toggleClass(" glyphicon-triangle-right");
			$("#topC").toggleClass(" glyphicon-triangle-bottom");
		});
		$(".toggle-btn").click(function() {
			$("#leftMeun").toggleClass("show");
			$("#rightContent").toggleClass("pd0px");
		})
	})
</script>
<link href="backstage_css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="backstage_css/common.css" />
<link rel="stylesheet" type="text/css" href="backstage_css/slide.css" />
<link rel="stylesheet" type="text/css"
	href="backstage_css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="backstage_css/flat-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="backstage_css/jquery.nouislider.css">
<script type="text/javascript">
	function deleteStoreJurisdictionById(storeJurisdictionId, name) {
		document.getElementById("deleteStoreJurisdictionId").value = storeJurisdictionId;
		document.getElementById("deleteStoreJurisdictionId").name = name;
	}
	function formSumbit(id, actionname) {
		alert("进入提交" + actionname);
		document.getElementById(id).action = actionname;
		document.getElementById(id).submit();
	}
</script>
</head>

<body>
	<script type="text/javascript">
window.onload=function(a){
a=<%=1%>
if(a==1){}
document.getElementById("charchar").click();

}
</script>
	<!-- 隐藏表单用于删除 -->
	<form action="" method="post" style="display: none;"
		id="deleteStoreJurisdictionForm">
		<input type="text" id="deleteStoreJurisdictionId">
	</form>
	<div id="wrap">
		<!-- 左侧菜单栏目块 -->
		<div class="leftMeun" id="leftMeun">
			<div id="logoDiv">
				<p id="logoP">
					<img id="logo" alt="左右结构项目" src="images/logo.png"><span>锦涛宠店站后台</span>
				</p>
			</div>
			<div id="personInfor">
				<p id="userName">
					账号：
					<s:property value="#session.storeAccount.Admin_account" />
				</p>
				<p id="userName">
					姓名：
					<s:property value="#session.storeAccount.Admin_name" />
				</p>
				<p>
					<a href="index.jsp">退出登录</a>
				</p>
			</div>
			<div class="meun-title">账号管理</div>
			<div class="meun-item meun-item-active" href="#sour"
				aria-controls="sour" role="tab" data-toggle="tab">
				<img src="images/icon_source.png">资源管理
			</div>
			<div class="meun-item" href="#char" aria-controls="char" role="tab"
				data-toggle="tab" id="charchar">
				<img src="images/icon_chara_grey.png">权限管理
			</div>
			<div class="meun-item" href="#user" aria-controls="user" role="tab"
				data-toggle="tab">
				<img src="images/icon_user_grey.png">用户管理
			</div>
			<div class="meun-item" href="#chan" aria-controls="chan" role="tab"
				data-toggle="tab">
				<img src="images/icon_change_grey.png">修改密码
			</div>
			<div class="meun-title">店家管理</div>
			<div class="meun-item" href="#scho" aria-controls="scho" role="tab"
				data-toggle="tab">
				<img src="images/icon_house_grey.png">店家信息管理
			</div>
			<div class="meun-item" href="#regu" aria-controls="regu" role="tab"
				data-toggle="tab">
				<img src="images/icon_rule_grey.png">商品管理
			</div>
			<div class="meun-item" href="#stud" aria-controls="stud" role="tab"
				data-toggle="tab">
				<img src="images/icon_card_grey.png">快递信息管理
			</div>
			<div class="meun-item" href="#sitt" aria-controls="sitt" role="tab"
				data-toggle="tab">
				<img src="images/icon_char_grey.png">支付管理
			</div>
			<div class="meun-item" href="#sitt" aria-controls="sitt" role="tab"
				data-toggle="tab">
				<img src="images/icon_char_grey.png">订单管理
			</div>
		</div>
		<!-- 右侧具体内容栏目 -->
		<div id="rightContent">
			<a class="toggle-btn" id="nimei"> <i
				class="glyphicon glyphicon-align-justify"></i>
			</a>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- 资源管理模块 -->
				<div role="tabpanel" class="tab-pane active" id="sour">
					<div class="check-div form-inline">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addSource">添加资源</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">编码</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">名称</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">链接</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
						</div>
						<div class="tablebody">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">1</div>
								<div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4"
									role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseSystem" aria-expanded="true"
									aria-controls="collapseOne">
									<span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span>
									<span>系统管理</span>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									/admin/system/userlist/software/</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#changeSource">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteSource">删除</button>
								</div>
							</div>
							<!--系统管理折叠狂-->
							<div id="collapseSystem" class="collapse in" aria-expanded="true">
								<div class="row">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
										2</div>
									<div id="topBD" onClick="changeA()"
										class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
										role="button" data-toggle="collapse" data-parent="#accordion"
										href="#collapseAccount" aria-expanded="true"
										aria-controls="collapseOne">
										<span onClick="changeB()" id="topB"
											class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">/rlist/
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<button class="btn btn-success btn-xs" data-toggle="modal"
											data-target="#changeSource">修改</button>
										<button class="btn btn-danger btn-xs" data-toggle="modal"
											data-target="#deleteSource">删除</button>
									</div>
								</div>
								<!--用户管理折叠狂-->
								<div id="collapseAccount" class="collapse in"
									aria-expanded="true">
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
											1</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span class=""> &nbsp;</span><span>资源管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">
											2</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>权限管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
										3</div>
									<div id="topCD"
										class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
										role="button" data-toggle="collapse" data-parent="#accordion"
										href="#collapseSchool" aria-expanded="true"
										aria-controls="collapseOne">
										<span id="topC" onClick="changeC()"
											class="glyphicon glyphicon-triangle-bottom"></span><span>
											地区管理</span>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
										/admin/system</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<button class="btn btn-success btn-xs" data-toggle="modal"
											data-target="#changeSource">修改</button>
										<button class="btn btn-danger btn-xs" data-toggle="modal"
											data-target="#deleteSource">删除</button>
									</div>
								</div>
								<!--地区管理折叠狂-->
								<div id="collapseSchool" class="collapse in"
									aria-expanded="true">
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">
											1</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
											<span></span><span>地区管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">
											2</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>规则管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs " data-toggle="modal "
												data-target="#changeSource ">修改</button>
											<button class="btn btn-danger btn-xs " data-toggle="modal "
												data-target="#deleteSource ">删除</button>
										</div>
									</div>
									<div class="row ">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
											3</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
											<span></span><span>人员信息</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">
											4</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>座位管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>
					<!--弹出窗口 添加资源-->
					<div class="modal fade" id="addSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">链接：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">排序：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="leixing" id="anniu">菜单
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="leixing" id="meun"> 按钮
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-xs btn-green">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改资源弹出窗口-->
					<div class="modal fade" id="changeSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">链接：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">排序：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="leixing" id="anniu">菜单
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="leixing" id="meun"> 按钮
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!--弹出删除资源警告窗口-->
					<div class="modal fade" id="deleteSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该资源？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 权限管理模块 -->
				<div role="tabpanel" class="tab-pane" id="char">
					<div class="check-div">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addChar">添加权限</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-1 ">权值</div>
							<div class="col-xs-4">权限名</div>
							<div class="col-xs-5">描述</div>
							<div class="col-xs-2">操作</div>
						</div>
						<!-- 刷新数据 -->
						<s:action name="StoreJurisdictionAction!queryAllStoreJurisdiction"></s:action>
						<div class="tablebody">
							<s:iterator value="#session.storeJurisdictions" status="stat"
								var="storeJurisdictions">
								<div class="row">
									<div class="col-xs-1 ">
										<s:property value="#storeJurisdictions.Admin_jurisdiction" />
									</div>
									<div class="col-xs-4">
										<span><s:property
												value="#storeJurisdictions.Jurisdiction_name" /></span>
									</div>
									<div class="col-xs-5">
										<s:property value="#storeJurisdictions.Jurisdiction_describe" />
									</div>
									<div class="col-xs-2">
										<button class="btn btn-success btn-xs" data-toggle="modal"
											data-target="#changeChar" onclick="">修改</button>
										<button class="btn btn-danger btn-xs" data-toggle="modal"
											data-target="#deleteChar"
											onclick="deleteStoreJurisdictionById(<s:property
												value="#storeJurisdictions.id"/>,'storeJurisdiction.id')">删除</button>
									</div>
								</div>
							</s:iterator>
						</div>
					</div>

					<!--增加权限弹出窗口-->
					<div class="modal fade" id="addChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
								</div>
								<form class="form-horizontal"
									action="StoreJurisdictionAction!appendStoreJurisdiction"
									method="post">
									<div class="modal-body">
										<div class="container-fluid">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">权限名：</label>
												<div class="col-xs-6 ">
													<input type="text" class="form-control input-sm duiqi"
														id="sName" placeholder="管理员"
														name="storeJurisdiction.Jurisdiction_name">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">描述：</label>
												<div class="col-xs-6 ">
													<textarea class="form-control input-sm duiqi"
														name="storeJurisdiction.Jurisdiction_describe"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">权限等级：</label>
												<div class="col-xs-6">
													<select class="form-control input-sm duiqi" id="sOrd"
														name="storeJurisdiction.Admin_jurisdiction">
														<s:iterator value="#session.admin_jurisdictions"
															status="stat" var="admin_jurisdictions">
															<option
																value="<s:property value="#admin_jurisdictions" />"><s:property
																	value="#admin_jurisdictions" /></option>
														</s:iterator>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="submit" class="btn btn-xs btn-green">确
											认</button>
									</div>
								</form>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改权限弹出窗口-->
					<div class="modal fade" id="changeChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal"
											action="StoreJurisdictionAction!" method="post">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">权限名：</label>
												<div class="col-xs-6 ">
													<input type="text" class="form-control input-sm duiqi"
														name="storeJurisdiction.Jurisdiction_name">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">描述：</label>
												<div class="col-xs-6 ">
													<textarea class="form-control input-sm duiqi"
														name="storeJurisdiction.Jurisdiction_describe"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">权限等级：</label>
												<div class="col-xs-6">
													<select class="form-control input-sm duiqi" id="sOrd"
														name="storeJurisdiction.Admin_jurisdiction">
														<option value="0" selected="selected"
															id="selectedAdmin_jurisdiction">0</option>
														<s:iterator value="#session.admin_jurisdictions"
															status="stat" var="admin_jurisdictions">
															<option
																value="<s:property value="#admin_jurisdictions" />"><s:property
																	value="#admin_jurisdictions" /></option>
														</s:iterator>
													</select>
												</div>
											</div>

										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除权限警告窗口-->
					<div class="modal fade" id="deleteChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该权限？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger"
										onclick="formSumbit('deleteStoreJurisdictionForm','StoreJurisdictionAction!deleteStoreJurisdictionById')">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--用户管理模块-->
				<div role="tabpanel" class="tab-pane" id="user">
					<div class="check-div form-inline">
						<div class="col-xs-3">
							<button class="btn btn-yellow btn-xs" data-toggle="modal"
								data-target="#addUser">添加用户</button>
						</div>
						<div class="col-xs-4">
							<input type="text" class="form-control input-sm"
								placeholder="输入文字搜索">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
						<div class="col-lg-3 col-lg-offset-2 col-xs-4"
							style=" padding-right: 40px;text-align: right;">
							<label for="paixu">排序:&nbsp;</label> <select
								class=" form-control">
								<option>地区</option>
							</select>
						</div>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-2 ">管理员账号</div>
							<div class="col-xs-2">（权值 ）权限名称</div>
							<div class="col-xs-2">真实姓名</div>
							<div class="col-xs-2">电子邮箱</div>
							<div class="col-xs-2">手机</div>
							<div class="col-xs-2">操作</div>
						</div>
						<div class="tablebody">
							<!-- 显示店家账户 -->
							<s:action name="StoreAccountAction!queryAllStoreAccount"></s:action>
							<s:iterator value="#session.storeAccounts" status="stat"
								var="storeAccounts">
								<s:if test="#storeAccounts.Registration_state==1">
									<div class="row">
										<div class="col-xs-2 ">
											<s:property value="#storeAccounts.Admin_account" />
										</div>
										<div class="col-xs-2">
											(<s:property value="#storeAccounts.Admin_jurisdiction" />)
											<s:iterator value="#session.storeJurisdictions" status="stat" var="storeJurisdictions">
											<s:if test="#storeAccounts.Admin_jurisdiction==#storeJurisdictions.Admin_jurisdiction">
											<s:property value="#storeJurisdictions.Jurisdiction_name" />
											</s:if>
											</s:iterator>
										</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_name" />
										</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_email" />
										</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_phone" />
										</div>
										<div class="col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#reviseUser"
												onclick="deleteStoreJurisdictionById(<s:property
												value="#storeAccounts.id"/>,'storeAccount.id');
												formSumbit('deleteStoreJurisdictionForm','StoreAccountAction!')
												"
												>修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteUser"
												onclick="deleteStoreJurisdictionById(<s:property
												value="#storeAccounts.id"/>,'storeAccount.id')"
												>删除</button>
										</div>
									</div>
								</s:if>
								<s:else>
									<div class="row" style="background-color: #f0f0f0">
										<div class="col-xs-2 ">
											<s:property value="#storeAccounts.Admin_account" />
										</div>
										<div class="col-xs-2">禁用</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_name" />
										</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_email" />
										</div>
										<div class="col-xs-2">
											<s:property value="#storeAccounts.Admin_phone" />
										</div>
										<div class="col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#reviseUser"
												onclick="deleteStoreJurisdictionById(<s:property
												value="#storeAccounts.id"/>,'storeAccount.id');
												formSumbit('deleteStoreJurisdictionForm','StoreAccountAction!')
												"
												>修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteUser"
												onclick="deleteStoreJurisdictionById(<s:property
												value="#storeAccounts.id"/>,'storeAccount.id')"
												>删除</button> 
										</div>
									</div>
								</s:else>
							</s:iterator>
						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

					<!--弹出添加用户窗口-->
					<div class="modal fade" id="addUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
								</div>
								<form class="form-horizontal" method="post"
											action="StoreAccountAction!addStoreAccountModal">
								<div class="modal-body">
									<div class="container-fluid" style="width: 150%">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">管理员账号：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														name="newStoreAccount.Admin_account">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">管理员密码：</label>
												<div class="col-xs-8 ">
													<input type="password" class="form-control input-sm duiqi"
														name="newStoreAccount.Admin_password">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														name="newStoreAccount.Admin_name">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														name="newStoreAccount.Admin_email">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">手机：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														name="newStoreAccount.Admin_phone">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<select class=" form-control select-duiqi"
														name="newStoreAccount.Admin_jurisdiction">
																<s:iterator value="#session.storeJurisdictions" status="stat" var="storeJurisdictions">
														<option value="<s:property value="#storeJurisdictions.Admin_jurisdiction" />" 
														><s:property value="#storeJurisdictions.Jurisdiction_name" /></option>
														</s:iterator>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="registration_state" value="true"
														id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input value="false"
														type="radio" name="registration_state"
														id="forbid"> 禁用
													</label>
												</div>
											</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="submit" class="btn btn-xs btn-green">保 存</button>
								</div>
							</form>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
								</div>
								<form class="form-horizontal" method="post"
											action="StoreAccountAction!updateOneStoreAccount">
											<!--  -->
								 <div class="modal-body">
									<div class="container-fluid">	
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">管理员账号：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
													value="<s:property value="#session.oneStoreAccount.Admin_account" />"
													name="newStoreAccount.Admin_account">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
													value="<s:property value="#session.oneStoreAccount.Admin_name" />"
													name="newStoreAccount.Admin_name">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
													value="<s:property value="#session.oneStoreAccount.Admin_email" />"
													name="newStoreAccount.Admin_email">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">手机：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
													value="<s:property value="#session.oneStoreAccount.Admin_phone" />"
													name="newStoreAccount.Admin_phone">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<select class=" form-control select-duiqi"
														name="newStoreAccount.Admin_jurisdiction">
														<s:iterator value="#session.storeJurisdictions" status="stat" var="storeJurisdictions">
														<s:if test="#storeJurisdictions.Admin_jurisdiction==#session.oneStoreAccount.Admin_jurisdiction">
														<option selected="selected" value="<s:property value="#storeJurisdictions.Admin_jurisdiction" />" 
														><s:property value="#storeJurisdictions.Jurisdiction_name" /></option>
														</s:if>
														<s:else>
														<option value="<s:property value="#storeJurisdictions.Admin_jurisdiction" />" 
														><s:property value="#storeJurisdictions.Jurisdiction_name" /></option>
														</s:else>
														</s:iterator>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<s:if test="#session.oneStoreAccount.Registration_state">
													<label class="control-label" for="anniu"> <input checked="checked"
														type="radio" name="registration_state" value="true"
														id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input value="false"
														type="radio" name="registration_state"
														id="forbid"> 禁用
													</label>
													</s:if>
													<s:else>
													<label class="control-label" for="anniu"> <input
														type="radio" name="registration_state" value="true"
														id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input value="false"  checked="checked"
														type="radio" name="registration_state"
														id="forbid"> 禁用
													</label>
													</s:else>
												</div>
											</div>
									</div>
								 </div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</form>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该用户？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" onclick="formSumbit('deleteStoreJurisdictionForm','StoreAccountAction!deleteStoreAccountById')"
									 class="btn  btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!-- 修改密码模块 -->
				<div role="tabpanel" class="tab-pane" id="chan">
					<div class="check-div"></div>
					<div
						style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
						<form class="form-horizontal"
							action="StoreAccountAction!adminChangePassword" method="post">
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">原密码：</label>
								<div class="col-xs-5">
									<input type="password" class="form-control input-sm duiqi"
										id="sKnot" style="margin-top: 7px;" name="oldpassword">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">新密码：</label>
								<div class="col-xs-5">
									<input type="password" class="form-control input-sm duiqi"
										id="sKnot" style="margin-top: 7px;" name="newpassword">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
								<div class="col-xs-5">
									<input type="password" class="form-control input-sm duiqi"
										id="sKnot" style="margin-top: 7px;">
								</div>
							</div>
							<div class="form-group text-right">
								<div class="col-xs-offset-4 col-xs-5"
									style="margin-left: 169px;">
									<button type="reset" class="btn btn-xs btn-white">取 消</button>
									<button type="submit" class="btn btn-xs btn-green">保存</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!--地区管理模块-->
				<div role="tabpanel" class="tab-pane" id="scho">

					<div class="check-div form-inline">
						<div class="col-xs-3">
							<button class="btn btn-yellow btn-xs" data-toggle="modal"
								data-target="#addSchool">添加地区</button>
						</div>
						<div class="col-lg-4 col-xs-5">
							<input type="text" class=" form-control input-sm "
								placeholder="输入文字搜索">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
						<div class="col-lg-3 col-lg-offset-1 col-xs-3"
							style="padding-right: 40px;text-align: right;float: right;">
							<label for="paixu">排序:&nbsp;</label> <select class="form-control">
								<option>地区</option>
								<option>排名</option>
							</select>
						</div>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-1 ">编码</div>
							<div class="col-xs-2 ">地区</div>
							<div class="col-xs-1">经度</div>
							<div class="col-xs-1">维度</div>
							<div class="col-xs-2">建筑信息</div>
							<div class="col-xs-2">人员列表</div>
							<div class="col-xs-2">操作</div>
						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-1 ">1</div>
								<div class="col-xs-2">国际关系地区</div>
								<div class="col-xs-1">45.0</div>
								<div class="col-xs-1">95.90</div>
								<div class="col-xs-2">
									<a class="linkCcc">查看</a>
								</div>
								<div class="col-xs-2">
									<a class="linkCcc">查看</a>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#reviseSchool">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteSchool">删除</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

					<!--弹出添加用户窗口-->
					<div class="modal fade" id="addSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加地区</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">地区名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">经度：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">纬度：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">简称：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改地区</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">地区名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">经度：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">纬度：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">简称：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该地区？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--规则管理模块-->
				<div role="tabpanel" class="tab-pane" id="regu"
					style="padding-top: 50px;">
					<div class="data-div">
						<div class="tablebody col-lg-10 col-lg-offset-1">
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax1"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">30</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax2"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">15</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax3"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">60</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax4"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">100</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax5"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">7</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax6"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">10</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white"
									data-dismiss="modal">取 消</button>
								<button type="button" class="btn btn-xs btn-green">保 存</button>
							</div>
						</div>
					</div>
				</div>
				<!--时间段管理模块-->
				<div role="tabpanel" class="tab-pane" id="time">
					<div class="check-div form-inline">
						<span href="#sitt" aria-controls="sitt" role="tab"
							data-toggle="tab" style="cursor: pointer;"><span
							class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-yellow btn-xs " data-toggle="modal"
							data-target="#addTime">添加时间段</button>

					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-3 ">编码</div>
							<div class="col-xs-3">开始</div>
							<div class="col-xs-3">结束</div>

							<div class="col-xs-3">操作</div>
						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-3 ">6426398978</div>
								<div class="col-xs-3">10:10</div>
								<div class="col-xs-3">19:30</div>
								<div class="col-xs-3">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#changeTime">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteTime">删除</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

					<!--弹出增加时间段窗口-->
					<div class="modal fade" id="addTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">开始时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">结束时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改增加时间段窗口-->
					<div class="modal fade" id="changeTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">开始时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">结束时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-green btn-xs">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!--弹出删除时间段警告窗口-->
					<div class="modal fade" id="deleteTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该时间段？</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-danger btn-xs">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--座位管理模块-->
				<div role="tabpanel" class="tab-pane" id="sitt">

					<div class="check-div form-inline" style="">
						<div class="col-lg-4 col-xs-7 col-md-6">
							<button class="btn btn-yellow btn-xs" data-toggle="modal"
								data-target="#addBuilding">添加楼宇</button>
							<label for="paixu">楼宇:&nbsp;</label> <select
								class=" form-control">
								<option>第一教学楼</option>
								<option>逸夫楼</option>
								<option>综合楼</option>
								<option>图书馆</option>
							</select>
							<button class="btn btn-white btn-xs ">修 改</button>
						</div>
						<div class="col-lg-4 col-lg-offset-4 col-xs-4 col-md-5 "
							style="padding-right: 40px;text-align: right;">
							<input type="text" class=" form-control input-sm "
								placeholder="输入文字搜索">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-2 " style="padding-left: 20px;">楼层</div>
							<div class="col-xs-3" style="padding-left: 20px;">区域</div>
							<div class="col-xs-2" style="padding-left: 2px;">座位数</div>
							<div class="col-xs-2">空余座位</div>
							<div class="col-xs-3">操作</div>
						</div>
						<div class="tablebody">

							<div class="sitTable">
								<table class="table  table-responsive">
									<tr>
										<td valign="middle" class="col-xs-2" rowspan="3">图书馆第一层</td>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
									<tr>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
									<tr>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
								</table>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

					<!--弹出添加楼宇窗口-->
					<div class="modal fade" id="addBuilding" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">楼层：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">区域：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">座位数：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">用户名：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm" id="sLink"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sOrd"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">电话：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">地区：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="situation" id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="situation" id="forbid"> 禁用
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该用户？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-green btn-xs">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!--座位详情模块-->
				<div role="tabpanel" class="tab-pane" id="sitDetail">
					<div class="check-div form-inline">
						<span href="#sitt" aria-controls="sitt" role="tab"
							data-toggle="tab" style="cursor: pointer;"><span
							class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-6 ">座位编码</div>
							<div class="col-xs-6 ">座位名称</div>

						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-6 ">sad2345fas345533</div>
								<div class="col-xs-6">王座</div>

							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

				</div>
				<!--人员管理模块-->
				<div role="tabpanel" class="tab-pane" id="stud">
					<div class="check-div form-inline">
						<div class="col-xs-5">
							<input type="text" class=" form-control input-sm"
								placeholder="输入文字搜索" style="	!height: 40px!important;">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
						<div class="col-xs-4 col-lg-4  col-md-5"
							style="padding-right: 40px;text-align: right;float: right;">
							<label for="daoru">导入人员信息表:&nbsp;</label>
							<button class="btn btn-white btn-xs " id="daoru">选取文件</button>
							<button class="btn btn-white btn-xs ">导入</button>
						</div>

					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-2 ">学号</div>
							<div class="col-xs-1 ">姓名</div>
							<div class="col-xs-2">院系</div>
							<div class="col-xs-2">年年</div>
							<div class="col-xs-2 ">学习时长</div>
							<div class="col-xs-2">违约次数</div>
							<div class="col-xs-1">操作</div>
						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-2 ">6426398978</div>
								<div class="col-xs-1">邓超</div>
								<div class="col-xs-2">计算机地区</div>
								<div class="col-xs-2">2013年</div>
								<div class="col-xs-2">15</div>
								<div class="col-xs-2">2</div>
								<div class="col-xs-1">
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteObey">清除违约</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
					<ul class="pagination">
						<li><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
						</select> 页</li>
						<li class="gray">共20页</li>
						<li><i class="glyphicon glyphicon-menu-left"> </i></li>
						<li><i class="glyphicon glyphicon-menu-right"> </i></li>
					</ul>
					</footer>

					<!--弹出删除违约记录警告窗口-->

					<div class="modal fade" id="deleteObey" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该违约记录？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
			</div>
		</div>
	</div>
	<!-- 滑块js -->
	<!--	<script type="text/javascript">
        scale = function(btn, bar, title, unit) {
                this.btn = document.getElementById(btn);
                this.bar = document.getElementById(bar);
                this.title = document.getElementById(title);
                this.step = this.bar.getElementsByTagName("div")[0];
                this.unit = unit;
                this.init();
        };
        scale.prototype = {
                init: function() {
                        var f = this,
                                g = document,
                                b = window,
                                m = Math;
                        f.btn.onmousedown = function(e) {
                                var x = (e || b.event).clientX;
                                var l = this.offsetLeft;
//						var max = f.bar.offsetWidth - this.offsetWidth;
                                var max = f.bar.offsetWidth-20 ;
                                g.onmousemove = function(e) {
                                        var thisX = (e || b.event).clientX;
                                        var to = m.min(max, m.max(-2, l + (thisX - x)));
                                        f.btn.style.left = to+ 'px';
                                        f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                        b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                };
                                g.onmouseup = new Function('this.onmousemove=null');
                        };
                },
                ondrag: function(pos, x) {
                        this.step.style.width = Math.max(0, x) +2+ 'px';
                        this.title.innerHTML = pos / 10 + this.unit + "";
                }
        }
        new scale('btn0', 'bar0', 'title0', "分钟");
        new scale('btn1', 'bar1', 'title1', "分钟");
        new scale('btn2', 'bar2', 'title2', "天");
        new scale('btn3', 'bar3', 'title3', "次");
</script>
-->
	<script src="js/jquery.nouislider.js"></script>
	<!-- this page specific inline scripts -->
	<script>
		//min/max slider
		function huadong(my, unit, def, max) {
			$(my).noUiSlider({
				range : [ 0, max ],
				start : [ def ],
				handles : 1,
				connect : 'upper',
				slide : function() {
					var val = Math.floor($(this).val());
					$(this).find(".noUi-handle").text(
						val + unit
					);
					console.log($(this).find(".noUi-handle").parent().parent().html());
				},
				set : function() {
					var val = Math.floor($(this).val());
					$(this).find(".noUi-handle").text(
						val + unit
					);
				}
			});
			$(my).val(def, true);
		}
		huadong('.slider-minmax1', "分钟", "5", 30);
		huadong('.slider-minmax2', "分钟", "6", 15);
		huadong('.slider-minmax3', "分钟", "10", 60);
		huadong('.slider-minmax4', "次", "2", 10);
		huadong('.slider-minmax5', "天", "3", 7);
		huadong('.slider-minmax6', "天", "8", 10);
	</script>
</body>

</html>