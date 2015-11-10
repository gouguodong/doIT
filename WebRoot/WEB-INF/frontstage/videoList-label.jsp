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
<script type="text/javascript"
	src="<%=basePath%>frontstage/js/jquery-1.10.2.min.js"></script>
<script src="<%=basePath%>frontstage/js/bootstrap.min.js"></script>
<script src="<%=basePath%>frontstage/js/global.js"></script>
<script type="text/javascript">
	var hasUser = "${!empty sessionScope.user}";
</script>
<script type="text/javascript"
	src="<%=basePath%>frontstage/js/public/videoList.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/css/public/question.css" />
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
	<div class="course-nav">
		<ul>
			<li class="active"><a href="course/index.action" class="curr">全部课程</a></li>
			<li><a href="#">技术分享</a></li>
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
				<!-- 分享start  -->
				<div class="bdsharebuttonbox">
					<a href="#" class="bds_more" data-cmd="more"></a> <a href="#"
						class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a> <a
						href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a> <a
						href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a> <a
						href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
					<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
				</div>
				<!-- 分享 end -->
			</div>
			<div class="course-info">
				<div class="col-lg-6 col-md-6 col-xs-12">
					<div class="course-info-img">
						<img src="<%=basePath%>${course.courseIndex }"
							class="img-responsive" />
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-xs-12">
					<div class="course-info-state">
						<ul class="list-group">
							<li class="list-group-item"><span>学习人数</span> <em>${course.studyNumber}</em>
							</li>
							<li class="list-group-item course-time"><span>课程时长</span> <em
								class="ft-adjust"><span class="ft-hour">${course.hour
										}</span>小时<span class="ft-minute">${course.minute }</span>分 </em></li>
							<li class="list-group-item learned-time"
								style="line-height: 55px; height: 110px;">
								<span>已学时长</span>
									<em class="ft-adjust">
										<c:if test="${empty usercourse}"> 
											<span class="ft-hour" style="color: #00AAEE;">0</span>小时 
											<span class="ft-minute">0</span>分
										</c:if>
										<c:if test="${!empty usercourse}">
											<span class="ft-hour" style="color: #00AAEE;">${usercourse.hour }</span>小时 
											<span class="ft-minute">${usercourse.minute }</span>分
										</c:if> 
									</em><br> 
								<span>完 成</span> <em
								class="ft-adjust"> <span class="learn-pro"
									style="color: #00AAEE;">50</span>% </em></li>
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
						<a href="<%=basePath%>video/index.action?voideId=${firstVideo.voideId}&courseId=${course.courseId}">开始学习</a>
					</div>
				</div>
			</div>
			<div class="course-list">
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 course-left">
					<div class="panel panel-default video-list">
						<div class="panel-heading">
							<ul class="nav nav-tabs">
								<li><a class="ui-tabs-active" id="learnOn"
									href="<%=basePath%>videoList/index.action?courseId=${course.courseId}">章节</a>
								</li>
								<li><a id="commentOn"
									href="<%=basePath%>videoList/comment.action?courseId=${course.courseId}">评论</a>
								</li>
								<li><a id="qaOn"
									href="<%=basePath%>videoList/question.action?courseId=${course.courseId}">问答</a>
								</li>
								<li class="active"><a id="_label" href="javascript:void(0)">课程标签</a>
								</li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="list-group">
							  	<div class="form-group ques-title">
								  	<div class="form-group ques-title">
								    	<label for="inputEmail3" class="col-sm-1 control-label">标签：</label>
								  	</div> 
								  	<c:if test="${course.courselabelvalues == null }">
										还没有标签 ~ ~ 快给课程添加一个印象吧
									</c:if>
							    	<label for="inputEmail3" class="col-sm-1 control-label"></label>
							    	<div class="col-sm-11">
							    		<c:forEach items="${course.courselabelvalues }" var="clabel">
											<a href="javascript:;" class="list-tag">${clabel.courselabel.labelName }</a>
							    		</c:forEach>
	                              </div>
	                              <br /><br />
	                              快来给课程添加印象吧: <br />
	                              <div class="list-group">
		                              <div class="col-sm-11">
								    		<c:forEach items="${courselabels }" var="label">
												<a href="javascript:;" class="list-tag">${label.labelName } </a>
											</c:forEach>
		                              </div>
									</div>
									<div class="col-sm-12 text-center">
							  			<button class="btn btn-success ques-sub">发布问题</button>
							  		</div>
							  	</div>						  	
							</div>
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
									<%--<span class="career">PHP开发工程师</span>								    
								  --%>
								</div>
							</div>
							<div class="teacher-desc">${course.teacher.teacherInfo }</div>
						</div>
					</div>
					<div class="panel panel-default other-course">
						<div class="panel-heading">相关课程</div>
						<div class="panel-body">
							<c:forEach items="${courses }" var="cs">
								<div class="media">
									<div class="media-left">
										<a href="course/courseinfoUI.action?courseId=${cs.courseId }"> <img class="media-object" width="108"
											height="60" src="${cs.courseIndex }"> </a>
									</div>
									<div class="media-body">${cs.courseName }</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="panel panel-default user-list">
						<div class="panel-heading">
							<span style="color:#be3948;">${course.studyNumber }</span> 位共同战斗的同学 <span
								class="fa fa-refresh pull-right"></span>
						</div>
						<div class="panel-body">
							<c:forEach items="${course.usercourses }" var="us" begin="1" end="6">
								<div class="media">
									<div class="media-left">
										<a href="friendIndex/index.action?id=${us.user.userId }"> <img class="media-object img-circle"
											src="${us.user.userHead }"> </a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="friendIndex/index.action?id=${us.user.userId }">${us.user.userName }</a>
										</h4>
										${us.user.userinfo.useroffice.officeName }
									</div>
								</div>
							</c:forEach>
					</div>
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
						0744-8358630 | 0744-8202008 <br> <a href="#">jsdxrjxy@163.com</a>
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
	
	<script>
		window._bd_share_config = {
			"common" : {
				"bdSnsKey" : {},
				"bdText" : "",
				"bdMini" : "2",
				"bdMiniList" : false,
				"bdPic" : "",
				"bdStyle" : "0",
				"bdSize" : "16"
			},
			"share" : {}
		};
		with (document)
			0[(getElementsByTagName('head')[0] || body)
					.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
					+ ~(-new Date() / 36e5)];
		
		function login2() {
			var userName = $("#inputuserName2").val();
			var userPwd = $("#inputuserPwd2").val();
			$.ajax({
				url : "/login/login.action",
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
					url : "/videoList/concern.action?concern=false&courseId=${course.courseId}",
					type : "post",
					success : function(data) {
						//取消关注
						//alert(data);
					}
				});
				
			} else {
				$this.addClass("btn-remove-follow");
				$this.children("em").text("已关注");
				
				$.ajax({
					url : "/videoList/concern.action?concern=true&courseId=${course.courseId}",
					type : "post",
					success : function(data) {
						//关注成功
						//alert(data);
					}
				});
			}
		});
	</script>

</body>
</html>
