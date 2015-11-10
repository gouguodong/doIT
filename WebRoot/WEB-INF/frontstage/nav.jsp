<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>导航条</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="<%=basePath %>frontstage/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=basePath %>frontstage/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath %>frontstage/css/global.css" />
<script type="text/javascript" src="<%=basePath %>frontstage/js/jquery-1.10.2.min.js"></script>
<script src="<%=basePath %>frontstage/js/bootstrap.min.js"></script>
<script src="<%=basePath %>frontstage/js/global.js"></script>
<script src="<%=basePath %>frontstage/js/bootstrapValidator.min.js"></script>
<script src="<%=basePath %>frontstage/js/course/nav.js"></script>
<script type='text/javascript' src='<%=basePath %>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath %>dwr/util.js'></script>
<script type='text/javascript' src='<%=basePath %>dwr/interface/SendPushService.js'></script>
<link rel="stylesheet" href="<%=basePath %>frontstage/myAlert/myAlert.css" />
<script src="<%=basePath %>frontstage/myAlert/myAlert.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body>
	<nav class="navbar navbar-default header">
	  <div class="container-fluid container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#"><img src="<%=basePath %>frontstage/img/logo.png" class="img-responsive" /></a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="${idx == 1 ? 'active':'' }"><a href="course/index.action">课程 <span class="sr-only">(课程)</span></a></li>
	        <li class="${idx == 2 ? 'active':'' }"><a href="question/index.action">问答</a></li>
	        
	        <c:if test="${sessionScope.user == null }">
	          <li class="${idx == 3 ? 'active':'' }"><a href="javascript:myAlert('您还没有登录')">我的课程</a></li>
	      	</c:if>
	      	<c:if test="${sessionScope.user != null }">
	          <li class="${idx == 3 ? 'active':'' }"><a href="usercourse/attention.action">我的课程</a></li>
	      	</c:if>
	      	<li class="${idx == 4 ? 'active':'' }"><a href="code/codeUI.action">在线运行</a></li>
	      	<li class="${idx == 5 ? 'active':'' }"><a href="courseMap/map.action">课程图谱</a></li>
	      </ul>
	      <c:if test="${sessionScope.user == null }">
		      <ul class="nav navbar-nav navbar-right nav-login">
		        <li><a href="javascript:loginModal()"><span class="fa fa-user"></span>&nbsp;登录</a></li>
		        <li><a href="#" data-toggle="modal" data-target="#userRegist"><span class="fa fa-edit"></span>&nbsp;注册</a></li>	        
		      </ul>
	      </c:if>
	      <c:if test="${sessionScope.user != null }">
		      <ul class="nav navbar-nav navbar-right nav-user _dataid" data-id="${sessionScope.user.userId }">
		        <li>
		        	<a title="消息" class="info" href="message/messageUI.action">
		        		<span class="fa fa-comment-o" style="font-size: 24px;"></span>&nbsp;
		        		<span class="_messageNumber" style="color: red;"></span>&nbsp;
		        	</a>
		        </li>
		        <li class="user-info">
		        	<a class="user" href="userInfo/userInfoUI.action"><img class="img-circle" src="${sessionScope.user.userHead }"></a>
		        	<div class="g-user-card">
	                    <div class="panel panel-default">
	                    	<div class="panel-heading">
	                    		<div class="media">
								  <div class="media-left">
								    <a href="userInfo/userInfoUI.action">
								      <img class="media-object img-circle" src="${sessionScope.user.userHead }" width="64" alt="${sessionScope.user.userName }">
								    </a>
								  </div>
								  <div class="media-body">
								    <h4 class="media-heading">${sessionScope.user.userName }</h4>
								    	等级${sessionScope.user.userinfo.userLevel }
								         经验${sessionScope.user.userinfo.userExp }
								  </div>
								</div>
	                    	</div>
	                    	<div class="panel-body">
	                    		<div class="card-links">
	                                <a href="usercourse/attention.action" class="my-mooc pull-left">我的课程<i class="dot-update"></i></a>
	                                <a href="javascript:void(0)" class="my-sns pull-left">----</a>
	                            </div>
	                    	</div>
	                    	<div class="panel-footer">
	                    		<div class="card-sets clearfix">
	                                <a href="userInfo/userInfoUI.action" class="pull-left">个人设置</a>
	                                <a href="logout/logout.action" id="user-exit" class="pull-right">退出</a>
	                            </div>
	                    	</div>
	                    </div>
	                </div>
		        </li>	        
		      </ul>
		  </c:if>
	      <form action="course/search.action" class="navbar-form navbar-right form-inline" role="search" method="post">
	        <div class="form-group">
	          <input type="text" width="80%" name="courseName" class="_courseName form-control" placeholder="课程搜索">
	        </div>
  	        <button type="submit" class="border-blue button border-2x">搜索</button>
	      </form>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>  
	<div class="modal fade" id="userRegist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">
	          <span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;用户注册
	        </h4>
	      </div>
	      <form id="frmUserRegist" class="form-horizontal" action="javascript:regist();">
	        <div class="modal-body">
	          <div class="form-group">
	            <label for="inputuserName" class="col-md-2 control-label">用户名</label>
	            <div class="col-md-10">
	              <input type="text" name="userName" class="form-control" id="inputuserName" placeholder="字母、数字、汉字皆可">
	                  <span class="icon-ok"></span>
	            </div>
	          </div>
	          <div class="form-group">
	            <label for="inputuserEmail" class="col-md-2 control-label">邮箱</label>
	            <div class="col-md-10">
	              <input type="emial" name="userEmail" class="form-control" id="inputuserEmail" title="请输入你的邮箱" placeholder="请输入你的邮箱" >
	                <span class="icon-remove"></span>
	            </div>
	          </div>
	          <div class="form-group">
	            <label for="inputuserPwd" class="col-md-2 control-label">密码</label>
	            <div class="col-md-10">
	              <input type="password" name="userPwd" class="form-control" id="inputuserPwd" title="请输入你的密码"
	                  placeholder="请输入你的密码" >
	            </div>
	          </div>
	          <div class="form-group">
	            <label for="confirmPassword" class="col-md-2 control-label">确认密码</label>
	            <div class="col-md-10">
	              <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" title="请再次输入你的密码"
	                placeholder="请再次输入你的密码" >
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
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<div class="modal fade" id="userLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
	  <div class="modal-dialog modal-xs">
	    <div class="modal-content">
	      <div class="modal-body">
	        <form id="frmUserLogin" action="javascript:login()" method="POST" class="form-horizontal">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	            <h4 class="modal-title">
	              <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户登录
	            </h4>
	          </div>
	          <div class="modal-body">
	            <div class="form-group">
	              <label for="userName" class="col-md-2 control-label">用户名</label>
	              <div class="col-md-10">
	                <input type="text" class="form-control" id="userName" placeholder="用户名/手机号/邮箱账号" >
	                  <span class="icon-remove"></span>
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="userPwd" class="col-md-2 control-label">密码</label>
	              <div class="col-md-10">
	                <input type="password" class="form-control" id="userPwd" placeholder="密码" >
	                  <span class="icon-remove"></span>
	              </div>
	            </div>
	            <p>
	              <label class="checkbox-inline">
	                <input type="checkbox" />十天内免登录
	              </label>
	            </p>
	            <div class="form-group">
	            	<label class="col-md-9 control-label"> 
		              <div id="msg" class="container" style="color: #660000"></div>
		            </label>
	            </div>
	          </div>
	          <div class="modal-footer">
	            <div class="form-group">
	              <button type="submit" class="btn btn-primary" name="login">登录</button>
	            </div>
	          </div>
	        </form>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
</html>
