<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application"/>  
    <script>  
        <%--JS gloable varilible--%>  
        var contextPath = "${contextPath}";  
    </script> 
<script src="<%=basePath%>frontstage/js/course/nav2.js"></script>
<script src="<%=basePath%>frontstage/myAlert/myAlert.js"></script>
<link rel="stylesheet"
	href="<%=basePath%>frontstage/myAlert/myAlert.css" />

<nav class="navbar navbar-default">
	<div class="container-fluid container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img
				src="<%=basePath%>frontstage/img/logo.png" class="img-responsive" />
			</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%=basePath%>course/index.action">课程 <span
						class="sr-only">(课程)</span>
				</a>
				</li>
				<li><a href="#">问答</a>
				</li>
				<li><a href="#">我的课程</a>
				</li>
			</ul>
			<c:if test="${sessionScope.user == null }">
				<ul class="nav navbar-nav navbar-right nav-login">
					<li><a href="javascript:loginModal()"><span
							class="fa fa-user"></span>&nbsp;登录</a>
					</li>
					<li><a href="#" data-toggle="modal" data-target="#userRegist"><span
							class="fa fa-edit"></span>&nbsp;注册</a>
					</li>
				</ul>
			</c:if>
			<c:if test="${sessionScope.user != null }">
				<ul class="nav navbar-nav navbar-right nav-user">
					<li><a title="消息" class="info" href="#"><span
							class="fa fa-comment-o" style="font-size: 24px;"></span>&nbsp;</a>
					</li>
					<li class="user-info"><a class="user"
						href="userInfo/userInfoUI.action"><img class="img-circle"
							src="<%=basePath%>${sessionScope.user.userHead }">
					</a>
						<div class="g-user-card">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="media">
										<div class="media-left">
											<a href="userInfo/userInfoUI.action"> <img
												class="media-object img-circle"
												src="<%=basePath%>${sessionScope.user.userHead }" width="64" alt="my">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">${sessionScope.user.userName }</h4>
											经验${sessionScope.user.userinfo.userExp }
										</div>
									</div>
								</div>
								<div class="panel-body">
									<div class="card-links">
										<a href="#" class="my-mooc pull-left">我的课程<i
											class="dot-update"></i>
										</a> <a href="#" class="my-sns pull-left">----</a>
									</div>
									<div class="card-history">
										<div class="media">
											<div class="media-left">
												<span class="fa fa-clock-o"></span>
											</div>
											<div class="media-body">
												<h4 class="media-heading">Python文件处理</h4>
												1-1 课程简介和基本概念
											</div>
										</div>
										<a href="#" class="video-goon">继续</a>
									</div>
								</div>
								<div class="panel-footer">
									<div class="card-sets clearfix">
										<a href="userInfo/userInfoUI.action" class="pull-left">个人设置</a>
										<a href="<%=basePath%>logout/logout.action" id="user-exit"
											class="pull-right">退出</a>
									</div>
								</div>
							</div>
						</div></li>
				</ul>
			</c:if>
			<form class="navbar-form navbar-right form-inline" role="search">
				<div class="form-group">
					<input type="text" width="80%" class="form-control"
						placeholder="搜索问答、课程">
				</div>
				<button type="submit" class="border-blue button border-2x">搜索</button>
			</form>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<div class="modal fade" id="userRegist" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					<span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;用户注册
				</h4>
			</div>
			<form id="frmUserRegist" class="form-horizontal"
				action="javascript:regist();" method="POST">
				<div class="modal-body">
					<div class="form-group">
						<label for="input01" class="col-md-2 control-label">用户名</label>
						<div class="col-md-10">
							<input type="text" name="userName" class="form-control"
								id="input01" placeholder="字母、数字、汉字皆可"> <span
								class="icon-ok"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="input02" class="col-md-2 control-label">邮箱</label>
						<div class="col-md-10">
							<input type="email" name="userEmail" class="form-control"
								id="input02" title="请输入你的邮箱" placeholder="请输入你的邮箱"> <span
								class="icon-remove"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="input03" class="col-md-2 control-label">密码</label>
						<div class="col-md-10">
							<input type="password" name="userPwd" class="form-control"
								id="input03" title="请输入你的密码" placeholder="请输入你的密码">
						</div>
					</div>
					<div class="form-group">
						<label for="input04" class="col-md-2 control-label">确认密码</label>
						<div class="col-md-10">
							<input type="password" name="confirmPassword"
								class="form-control" id="input04" title="请再次输入你的密码"
								placeholder="请再次输入你的密码">
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group">
							<div class="col-md-10 pull-right">
								<input type="submit" class="btn btn-primary" value="注册">
								<input type="reset" class="btn btn-primary" value="重置">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<div class="modal fade" id="userLogin" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="false">
	<div class="modal-dialog modal-xs">
		<div class="modal-content">
			<div class="modal-body">
				<form id="frmUserLogin" action="javascript:login()" method="POST"
					class="form-horizontal">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户登录
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="inputuserName" class="col-md-2 control-label">用户名</label>
							<div class="col-md-10">
								<input type="text" name="userName" class="form-control"
									id="inputuserName" placeholder="用户名/手机号/邮箱账号"> <span
									class="icon-remove"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="inputuserPwd" class="col-md-2 control-label">密码</label>
							<div class="col-md-10">
								<input type="password" name="userPwd" class="form-control"
									id="inputuserPwd" placeholder="密码"> <span
									class="icon-remove"></span>
							</div>
						</div>
						<p>
							<label class="checkbox-inline"> <input type="checkbox" />十天内免登录
							</label>
						</p>
						<div class="form-group">
							<label class="col-md-9 control-label">
								<div id="msg" class="container" style="color: #660000"></div> </label>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group">
							<button type="submit" class="btn btn-primary" name="login">登录</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->