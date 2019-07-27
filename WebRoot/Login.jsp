<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>Login PHP</title>
	<link rel="stylesheet" href="css/login_style.css" />
<script type="text/javascript">
	//form提交前，验证：营销活动最少选择两个
	function check(){
	    var verification_code=document.getElementById("verification_code").value;
	    var verification_code1=document.getElementById("verification_code1").value;
	    if(verification_code==verification_code1){
	    return true;
	    }else{
	    alert("输入验证码错误");
	    return false;}
	}
</script>
<script>
	function settable1() {
		document.getElementById("div1").style.display = "block";
		document.getElementById("div2").style.display = "none";
		document.getElementById("div3").style.display = "none";
		document.getElementById("div4").style.display = "none";
	}
	function settable2() {
		document.getElementById("div1").style.display = "none";
		document.getElementById("div2").style.display = "block";
		document.getElementById("div3").style.display = "none";
		document.getElementById("div4").style.display = "none";
	}
	function settable3() {
		document.getElementById("div1").style.display = "none";
		document.getElementById("div2").style.display = "none";
		document.getElementById("div3").style.display = "block";
		document.getElementById("div4").style.display = "none";
	}	
	function setform1() {
		document.getElementById("phone").style.display = "block";
		document.getElementById("mailbox").style.display = "none";
	}
	function setform2() {
		document.getElementById("phone").style.display = "none";
		document.getElementById("mailbox").style.display = "block";
	}
	function getverification_code() {	
		document.getElementById("verification_code_changepassword").value="123456";
	}
	function getverification_code1() {	
		document.getElementById("verification_code_phoneRegistry").value="123456";
	}
	function getverification_code2() {	
		document.getElementById("verification_code_mailboxRegistry").value="123456";
	}
</script>
</head>
  <%
  	String base = "0123456789";   
    Random random = new Random();   
    StringBuffer sb = new StringBuffer(); 
    for (int i = 0; i < 5; i++) {   
        int number = random.nextInt(base.length());   
        sb.append(base.charAt(number));   
    }  
    String verification_code=sb.toString(); 
   %>
<body>
<div><jsp:include page="Header.jsp"></jsp:include></div><br>
	<div class="lg-container" id="div1">
		<h1>用户登录</h1>
		<form action="RegistryAction!loginRegistry" method="post" onsubmit="return check()" id="lg-form" name="lg-form" >
			<div>
				<input type="text" name="userName" id="username" placeholder="输入用户名：邮箱或手机号码"/>
			</div>	
			<div>
				<input type="password" name="password" id="password" placeholder="密码" />
			</div>
			<div>		
				<input type="text" id="verification_code" placeholder="请输入验证码"><br>
			</div>	
			<div>
				<input type="text" value="<%=verification_code%>" id="verification_code1" readonly="readonly"><br>
			</div>
			<div>				
				<button type="submit" id="login">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset" id="login">重置</button>
			</div>
			<div>
				<input type="button" value="忘记密码" onclick="settable2()"></input>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="免费注册" onclick="settable3()"></input>
			</div>
		</form>
	</div>
	<div class="lg-container" id="div2" style="display: none">
		<h1>修改密码</h1>
		<form action="RegistryAction!changePassword" method="post" onsubmit="return " id="lg-form" name="lg-form" >
			<div>
				<input type="text" name="userName" id="username" placeholder="输入用户名：邮箱或手机号码"/>
			</div>	
			<div>
				<input type="text" id="verification_code_changepassword" placeholder="短信验证码或者邮箱验证码："/>
			</div>
			<div>
				<input type="button" value="获取验证码" onclick="getverification_code()"/>
			</div>
			<div>		
				<input type="password" id="password" placeholder="新密码" />
			</div>	
			<div>		
				<input type="password" name="password" id="password2" placeholder="重新输入新密码" />
			</div>	
			<div>				
				<button type="submit">修改密码</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">重置</button>
			</div>
			<div>
				<input type="button" value="用户登录" onclick="settable1()"></input>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="免费注册" onclick="settable3()"></input>
			</div>
		</form>
	</div>
	<div class="lg-container" id="div3" style="display: none">
		<h1>免费注册</h1>
		<div id="lg-form" name="lg-form">
		<input type="button" value="手机注册" onclick="setform1()"></input>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="邮箱注册" onclick="setform2()"></input>
		</div>
		<div style="display: block" id="phone">
			<form method="post" action="RegistryAction!addRegistry" id="lg-form" name="lg-form">
				<table>
					<tbody>
						<tr>
							<td colspan="3">
								<input type="text" name="registry.Mobile_phone" placeholder="手机号码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3"> 
								<input type="password" name="registry.Password" placeholder="设置密码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="password" placeholder="确认密码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="text" name="registry.Nickname" placeholder="昵称："/>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="验证码："/>
							</td>
							<td>
								<input type="text" value="<%=verification_code%>" readonly="readonly"><br>
							</td>
							<td>
								<input type="button" value="看不清？换一张" />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="text" id="verification_code_phoneRegistry" placeholder="短信验证码："/>
							</td>
							<td>
								<input type="button" value="获取验证码" onclick="getverification_code1()"/>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox">
								<a href="">我已阅读并同意《宠物网站协议》</a>
								</input>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="3">
								<button type="submit">注册</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">重置</button>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
				<input type="button" value="用户登录" onclick="settable1()"></input>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="免费注册" onclick="settable3()"></input>
				</div>
			</form>
		</div>
		<div style="display: none" id="mailbox">
			<form method="post" action="RegistryAction!addRegistry" id="lg-form" name="lg-form">
				<table>
					<tbody>
						<tr>
							<td colspan="3">
								<input type="text" name="registry.Mobile_phone" placeholder="手机号码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="text" name="registry.Mailbox" placeholder="邮箱："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="password" name="registry.Password" placeholder="设置密码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="password" placeholder="确认密码："/>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="text" name="registry.Nickname" placeholder="昵称："/>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="验证码："/>
							</td>
							<td>
								<input type="text" value="<%=verification_code%>" readonly="readonly"><br>
							</td>
							<td>
								<input type="button" value="看不清？换一张" />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="text" id="verification_code_mailboxRegistry" placeholder="短信验证码："/>
							</td>
							<td>
								<input type="button" value="获取验证码" onclick="getverification_code2()"/>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox">
								<a href="">我已阅读并同意《宠物网站协议》</a>
								</input>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="3">
								<button type="submit">注册</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">重置</button>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
				<input type="button" value="用户登录" onclick="settable1()"></input>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="免费注册" onclick="settable3()"></input>
				</div>
			</form>
		</div>
	</div>
	<div><jsp:include page="Footer.jsp"></jsp:include></div>
</body>
</html>