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
<title>爱智网 - ${course.courseName }</title>
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>frontstage/css/global.css" />
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/public/videoList.css" />
<link rel="stylesheet"
	href="<%=basePath%>frontstage/css/public/courseInfo.css" />
<script type="text/javascript"
	src="<%=basePath%>frontstage/js/jquery-1.10.2.min.js"></script>
<script src="<%=basePath%>frontstage/js/bootstrap.min.js"></script>
<script src="<%=basePath%>frontstage/js/global.js"></script>
<script type="text/javascript">
	var hasUser = "${!empty sessionScope.user}";
</script>
<script>
	$(function() {
		$(".course-info-intro").hover(function() {
			var $heart = $(this).find("span");
			$heart.removeClass("fa-heart-o");
			$heart.addClass("fa-heart");
		}, function() {
			var $heart = $(this).find("span");
			$heart.addClass("fa-heart-o");
			$heart.removeClass("fa-heart");
		});
	});
</script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="course-nav">
		<ul>
			<li class="active"><a href="#" class="curr">全部课程</a></li>
			<li><a href="javascript:void(0)">技术分享</a></li>
		</ul>
	</div>

	<div class="container" id="main">
		<div class="row">
			<div class="course-heading">
				<ol class="breadcrumb">
					<li><a href="course/index.action">课程</a>
					</li>
					<li><a href="course/index.action">${course.coursetype.coursetype.typeName }</a>
					</li>
					<li><a href="course/index.action">${course.coursetype.typeName }</a>
					</li>
					<li class="active">${course.courseName }</li>
				</ol>
			</div>
			<div class="course-info">
				<div class="col-lg-6 col-md-6 col-xs-12">
					<div class="course-info-img">
						<img src="<%=basePath %>${course.courseIndex }"
							class="img-responsive" />
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-xs-12">
					<div class="course-info-state">
						<ul class="list-group">
							<li class="list-group-item"><span>学习人数</span> <em>${course.studyNumber
									}</em></li>
							<li class="list-group-item"><span>课程时长</span> <em
								class="ft-adjust"><span class="ft-hour">${course.hour
										}</span>小时<span class="ft-minute">${course.minute }</span>分 
							</em></li>
							<li class="list-group-item"><span>课程难度</span> <em>${course.courseLevel
									}</em></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-xs-12">
					<div class="course-info-intro">
						<div class="concerned_course add_concerned_course">
						<c:choose>
								<c:when test="${usercourse.relationtype.typeId == 1}">
									<a href="javascript:void(0)" data-id="404" class="btn-add-follow js-btn-follow btn-remove-follow" id="mk_concern"> 
										<i></i>
										<em class="concerned-icon">已关注</em>
									</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0)" data-id="404" class="btn-add-follow js-btn-follow" id="mk_concern"> 
										<i></i>
										<em class="concerned-icon">关注此课程</em>
									</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="curse_btn">
						<a href="<%=basePath%>videoList/index.action?courseId=${course.courseId}">体验学习</a>
					</div>
				</div>
			</div>
			<div class="course-list">
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 course-left">
					<div class="chapter-introduces">
						<h3 class="chapter-title">课程介绍</h3>
						<div class="chapter-content">${course.courseInfo }</div>
					</div>
					<div class="panel panel-default chapter-catalog-list">
						<div class="panel-heading">课程提纲</div>
						<div class="panel-body">
							<c:forEach items="${course.sections }" var="section">
								<div class="list-group">
									<div class="media list-group-item">
										<div class="media-left">
											<a href="#"> <span class="fa fa-star-o fa-3x"></span> </a>
										</div>
										<div class="media-body media-left">
											<a href="videoList/index.action?courseId=6">
												<h4 class="media-heading">${section.sectionName }</h4>
											</a>
											<p class="media-descript">${section.sectionDesc }</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 hidden-sm hidden-xs course-right">
					<div class="panel panel-default teacher-info">
						<div class="panel-heading">授课教师</div>
						<div class="panel-body">
							<div class="media">
								<%--
								  <div class="media-left">
								    <a href="javascript:;">
								      <img class="media-object img-circle" src="img/test/chead.jpg">
								    </a>
								  </div>
								  --%>
								<div class="media-body">
									<h4 class="media-heading">
										<a href="javascript:;">${course.teacher.teacherName }</a>
									</h4>
									<!--  <span class="career">PHP开发工程师</span>		 -->
								</div>
							</div>
							<div class="teacher-desc">${course.teacher.teacherInfo }</div>
						</div>
					</div>
					<!-- <div class="panel panel-default">
							<div class="panel-heading course-know">课程须知</div>
							<div class="panel-body">
								学习本门课程之前，建议先了解一下知识，会更有助于理解和掌握本门课程<br>
								1、掌握PHP基本的语言语法<br>
								2、对MVC开发方式有一定的了解
							</div>
						</div>
						<div class="panel panel-default can-study">
							<div class="panel-heading">老师告诉你能学到什么？</div>
							<div class="panel-body">
								1、php的新特征<br>
								2、一款前沿的框架的使用方式<br>
								3、新颖独到的程序设计
							</div>
						</div> -->
				</div>
			</div>
		</div>
	</div>


	<footer id="divFooter">
		<div class="container">
			<div class="row rowLinkLogo">
				<div class="col-md-3 col-xs-4 col-sm-3 col-lg-3 leftLink">
					<ul>
						<li><a href="#">学院概况</a></li>
						<li><a href="#">教育教学</a></li>
						<li><a href="#">科学研究</a>
						</li>
						<li><a href="#">学生工作</a>
						</li>
						<li><a href="#">招生就业</a>
						</li>
						<li><a href="#">专业介绍</a>
						</li>
					</ul>
				</div>
				<div class="col-md-6 col-xs-4 col-sm-6 col-lg-6 centerLogo">
					<center>
						<img class="img-responsive" src="img/logoBottom.png">
					</center>
					<p>
						0744-8358630 | 0744-8202008 <br>
						<a href="#">jsdxrjxy@163.com</a>
					</p>
				</div>
				<div class="col-md-3 col-xs-4 col-sm-3 col-lg-3 rightLink">
					<ul>
						<li><a href="#">吉首大学</a>
						</li>
						<li><a href="#">中软国际</a>
						</li>
						<li><a href="#">中软国际ETC</a>
						</li>
						<li><a href="#">青软实训</a>
						</li>
						<li><a href="#">苏软实训</a>
						</li>
						<li><a href="#">深圳软酷</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="divCopyright">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
						<center>地址：湖南省张家界市子午路 | 版权所有：吉首大学软件服务外包学院</center>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- 回到顶部 -->
	<div id="goTop" class="elevator">
		<a class="elevator-diaocha" href="/activity/diaocha" target="_blank"
			id="feedBack"></a> <a class="elevator-weixin" href="javascript:;">
			<div class="elevator-weixin-box"></div> </a> <a class="elevator-msg"
			href="javascript:;" target="_blank" id="feedBack"></a> <a
			class="elevator-app" href="javascript:;">
			<div class="elevator-app-box"></div> </a> <a class="elevator-top"
			href="javascript:;" id="backTop"></a>
	</div>
	
	
	<!-- /.modal -->
	<div class="modal fade" id="userLogin2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="false">
		<div class="modal-dialog modal-xs">
			<div class="modal-content">
				<div class="modal-body">
					<form id="frmUserLogin" action="javascript:login2()" method="POST"
						class="form-horizontal">
						<div class="modal-header">
							<h4 class="modal-title">
								<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户登录
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="inputuserName2" class="col-md-2 control-label">用户名</label>
								<div class="col-md-10">
									<input type="text" name="userName" class="form-control"
										id="inputuserName2" placeholder="用户名/手机号/邮箱账号"> <span
										class="icon-remove"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="inputuserPwd2" class="col-md-2 control-label">密码</label>
								<div class="col-md-10">
									<input type="password" name="userPwd" class="form-control"
										id="inputuserPwd2" placeholder="密码"> <span
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
	
	<script type="text/javascript">
	
		function login2() {
			var userName = $("#inputuserName2").val();
			var userPwd = $("#inputuserPwd2").val();
			$.ajax({
				url : "login/login.action",
				data : "userName=" + userName + "&userPwd=" + userPwd,
				type : "post",
				success : function(data) {
					if (data == "1") { // 登录失败
						$("#msg").html("用户名不存在、或密码错误！");
					} else {
						window.location.reload(true);
					}
				}
			});
		}
		
		$("#mk_concern").click(function() {
			if (hasUser == "false") {
				$('#userLogin2').modal({
					backdrop : 'static',
					keyboard : false
				});
				$('#inputuserName2').focus();
				return;
			}
			var $this = $(this);
			if($this.hasClass("btn-remove-follow")) {
				$this.removeClass("btn-remove-follow");
				$this.children("em").text("关注此课程");
				
				$.ajax({
					url : "videoList/concern.action?concern=false&courseId=${course.courseId}",
					type : "post",
					success : function(data) {
						//取消关注
// 						alert(data);
					}
				});
				
			} else {
				$this.addClass("btn-remove-follow");
				$this.children("em").text("已关注");
				
				$.ajax({
					url : "videoList/concern.action?concern=true&courseId=${course.courseId}",
					type : "post",
					success : function(data) {
						//关注成功
// 						alert(data);
					}
				});
			}
		});
	</script>
</body>
</html>