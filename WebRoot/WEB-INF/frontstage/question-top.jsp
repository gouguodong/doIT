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
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="panel panel-default question-rank">
					<div class="panel-body">
						<table class="table">
							<thead>
								<tr>
						          <th class="col-rank">排名</th>
						          <th class="col-img"></th>
						          <th class="col-username">用户名</th>
						          <th class="col-score">用户经验数</th>
						          <th class="col-goodrate">采纳率</th>
						          <th class="col-level">等级</th>
						          <th class="col-trend">动态</th>
						        </tr>
					        </thead>
					        <tbody>
					        	<s:iterator value="#users" status="st">
					        	<tr class="${st.count <= 3 ? 'highlight' : '' }">
						          <td class="col-rank">${st.count }</td>
						          <td class="col-img"><img src="${userHead }" alt="${userName }" /></td>
						          <td class="col-username">						          	
						          	<a href="#">${userName }</a>
						          </td>
						          <td class="col-score">${userinfoVO.userExp }</td>
						          <td class="col-goodrate">${adoptPercent }%</td> 
						          <td class="col-level">${titles[userinfoVO.userLevel==null ? 0 : userinfoVO.userLevel].titleName }</td>
						          <td class="col-trend"><span class="fa fa-arrow-up"></span></td>
						        </tr>
					        	</s:iterator>
					        </tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="question-right">
				<a href="question/addUI.action" class="btn btn-success new-problem">
					<span class="fa fa-comment-o"></span> 发布问题
				</a>
				<s:if test="#user != null">
					<div class="panel panel-default question-my">
						<div class="panel-body">				
							<div class="user-info">
							  <a class="user-img" href="#">
							    <img src="${user.userHead }" class="img-circle" alt="${user.userName }">
							  </a>
							  <p class="username">${user.userName }</p>
							</div>
						</div>
						<div class="panel-footer">
							<ul class="user-about">
							  <li>
							  	<a href="#">提问
								  <s:if test="#questionNum!=0">
								   <i class="remind">${questionNum }</i>
								  </s:if> 
								  </a>
							  </li>
							  <li>
							  	<a href="#">回复 
					  			  <s:if test="#replyNum!=0">
								   <i class="remind">${replyNum }</i>
								  </s:if> 
							  	</a>
							  </li>
							</ul>
						</div>
					</div>
				</s:if>
				<div class="panel panel-default tags-cloud">
					<div class="panel-body">
						<s:iterator value="#postlabels">
					        <a href="labelId=${labelId }" class="list-tag" target="_self">${labelName }</a>
						</s:iterator>
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
