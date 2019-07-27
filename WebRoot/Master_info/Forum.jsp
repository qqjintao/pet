<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>个人主页</title>

<link rel="stylesheet" href="Master_info/css/Global.css">
<link rel="stylesheet" href="Master_info/css/Main.css">

</head>

<body>
	<!--头部开始-->
	<div class="global_header">
		<!--头部导航开始-->
		<div id="header" style="height:39px;">
			<div id="top">
				<div class="top_left"></div>
			</div>
		</div>
		<!--头部导航结束-->
		<!--头部导航结束-->
		<!--nav导航开始-->
		<!--banner开始-->
		<div class="hd">
			<div class="logo">
				 
			</div>
			<div class="banner">
				<a href="#" target="_blank"><img src="./images/uc/banner.jpg"
					width="775" height="95" /></a>
			</div>
		</div>
		<!--banner开始-->
		<!--nav导航开始-->
		<div class="nav">
			<ul> 
				<li><a href="/pet3" target="_blank">锦涛宠店首页</a></li>
				<li class="line"></li>
				<li><a href="/pet3/ForumAction.action" target="_blank">宠物论坛</a></li>
				<li class="line"></li>
				<li><a href="http://localhost:8080/electronicMarket/baike.jsp" target="_blank">宠物百科</a></li>
				<li class="line"></li>
				<li><a href="/pet3/Master_info/Service.jsp" target="_blank">宠物服务</a></li>
			</ul>
		</div>
		<!--nav导航结束-->
		<!--nav导航结束-->
	</div>
	<!--头部结束-->
	<!--主体部分开始-->
	<div class="main clearfix">
		<!--左侧开始-->
		<!--左侧开始-->
		<div class="main_left">
			<!--个人信息开始-->
			<div class="person_info">
				<div class="user_head">
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td height="120" align="center"><a href=""><img
									src="Master_info/<s:property value="master_table.Head_portrait"/>"
									width="120" height="120" /></a></td>
						</tr>
					</table>
				</div>
				<div class="nick_name">
					<a href=""><s:property value="#session.registry.Nickname" /></a>
				</div>
				<div class="num"></div>
				<div class="info">
					<ul>
						<li><a href="#">0</a><span>日志</span></li>
						<li><a href="#">0</a><span>照片</span></li>
						<li class="no_border"><a href="#"><s:property
									value="forumsum" /></a><span>啊呜</span></li>
					</ul>
				</div>
			</div>
			<!--个人信息结束-->
			<!--左侧导航开始-->
			<div class="left_nav">
				<ul>
					<li class="current"><a class="icon01"
						href="#">我的主页 </a></li>
				</ul>
				<fieldset class="sub_title">
					<legend>我的宠物</legend>
				</fieldset>
				<ul>
				</ul>
				<fieldset class="sub_title">
					<legend>关系</legend>
				</fieldset>
				<ul>
				</ul>
			</div>
			<!--左侧导航结束-->
			<!--我的好友开始-->
			<div class="friends" id="friends1">
				<div class="hd">
					<h3>我的好友</h3>
				</div>
				<div class="bd">
					<div class="carousel_cont" style="">
						<ul>
							<li><div class="date">暂无好友</div></li>
						</ul>
					</div>
				</div>
			</div>
			<!--我的好友结束-->
			<!--最近访客开始-->
			<div class="friends" id="friends2">
				<div class="hd">
					<h3>最近访客</h3>
				</div>
				<div class="bd">
					<div class="carousel_cont" style="">
						<ul>
							<li><div class="date">暂无访客</div></li>
						</ul>
					</div>
				</div>
			</div>
			<!--最近访客结束-->
		</div>
		<!--左侧结束-->
		<!--左侧结束-->
		<div class="plc_main">
			<!--中间开始-->
			<div class="main_center" id="mainCenter">
				<div class="fn_info">
					<span class="nick_name"><s:property
							value="#session.registry.Nickname" />
							<s:if test='master_table.Sex=="男"'>
							<i class="male"></i>
							</s:if>
							<s:else>
							<i class="female"></i>
							</s:else> 	
							</span><span class="area"><s:property
							value="#master_table.Province" />&nbsp;<s:property
							value="#master_table.City" /></span><span><a href="#">修改资料</a></span><span><a
						href="#">设置</a></span>
				</div>
				<!--微博输入开始-->
				<div class="talk_box" id="bqexp">
					<div class="hd">
						<div class="tab">
							<a class="weibo" href="#">啊呜</a>
						</div>
						<span class="info_word"></span>
					</div>
					<form action="ForumAction!addNewForum" method="post">
						<div class="send_cont">
							话题所属类别： <select name="forum.Subclass_code">
								<s:iterator value="subclasslist" status="status"
									var="subclasslist">
									<option
										value="<s:property value="#subclasslist.Subclass_code"/>"
										selected="selected">
													<s:property value="#subclasslist.Subclass_name"/>
													</option>
								</s:iterator>
							</select> 标题：<input type="text" name="forum.ForumMessages_title">
							内容:
							<textarea cols="45" rows="5" name="forum.ForumMessages_context"></textarea>
							<i class="arr_ico"></i><span class="num" id="bqtexsub"></span>
							<!-- 超出字数 addClass('warning') -->
						</div>
						<div class="send_fun">
							<div class="pub">
								<br> <input class="disable" type="submit" id="bqemoSubmit1"
									value=" " />
							</div>
							<div class="sync"></div>
						</div>
					</form>
				</div>

				<div class="feed_tab">
					<ul>
						<li class="current"><a href="#">全部动静</a></li>
					</ul>
				</div>
				<!--全部动态开始-->
				<div class="feeds">
					<div class="feed">
						<s:iterator value="forums" status="st" var="forums">
							<!--1个标准列表循环单项开始-->
							<dl class="feed_list">
								<!-- 发布微博动态开始 -->
								<dt class="head">
									<a href="#"><img
										src="Master_info/<s:property value="#forums.Head_portrait" />"
										style="width:50px;" /></a>
								</dt>
								<dd class="content">
									<p class="feed_list_content">
										<a href="#" target="_blank" class="wname"><s:property
												value="#forums.Nickname" /></a><span class="tips_txt">发表啊呜</span>
									</p>
									标题：
									<s:property value="#forums.ForumMessages_title" />
									<br> 内容：
									<s:property value="#forums.ForumMessages_context" />
									<br>
									<!-- 动态操作开始 -->
									<p class="info">
										<span class="date">话题：<font color="#FF0000"><s:property
												value="#forums.Subclass_name" /></font></span><span> <i
											class="wline">|</i> <a class="bqplwe"
											onclick="document.getElementById('<s:property value="#forums.Forum_code" />').style.display='block';">评论</a></span>
											<span> <i
											class="wline">|</i> <a class="bqplwe"
											onclick="document.getElementById('<s:property value="#forums.Forum_code" />').style.display='none';">收起评论</a></span>
									</p><div id="<s:property value="#forums.Forum_code" />" style="display: none;">
										<s:form action="ForumAction!addNewForumMessages">
											<input type="text" name="forumMessages.Forum_code" value="<s:property value="#forums.Forum_code" />" style="display: none;">
											<s:textfield name="forumMessages.ForumMessages_title" label="留言标题"></s:textfield>
											<s:textfield name="forumMessages.ForumMessages_context" label="留言内容"></s:textfield>
											<s:submit value="发布"></s:submit>
										</s:form> 
									</div>
									<s:iterator value="forumMessageslist" status="st"
										var="forumMessageslist">
										<s:if test="#forums.Forum_code==#forumMessageslist.Forum_code">
											<dt class="head">
												<a href="#"></a>
											</dt>
											<dd class="content">
												<p class="feed_list_content">
													<a href="#" target="_blank" class="wname"><s:property
															value="#forumMessageslist.Mobile_phone" /></a><span
														class="tips_txt">发表留言</span>
												</p>
												标题：
												<s:property value="#forumMessageslist.ForumMessages_title" />
												<br> 内容：
												<s:property value="#forumMessageslist.ForumMessages_context" />
												<br>
												<!-- 动态操作开始 -->
												<p class="info">
													<span class="date">留言时间：<s:property
															value="#forumMessageslist.ForumMessages_time" /></span>
												</p>
											</dd>
										</s:if>
									</s:iterator>
									<!-- 动态操作结束-->
								</dd>
								<!-- 发布微博动态结束 -->
							</dl>
							<!--1个标准列表循环单项结束-->
						</s:iterator>
					</div>
					<!--分页开始-->
					<div class="page_wrap">
						<div class="showpage"></div>
					</div>
					<!--分页结束-->
				</div>
				<!--全部动态结束-->
			</div>
			<!--中间结束-->
			<!--右侧开始-->
			<div class="main_right">
				<!--签到开始-->
				<div class="qd">
					<span class="date"><s:property value="date"/></span><strong class="week">星期<s:property value="week"/></strong><span
						class="time_tip">DAY</span><strong class="time">0</strong><span
						class="checkin_done " id="checkindone" onclick="alert('签到成功');">签到</span>
				</div>
				<!--签到结束-->
			</div>
			<!--右侧结束-->
		</div>
	</div>
	<!--主体部分结束-->
</body>
</html>