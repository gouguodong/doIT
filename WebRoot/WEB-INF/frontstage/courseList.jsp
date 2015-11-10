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
		<title>爱智网</title>
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/global.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/public/courseList.css" />
		<script type="text/javascript" src="<%=basePath %>frontstage/js/jquery-1.10.2.min.js"></script>
		<script src="<%=basePath %>frontstage/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>frontstage/js/global.js"></script>
		<script type="text/javascript" src="<%=basePath %>frontstage/js/public/courseList.js"></script>
		<script type="text/javascript" src="<%=basePath %>frontstage/js/course/course.js"></script>
	</head>
	<body onscroll="changeScroll()">
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="course-nav">
		<ul>
	        <li class="active"><a href="#" class="curr">全部课程</a></li>
	        <li><a href="#">技术分享</a></li>
	    </ul>
	</div>	
	<div class="container" id="main">
		<label class="hidden" id="findCourse" title="0" lang="1" dir="''" for="level"></label>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-xs-12" style="width: 22%;" id="sidebar">
				<ul class="list-group">
				  <li class="list-group-item active"><a href="javascript:getCourses(0)">全部课程</a></li>
				  <c:forEach items="${coursetypes }" var="coursetype">
					<li class="list-group-item">
					  	<a href="javascript:getCourses('${coursetype.typeId }')">${coursetype.typeName }</a>
					  	<div class="category-sort">
	                        <div class="category-sort-bg"></div>
	                        <ul>
		                        <c:forEach items="${coursetype.coursetypes }" var="childType">
		                        	<li><a data-id="7" href="javascript:getCourses('${childType.typeId }')">${childType.typeName }</a></li>
		                        </c:forEach>
		                    </ul>
	                	</div>
					</li>
				  </c:forEach>
				</ul>
				<div class="sidebar-sign" style="top:0px"></div>
			</div>
			<div class="col-lg-8 col-md-8 col-xs-12" id="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="group">
							<span><strong>全部</strong></span>
							<span id="filter-icon" class="pull-right fa fa-filter fa-2x">
			                    <div class="sidebar-filter">
			                        <div class="sidebar-filter-bg"></div>
			                        <dl class="js-sidebar-level">
			                            <dt class="sidebar-filter-t">难度筛选</dt>
			                            <dd class="curr"><a data-id="0" href="javascript:selectLevel('')">不限</a></dd>
			                            <dd><a data-id="1" href="javascript:selectLevel('初级')">初级</a></dd>
			                            <dd><a data-id="2" href="javascript:selectLevel('中级')">中级</a></dd>
			                            <dd><a data-id="3" href="javascript:selectLevel('高级')">高级</a></dd>
			                        </dl>
                                </div>
							</span>
							<ul class="pull-right">
								<li class="active"><a href="javascript:getCourses(0)">最新视频</a></li>
								<li><a href="javascript:getHots()">人气最高</a></li>
								<li><a href="javascript:getforme()">个性推荐</a></li>
							</ul>
						</div>
						<div class="head-sign"></div>
					</div>
					<div class="panel-body">
						<div id="courseList" class="row">
							<!-- 
							<div class="col-lg-4 col-md-4 col-xs-12">
								<div class="course-item">
									<div class="list-img">
										<img width="280" height="160" alt="Cocos2d-x游戏开发初体验-C++篇" src="<%=basePath %>frontstage/img/test/1.jpg">									
									</div>
									<h5><span>Cocos2d-x游戏开发初体验-C++篇</span></h5>
									<div class="intro">
										<p>国足都出成绩了，你还不来学？</p>
										<span class="l">更新至4-1</span> 
										<span class="r">课程时长：1小时0分</span>
									</div>
									<div class="tips">
										<span class="l">2天前更新</span> 
										<span class="r">614人学习</span>
									</div>
								</div>
							</div>
							 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<!-- 回到顶部 -->
	<div id="goTop" class="elevator">
	    <!-- <a class="elevator-diaocha" href="/activity/diaocha" target="_blank" id="feedBack"></a> -->
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
