<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>爱智网</title>
	</head>
	<body>
	<s:set name="idx" value="2"></s:set>
	<s:include value="/WEB-INF/frontstage/nav.jsp"></s:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/css/public/question.css" />
	<form id="indexForm" action="question/index.action" method="get">
		<input type="hidden" name="pageNum" value="${currentPage }" />
		<input type="hidden" name="questionState" value="${questionState }" />
		<input type="hidden" name="labelId" value="${labelId }" />
	</form>
	<div class="container" id="main">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="panel panel-default" id="questionLeft">
					<div class="panel-heading space-tabs-menu">													
						<ul class="myspace-tab-list">
			                <li class="active"><a href="question/index.action">全部问答</a></li>
		                </ul>
		                <div class="dot-curr"></div>
					</div>
					<div class="panel-body">
						<div class="head-newpost">
							<div class="newpost">
						        <a href="#indexForm" data-state="1" class="quealltab ${questionState==1?'active':'' }">最新</a>
						        <a href="#indexForm" data-state="2" class="quealltab ${questionState==2?'active':'' }">热门</a>
				                <a href="#indexForm" data-state="3" class="quealltab ${questionState==3?'active':'' }">等待回复</a>	          	                
			              	</div>
			              	<div style="clear: both;"></div>			              	
			              	<div class="question-list">
				              	<s:iterator value="recordList" status="st"> 
				              	<div class="media">
								  <div class="media-left">
								    <a href="friendIndex/index.action?id=${user.userId }" title="${user.userName }">
								      <img class="media-object img-circle" src="${user.userHead }" alt="${user.userName }">								      
								    </a>
								    <a href="friendIndex/index.action?id=${user.userId }" title="${user.userName }"><span class="user-name">${user.userName }</span></a>
								  </div>
								  <div class="media-body">
								    <h4 class="media-heading wendaquetitle">									    							    									
								    		<span class="fa fa-${replyVOs[st.count-1].status!=2? 'question':'check' }-circle"></span>
								    	<div class="wendatitlecon js-wendatitlecon"><a href="question/show.action?questionId=${postId }">${postTitle }</a></div>
								    </h4>
								    <div class="media-descript replycont">
								    	<span class="fa fa-envelope-o"></span>
								    	<div class="replydes">					
								    		<s:if test="replyNumber == 0 || replyNumber == null">
									    		<div class="replysign">[还没有人回答]</div>								    										    	
									    		<span class="replydet">
									    			嗯～～，这个提问大家都在考虑......
									    		</span>
								    		</s:if>		
								    		<s:else>
							    				<div class="replysign ${replyVOs[st.count-1].status==2?'adopt':'new' }">[${replyVOs[st.count-1].status==2?'醉赞的回答':'最新回答' }]</div>										    		
								    			<a href="friendIndex/index.action?id=${replyVOs[st.count-1].userVO.userId }" data-id="12" class="replyuserhead" title="${replyVOs[st.count-1].userName }">
									    			<img class="img-circle" src="${replyVOs[st.count-1].userHead }" />
									    		</a>
									    		<a href="friendIndex/index.action?id=${replyVOs[st.count-1].userVO.userId }" target="_blank" title="${replyVOs[st.count-1].userName }" class="nickname">${replyVOs[st.count-1].userName }: </a>
									    		<span class="replydet">
									    			${replyVOs[st.count-1].replyContext }
									    		</span>
								    		</s:else>
								    	</div>
								    </div>
								    <div class="media-bottom">
								  		<time>提问时间：<s:property value="transTime(postTime)"/></time>
								  		<div class="keyword-list">					                      					                      
					                      <a href="#indexForm" data-label="${postlabel.labelId }" target="_self" class="list-tag">${postlabel.labelName }</a>	
					                    </div>
					                    <s:if test="postresource != null">
											<a href="#" class="qa-course-from"> 源自：${postresource.resourceUrl }</a>
										</s:if>
								  	</div>
								  </div>	
								  <div class="ys">
				                    <div class="number text-center">
				                      <b class="numShow">${replyNumber == null ? 0 : replyNumber }</b>
				                    </div>
				                    <div class="number">回答</div>
				                  </div>
				                  <div class="browsenum">
				                    <div class="number text-center">
				                      <b class="numShow">${clickNumber == null ? 0 : clickNumber }</b>
				                    </div>
				                    <div class="number">浏览</div>
				                  </div>
								</div>
								</s:iterator>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<%@ include file="/WEB-INF/frontstage/pageView.jsp" %>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="question-right">
				<a href="question/addUI.action" class="btn btn-success new-problem">
					<span class="fa fa-comment-o"></span>
					发布问题
				</a>
				<s:if test="#luser != null">
					<div class="panel panel-default question-my">
						<div class="panel-body">				
							<div class="user-info">
							  <a class="user-img" href="friendIndex/index.action?id=${luser.userId }">
							    <img src="${luser.userHead }" class="img-circle" alt="${luser.userName }">
							  </a>
							  <p class="username">${luser.userName }</p>
							</div>
						</div>
						<div class="panel-footer">
							<ul class="user-about">
							  <li>
							  	<a href="userpost/quePost.action">提问
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
					        <a href="#indexForm" data-label="${labelId }" class="list-tag" target="_self">${labelName }</a>
						</s:iterator>
				      </div>
				</div>
				<div class="panel panel-default question-hotrank">
					<div class="panel-heading">一周热门问题</div>
					<div class="panel-body">
						<s:iterator value="#topposts" status="st">
							<div class="media">
							  <div class="media-left">
							    <a href="question/show.action?questionId=${postId }">
							      <i class="top-remind top${st.count }">热</i>
							    </a>
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading"><a href="question/show.action?questionId=${postId }">${postTitle }</a></h4>
							  </div>
							  <div class="rankingnum">
							  	<em>${replyNumber == null ? 0 : replyNumber }</em>
							  	<span>回答</span>
							  </div>
							</div>
						</s:iterator>											
					</div>
				</div>
				<div class="panel panel-default replays-hotrank">
					<div class="panel-heading">
						一周回答雷锋榜
						<a href="question/more.action" class="more pull-right">更多<a>
					</div>
					<div class="panel-body clearfix">
						<s:iterator value="#users">
						<div class="media">
						  <div class="media-left">
						    <a href="friendIndex/index.action?id=${userId }">
								<img src="${userHead == null ? 'frontstage/img/test/user5.jpg' : userHead }" class="img-circle" alt="${userName }"/>
						    </a>
						  </div>
						  <div class="media-body">
						    <h4 class="media-heading"><a href="friendIndex/index.action?id=${userId }">${userName }</a></h4>
						         ${titles[userinfo.userLevel == null ? 1 : userinfo.userLevel].titleName}
						  </div>
						  <div class="rankingnum">
						  	<em>${userinfo.replyNumber }</em>
						  	<span>回答</span>
						  </div>
						</div>
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
    <script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/public/question.js" ></script>
	</body>
</html>
