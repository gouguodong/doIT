<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>爱智网</title>
	</head>

	<body>
		<%@ include file="/WEB-INF/frontstage/nav.jsp" %>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/css/public/question.css" />
		<div class="container" id="main">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="qu-su">
					<div class="panel panel-default">
						<div class="panel-heading">
							问题发布成功
						</div>
						<div class="panel-body">
							<div class="sendques">
								<span></span>
								<h3>您的问题已经提交成功!</h3>
								<p>请耐心等待，肯定会有很多热心的同学回答你的问题</p>
								<p>为鼓励好答案，请为他们投票并设置最佳答案（仅限提问）</p>
								<p><a href="question/index.action" class="btn btn-green js-ret-btn">返回问答</a>
								</p>
								<p>
								</p>
								<p>
									<a href="question/show.action?questionId=${questionId }" class="myques">查看我提的问题</a>
								</p>
								<p>
								</p>
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