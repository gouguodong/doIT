<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>爱智网 - ${sessionScope.user.userName }学完的课程</title>
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/global.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/public/userInfo2.css" />
		<script type="text/javascript" src="<%=basePath %>frontstage/js/jquery-1.10.2.min.js"></script>
	   <script src="<%=basePath %>frontstage/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>frontstage/js/global.js"></script>
	    <script type="text/javascript" src="<%=basePath %>frontstage/js/public/usertest.js"></script>
	     <script type="text/javascript" src="<%=basePath %>frontstage/js/public/userInfo-finish.js" ></script> 
	   <%--  <script type="text/javascript" src="<%=basePath %>frontstage/js/public/userInfo-finish2.js" ></script> --%>
	 <%-- <script type="text/javascript" src="<%=basePath %>frontstage/js/public/userInfo.js"></script> --%>
	</head>
	<body>
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="main" class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="panel panel-default" id="userleft">
						<div class="panel-heading space-tabs-menu">							
							<span class="fa fa-trash-o pull-right"></span>							
							<a class="btn btn-danger trash-complete pull-right">完成</a>
							<!-- <a class="course-checkbox pull-right" data-checked="0">不显示0进度课程</a> -->
							<ul class="myspace-tab-list">
				               <li ><a href="<%=basePath %>usercourse/attention.action">关注</a></li>
				                <li ><a href="<%=basePath %>usercourse/learning.action">在学</a></li>
				                <li class="active"><a href="<%=basePath %>usercourse/learned.action">学完</a></li>
			                </ul>
			                <div class="dot-curr"></div>
						</div>
						<div class="panel-body my-space-course">
						<c:if test="${studys.recordCount==0 }">
						您还未学完任何课程，继续学习吧
						</c:if>
						 <c:if test="${studys.recordCount!=0 }"> 
						<c:forEach items="${studys.recordList }" var="onestudy">
						<ul class="course-list-new clearfix">
							
				              <li class="time">${onestudy.studyDate }</li>
				              <c:forEach items="${onestudy.usercourseVOs }" var="onecourse">
				                 <li class="time">${onestudy.studyDate }</li> 
				                 <li data-id="144" class="course-item">	
				                 <input type="hidden" value="${onecourse.relationId}"
											name="relationId" class="rId" />				              
					              <a class="fa fa-close img-circle del-btn"></a>
					              <a href="course/courseinfoUI.action?courseId=${onecourse.courseVO.courseId }" title="${onecourse.courseVO.courseName }">
					                <div class="course-list-img">
					                  <img src="<%=basePath %>${onecourse.courseVO.courseIndex}">
					                  <div class="pro-bg"></div>
					                  <span class="dot-progress">100%</span>	
					                  				                  
					                  <span class="fa fa-heart-o font-size-24"></span>
					                  <span class="fa fa-heart font-size-24 hide"></span>
					                  
					                </div>
					                <div class="progress progress-striped active studyrate">
									  <div class="progress-bar progress-bar-success studyrate" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
									    <span class="sr-only">100% Complete</span>
									  </div>
									</div>
					                <h5>${onecourse.courseVO.courseName }...</h5>
					                <div class="intro">
					                  <p>${onecourse.courseVO.courseInfo}...</p>
					                  <span class="pull-left">总课时:${ onecourse.courseVO.courseTime}</span> 
					                  <span class="pull-right">${onecourse.courseVO.studyNumber}人学习</span>
					                </div>
					                <div class="tips">
					                  <span class="pull-left">${onecourse.studyTime}学习</span>
					                  <span class="pull-right">更新完毕</span>
					                </div>
				                 </a>
				            </li>
				              </c:forEach>
		                  </ul>
						</c:forEach>
						</c:if>
		                 
						</div>	
						<div class="panel-footer">
							<!-- 分页开始 -->
						<nav>

							<ul class="pagination">

								<li><a
									href="<%=basePath %>usercourse/learned.action?currentPage=${studys.beginPageIndex }">首页</a>
								</li>

								<c:if test="${studys.currentPage-1<1}">
									<li class="disabled"><a href="javascript:void(0)"
										aria-label="Previous"> <span aria-hidden="false">上一页</span>
									</a>
									</li>
								</c:if>
								<c:if test="${studys.currentPage-1>=1}">
									<li><a
										href="<%=basePath %>usercourse/learned.action?currentPage=${studys.currentPage-1}"
										aria-label="Previous"> <span aria-hidden="false">上一页</span>
									</a>
									</li>
								</c:if>

								<c:forEach var="page" begin="${studys.beginPageIndex}"
									end="${studys.endPageIndex}">
									<c:if test="${page==studys.currentPage }">
										<li class="active"><a
											href="<%=basePath %>usercourse/learned.action?currentPage=${page}">${page}</a>
										</li>
									</c:if>
									<c:if test="${page!=studys.currentPage }">
										<li><a
											href="<%=basePath %>usercourse/learned.action?currentPage=${page}">${page}</a>
										</li>
									</c:if>
								</c:forEach>
								<c:if test="${studys.currentPage+1>studys.endPageIndex}">
									<li class="disabled"><a href="javascript:void(0)"
										aria-label="Next"> <span aria-hidden="true">下一页</span> </a>
									</li>
								</c:if>
								<c:if test="${studys.currentPage+1<=studys.endPageIndex}">
									<li><a
										href="<%=basePath %>usercourse/learned.action?currentPage=${studys.currentPage+1}"
										aria-label="Next"> <span aria-hidden="true">下一页</span> </a>
									</li>
								</c:if>
								<li><a
									href="<%=basePath %>usercourse/learned.action?currentPage=${studys.endPageIndex}">尾页</a>
								</li>

							</ul>
						</nav>
						<!-- 分页结束  -->
						</div>										
					</div>
				</div>
			<div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
					<div class="panel panel-default" id="userright">
						<div class="panel-heading">
							<img src="<%=basePath %>${sessionScope.user.userHead }" />
						</div>
						<div class="panel-body">
							<h4 class="myname">
								${sessionScope.user.userName}
                  				
							</h4>
							<p class="job-title">${rightVO.officeName } </p>
							<div class="my-signature">
			                  <div class="sign-wrap">
			                    <p id="signed" class="signed">${rightVO.signature }</p>			                   	
			                  </div>
			                  <textarea id="signing" class="signing"></textarea>
			                  <p id="rlf-tip-wrap" class="rlf-tip-wrap"></p> 
			                  
			                   <span class="fa fa-pencil"></span> 
			              	</div>
						</div>
						<div class="panel-footer">
							<div class="mp-item">
								<span class="mp-title">经验</span>
	                        	<span class="mp-num">${rightVO.userExp }</span>
                        	</div>
						</div>
					</div>
					<div class="panel panel-default space-data">
						<ul class="list-group">
						  <li class="list-group-item">
						  		<span class="fa fa-clock-o"></span>学习：${rightVO.studyTime }小时
						  </li>
						  <li class="list-group-item"><span class="fa fa-book"></span>已学：
						  		<a href="<%=basePath %>usercourse/learned.action" class="countCourse"><em>${rightVO.studyCourse }</em>门课程</a>
						  </li>
						  <li class="list-group-item"><span class="fa fa-question-circle"></span>
						  	提问：<a href="<%=basePath %>userpost/quePost.action">${rightVO.postNumber }条</a>
						  </li>
						  <li class="list-group-item">
						  	<span class="fa fa-comment-o"></span>
						  	回答：<a href="<%=basePath %>userreply/myReply.action">${rightVO.replyNumber }条</a>
						  </li>
						  <!-- <li class="list-group-item">
						  	<span class="fa fa-pencil"></span>
						  	笔记：<a href="#" class="countNote"><em>0</em>条</a>
						  </li> -->
						  <li class="list-group-item">
						  	<span class="fa fa-code"></span>
						  	代码：<a href="<%=basePath %>usercode/userCode.action">${rightVO.codeNumber }条</a>
						  </li>
						</ul>
					</div>
					<div class="panel panel-default visitors">
						<div class="panel-heading">最近访客</div>
						<div class="panel-body">
							<!--  这个是有用户情况
							<div class="media">
							  <div class="media-left">
							    <a href="#">
							      <img class="media-object img-circle" src="img/test/user1.jpg">
							    </a>
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading"><a href="javascript:;">Quany</a></h4>	
							    Web前端工程师
							  </div>
							</div>
							-->
							<!-- 没有用户 -->
							<div class="nouser">
								<span class="fa fa-3x fa-user img-circle"></span>
								<div class="nouser-info">暂无同学拜访此页面</div>
							</div>
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
							<li><a href="#">学院概况</a>	</li>
							<li><a href="#">教育教学</a>	</li>
							<li><a href="#">科学研究</a></li>
							<li><a href="#">学生工作</a></li>
							<li><a href="#">招生就业</a></li>
							<li><a href="#">专业介绍</a></li>
						</ul>
					</div>
					<div class="col-md-6 col-xs-4 col-sm-6 col-lg-6 centerLogo">
						<center>
							<img class="img-responsive" src="img/logoBottom.png">
						</center>
						<p>0744-8358630 | 0744-8202008
							<br><a href="#">jsdxrjxy@163.com</a>
						</p>
					</div>
					<div class="col-md-3 col-xs-4 col-sm-3 col-lg-3 rightLink">
						<ul>
							<li><a href="#">吉首大学</a></li>
							<li><a href="#">中软国际</a></li>
							<li><a href="#">中软国际ETC</a></li>
							<li><a href="#">青软实训</a></li>
							<li><a href="#">苏软实训</a></li>
							<li><a href="#">深圳软酷</a></li>
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
		    <a class="elevator-diaocha" href="/activity/diaocha" target="_blank" id="feedBack"></a> 
		    <a class="elevator-weixin" href="javascript:;">
		        <div class="elevator-weixin-box">
		        </div>
		    </a>
		    <a class="elevator-msg" href="javascript:;" target="_blank" id="feedBack"></a>
		    <a class="elevator-app" href="javascript:;">
		        <div class="elevator-app-box">
		        </div>
		    </a>
		    <a class="elevator-top" href="javascript:;" id="backTop"></a>
		</div>
	</body>
</html>
