<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>爱智网 - ${user.userName }的主页</title>
<!-- html5消息提示框  -->
<link href="http://fonts.useso.com/css?family=Raleway:400,300,700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/ns-default.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>frontstage/notification/css/ns-style-bar.css" />
<script
	src="<%=basePath%>frontstage/notification/js/modernizr.custom.js"></script>
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>frontstage/css/global.css" />
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/public/index.css" />
<link rel="stylesheet" href="<%=basePath%>frontstage/css/friendInfo.css" />
<script type="text/javascript"
	src="<%=basePath%>frontstage/js/jquery-1.10.2.min.js"></script>
<script src="<%=basePath%>frontstage/js/bootstrap.min.js"></script>
<script src="<%=basePath%>frontstage/js/global.js"></script>
<script type="text/javascript"
	src="<%=basePath%>frontstage/js/public/index.js"></script>
</head>
<body class="space-course">
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="main">

		<div class="main-user">
			<div class="container clearfix">
				<div class="avatar l">
					<img src="<%=basePath%>${user.userHead}" height="180" width="180">
				</div>
				<div class="profile r">
					<h4 class="tadename">
						${user.userName }<a href="javascript:void(0)"> <span class="icon-profile icon"
							title="更多信息"></span> </a>
					</h4>
					<c:choose>
						<c:when test="${empty user.userinfo.useroffice }">
							<p class="aboutjob">还没有职位</p>
						</c:when>
						<c:otherwise>
							<p class="aboutjob">${user.userinfo.useroffice.officeName }</p>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${empty user.userinfo.signature }">
							<p class="aboutme">这位童鞋很写，什么也没懒～～！</p>
						</c:when>
						<c:otherwise>
							<p class="aboutme">${user.userinfo.signature }</p>
						</c:otherwise>
					</c:choose>
					<div class="mp-box" id="mp-box">
						<div class="l mp-uspace">
							<span class="mp-title">经验</span><span class="mp-num"
								data-uid="1997514">${user.userinfo.userExp }</span>
							<!-- <i class="line-iron"></i>
                <span class="mp-title mp-ubadge">徽章</span><span class="mp-num">8,769</span> -->
						</div>
					</div>
					<c:if test="${sessionScope.user != null }">
						<c:choose>
							<c:when test="${sessionScope.isFirend}">
								<a href="javascript:void(0)" uid="1997514"
									class="send-msg btn btn-green" data-toggle="modal"
									data-target="#sendMessage"><span class="icon"></span>发消息</a>
							</c:when>
							<c:otherwise>
								<a href="javascript:void(0)" uid="1997514"
									class="add-frd btn btn-green" data-toggle="modal"
									data-target="#addFriend"><span class="icon"></span>加为好友</a>
							</c:otherwise>
						</c:choose>
					</c:if>
				</div>
			</div>
		</div>
		<div class="main-body container clearfix">
			<div class="main-aside l">
				<div class="bodybg">
					<ul class="space-data">
						<li><span class="icon-clock icon" title="学习"></span>学习：
							${hour}小时 ${minute}分</li>
						<li><span class="icon-tick icon" title="已学"></span>已学：<a
							href="javascript:void()" class="nCourse"><em>${user.userinfo.studyCourse
									}</em>门课程</a>
						</li>
						<li><span class="icon-ques icon" title="提问"></span>提问：${user.userinfo.postNumber }条
						</li>
						<li><span class="icon-chat icon" title="回答"></span>回答：${user.userinfo.replyNumber }条
						</li>
						<li><span class="icon-code icon" title="代码"></span>代码：${user.userinfo.codeNumber
							}条</li>
					</ul>
				</div>
			</div>
			<div class="main-content r bodybg space-list">
				<ul class="space-menu clearfix">
					<li><a href="javascript:void(0)" class="active"> <span>课程</span>
					</a>
					</li>
				</ul>

				<div class="main-bd  clearfix course-list" id="J_MyClass">
					<ul class="hascourselist course-list-new">
						<c:forEach items="${user.usercourses }" var="usercourse">				
							<li data-id="383" class="">
								<a href="/learn/383" title="${usercourse.course.courseName }">
									<div class="course-list-img">
										<img src="<%=basePath%>${usercourse.course.courseIndex }"
											height="160" width="280">
										<div class="pro-bg"></div>
										<em class="dot-progress">${usercourse.scale }%</em>
									</div> 
									<progress style="width: 280px;" class="studyrate" max="100"	value="0" data-finishval="0"></progress>
									<h5>${usercourse.course.courseName }</h5>
									<div class="intro">
										<p>${usercourse.course.courseAd }</p>
										<span class="l">共${usercourse.course.chapters }</span> 
										<span class="r">课程时长：${usercourse.course.courseTime }</span>
									</div>
									<div class="tips">
										<span class="l">更新完毕</span> 
										<span class="r">
										<p>${usercourse.course.studyNumber }人学习</span>
									</div> 
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="addFriend" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" style="text-align:center;">发送好友申请</h4>
					</div>
					<div class="modal-body">
						<textarea cols="60" rows="10" id="remark"></textarea>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-primary" onclick="J_addFriend(${user.userId});">发送申请</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="sendMessage" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" style="text-align:center;">发送消息</h4>
					</div>
					<div class="modal-body">
						<textarea cols="78" rows="10" id="messageCotent"></textarea>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-primary" onclick="J_sendMessage(${user.userId});">发送</button>
					</div>
				</div>
			</div>
		</div>
		
		<script src="<%=basePath%>frontstage/notification/js/classie.js"></script>
	<script src="<%=basePath%>frontstage/notification/js/notificationFx.js"></script>
		<script type="text/javascript">
			function J_addFriend(id) {
				$.ajax({
					url : "<%=basePath%>friendIndex/addFriend.action",
					data : "id=" + id + "&context=" + $("#remark").val(),
					type : "post",
					success : function(data) {
						//处理完成
						$('#addFriend').modal('hide');
						$("#remark").val("");
						// create the notification
						var notification = new NotificationFx({
							message : '<span class="icon icon-megaphone"></span><p>发送有请求成功. </p>',
							layout : 'bar',
							effect : 'slidetop',
							type : 'notice', // notice, warning or error
							onClose : function() {
								return false;
							}
						});
						// show the notification
						notification.show();
					}
				});
			}
			
			function J_sendMessage(id) {
				$.ajax({
					url : "<%=basePath%>friendIndex/sendMessage.action",
					data : "id=" + id + "&context=" + $("#messageCotent").val(),
					type : "post",
					success : function(data) {
						//处理完成
						$('#sendMessage').modal('hide');
						$("#messageCotent").val("");
						// create the notification
						var notification = new NotificationFx({
							message : '<span class="icon icon-megaphone"></span><p>发送信息成功. </p>',
							layout : 'bar',
							effect : 'slidetop',
							type : 'notice', // notice, warning or error
							onClose : function() {
								return false;
							}
						});
						// show the notification
						notification.show();
					}
				});
			}
		</script>
</body>
</html>
