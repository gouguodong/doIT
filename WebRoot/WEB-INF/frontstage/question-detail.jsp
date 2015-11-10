<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>爱智网</title>						
	</head>

	<body>
		<%@include file="/WEB-INF/frontstage/nav.jsp" %>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/css/public/question.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/js/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css" />
		<div class="container" id="main">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="detail-left">
					<div class="panel panel-default">
						<div class="panel-heading">
							<ol class="breadcrumb">
								<li><a href="question/index.action">全部问题</a>
								</li>
								<li class="active">课程问答</li>
							</ol>
						</div>
						<div class="panel-body">
							<div class="user-info" data-uid="${user.userId }">
								<s:set name="isSet" value="user.userId==#luser.userId"></s:set>
								<a class="user-img" href="#">
									<img src="${user.userHead }" class="img-circle" alt="${user.userName }">
								</a>
								<a class="username" href="#">${user.userName}</a>
							</div>
							<div class="bdsharebuttonbox">
								<a href="#" class="bds_more" data-cmd="more"></a>
							</div>
							<script>
								window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
							</script>
							<div class="qa-content" data-qid="${postId }">
								<div class="qa-content-inner imgPreview">
									<div id="js-content-main">
										<h3 class="js-qa-wenda-title qa-wenda-title">${postTitle }</h3>
										<div id="js-qa-content" class="qa-disscus rich-text">
											${postContext }
										</div>
									</div>
								</div>
								<div class="qa-content-addon clearfix">
									<span class="qa-createtime pull-left"><s:property value="transTime(postTime)"/> </span>
									<div class="keyword-list">
										<a href="question/index.action?labelId=${postlabel.labelId }" target="_self" class="list-tag">${postlabel.labelName }</a>
									</div>
									<s:if test="postresource != null">
										<a href="#" class="qa-course-from"> 源自：${postresource.resourceUrl }</a>
									</s:if>
									<span class="qa-view-num pull-right">${empty clickNumber ? 0 : clickNumber } 浏览</span>
									<span class="qa-total-comment pull-right">${empty replyNumber ? 0 : replyNumber} 回答</span>
								</div>
							</div>
							<div class="qa-comments">
								<s:if test="#adoptReply != null">
									<div class="qa-comment row js-qa-comment" data-uid="${adoptReply.user.userId }" data-rid="${adoptReply.replyId}">
										<div class="qa-comment-wrap clearfix thebest ">
											<h3 class="the-best-answer">最佳回答</h3>
											<span class="qa-comment-time"><s:property value="transTime(#adoptReply.replyTime)"/> </span>
	
											<div class="qa-comment-d">
												<!-- <div class="qa-triangle-left"><i></i></div> -->
												<div class="qa-comment-inner">
													<div class="qa-comment-c imgPreview">
														<div class="rich-text">
															<p>${adoptReply.replyContext }</p>
														</div>
													</div>
													<div class="qa-comment-addon">
														<div class="qa-comment-author" style="margin-top: 10px;">
															<a href="#" title="${adoptReply.user.userName }">
																<img src="${adoptReply.user.userHead }" class="img-circle" width="24" height="24">
																<span class="qa-comment-nick">${adoptReply.user.userName }</span>
																<!---->
															</a>
														</div>
														<div class="qa-comment-addon-r">
															<span class="qa-total-reply js-reply-item-reply">
																<span class="fa fa-comment-o"></span>
																<span class="js-qa-tr-num">回复</span>
															</span>
															<span class="js-qa-comment-support qa-comment-support  js-qacom-supported-user" data-ids="">
																<span class="fa fa-thumbs-o-down fa-rotate-180"></span>
																<span class="js-qa-support-num">${adoptReply.replyNumber }</span>
															</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="qa-reply col-sm-11 col-sm-offset-1">
											<div class="qa-reply-header"></div>
											<div class="qa-replies">
												<div class="qa-reply-c">
													<!--  <p class="qa-reply-loading">
	              									     加载中...
	           										    </p>  -->
													<!-- 默认显示三条回复的回复 -->
													<s:iterator value="#adoptReply.replies" status="st">
													<div class="qa-reply-item" data-rid="${replyId }">
														<a class="qa-reply-item-author" href="#" title="${user.userName }">
															<img class="img-circle" src="${user.userHead }">
														</a>
														<div class="qa-reply-item-inner">
															<p>
																<a href="#" class="qa-reply-nick">${user.userName }</a>: 
																回复
																<a href="#" class="qa-reply-nick">${reply.user.userName }</a>
															</p>
															<p class="q-reply-item-c">${replyContext }</p>
															<div class="qa-reply-item-foot">
																<span class="reply-item-index pull-right">${st.count }</span>
																<span><s:property value="transTime(replyTime)"/> </span>
																<span class="qa-reply-item-reply js-reply-item-reply" data-uid="${uesr.userId }">
									            				回复
									            			</span>
															</div>
														</div>
													</div>
													</s:iterator>
												</div>
	
												<!-- 回复框 -->
												<div class="js-qa-reply-ibox qa-reply-ibox hide clearfix">
													<div class="qa-reply-iavator col-sm-1">
														<a href="#" title="jweikai">
															<img class="img-circle" src="img/test/user5.jpg" width="40" height="40">
														</a>
													</div>
													<div class="qa-reply-iwrap col-sm-11">
														<div class="qa-reply-iarea">
															<form class="form-horizontal" action="#">
																<textarea name="replyComment" id="replyComment" class="form-control" placeholder="写下你的评论..." rows="5"></textarea>
																<div class="btn-toolbar pull-right">
																	<span class="qa-tips qa-tips-error hide"><span class="fa fa-warning"></span>&nbsp;请输入回复内容</span>
																	<button type="button" class="btn btn-default js-ipt-cancel">取消</button>
																	<button class="btn btn-success js-ipt-submit">提交</button>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</s:if>
								<s:iterator value="replies">
								<s:if test="status != 2">
								<div class="qa-comment row js-qa-comment" data-uid="${user.userId }" data-rid="${replyId}">
									<a href="question/adopt.action?replyId=${replyId }&questionId=${postId}" class="js-qa-comment-accept qa-comment-accept ${isSet && (user.userId != luser.userId)&&adoptReply==null ? '':'hide' }" data-ids="">
								        <i></i>
								        <span>设置为最佳问答</span>
								    </a>
									<div class="qa-comment-wrap clearfix">
										<div class="col-sm-1 qa-comment-author text-center">
											<a href="javascript:;" title="${user.userName }">
												<img src="${user.userHead }" class="img-circle" width="42">
											</a>
											<a href="#" style="font-size:12px;color:#ccc;">${user.userName }</a>
										</div>
										<div class="col-sm-11 qa-comment-d ${isSet && (user.userId != luser.userId)&&adoptReply==null ? 'hasSet':'' }">
											<div class="rich-text">
												${replyContext }
											</div>
											<div class="qa-comment-addon">
												<span class="qa-comment-time"><s:property value="transTime(replyTime)"/> </span>
												<div class="qa-comment-addon-r">
													<span class="qa-total-reply js-reply-item-reply">
									                	<span class="fa fa-comment-o"></span>
														<span class="js-qa-replay">回复</span>
													</span>
													<span class="js-qa-comment-support qa-comment-support js-qacom-supported-user" data-ids="">
								                	<span class="fa fa-thumbs-o-down fa-rotate-180"></span>
													<span class="js-qa-support-num">${replyNumber }</span>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="qa-reply col-sm-11 col-sm-offset-1">
										<div class="qa-reply-header"></div>
										<div class="qa-replies">
											<div class="qa-reply-c">
												<p class="qa-reply-loading hide">
													加载中...
												</p>
												<!-- 默认显示三条回复的回复 -->
												<s:iterator value="replies" status="st">
												<div class="qa-reply-item" data-rid="${replyId }">
													<a class="qa-reply-item-author" href="#" title="${user.userName }">
														<img class="img-circle" src="${user.userHead }">
													</a>
													<div class="qa-reply-item-inner">
														<p>
															<a href="#" class="qa-reply-nick">${user.userName }</a>: 
															回复
															<a href="#" class="qa-reply-nick">${reply.user.userName }</a>
														</p>
														<p class="q-reply-item-c">${replyContext }</p>
														<div class="qa-reply-item-foot">
															<span class="reply-item-index pull-right">${st.count }</span>
															<span><s:property value="transTime(replyTime)"/> </span>
															<span class="qa-reply-item-reply js-reply-item-reply" data-uid="${uesr.userId }">
								            				回复
								            			</span>
														</div>
													</div>
												</div>
												</s:iterator>
											</div>
											<!-- 回复框 -->
											<div class="js-qa-reply-ibox qa-reply-ibox hide clearfix">
												<div class="qa-reply-iavator col-sm-1">
													<a href="#" title="${luser.userName }">
														<img class="img-circle" src="${luser.userHead }" width="40" height="40">
													</a>
												</div>
												<div class="qa-reply-iwrap col-sm-11">
													<div class="qa-reply-iarea">
														<form class="form-horizontal" action="#">
															<textarea name="replyContext" class="form-control replyComment" placeholder="写下你的评论..." rows="5"></textarea>
															<div class="btn-toolbar pull-right">
																<span class="qa-tips qa-tips-error hide"><span class="fa fa-warning"></span>&nbsp;请输入回复内容</span>
																<button type="button" class="btn btn-default js-ipt-cancel">取消</button>
																<button type="button" class="btn btn-success js-ipt-submit">提交</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								</s:if>
								</s:iterator>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-sm-1">
									<a href="javascript:;" title="${luser.userName }">
										<img src="${luser.userHead }" alt="${luser.userName }" class="img-circle" width="42">
									</a>
								</div>
								<div class="col-sm-11">
									<form id="userForm" action="question/answer.action">
										<input type="hidden" name="questionId" value="${questionId }" />
										<!-- 加载编辑器的容器 -->
										<script id="replyQuestion" name="replyContext" type="text/plain">
										<span style="color: #bbb; font-size: 14px;">输入问题内容</span>
										</script>
										<!-- 配置文件 -->
										<script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/ueditor/ueditor.config.js"></script>
										<!-- 编辑器源码文件 -->
										<script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/ueditor/ueditor.all.min.js"></script>
										<!-- 实例化编辑器 -->
										<script type="text/javascript">
											var ue = UE.getEditor('replyQuestion', {
													    toolbars: [
													    	['insertcode', 'source', 'undo', 'redo', 'bold', 'italic', 'underline', 'superscript', 'underline',
													    	'blockquote', 'blockquote', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'insertimage'
													    	, 'preview']
													    ],
													    initialFrameWidth: '100%',
													    initialFrameHeight: 180,	
													    elementPathEnabled: false,
													    wordCount: false,
													    //initialContent: '随便写',			    
													    autoClearinitialContent: true
													});
										</script>
										<!-- 提交comment -->
										<button type="button" class="btn btn-success pull-right" id="userAnswer" style="margin-top:10px; padding:5px 30px;">回答</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="question-right">
					<a href="question/addUI.action" class="btn btn-success new-problem">
						<span class="fa fa-comment-o"></span> 发布问题
					</a>
					<s:if test="#luser != null">
						<div class="panel panel-default question-my">
							<div class="panel-body">				
								<div class="user-info">
								  <a class="user-img" href="#">
								    <img src="${luser.userHead }" class="img-circle" alt="${luser.userName }">
								  </a>
								  <p class="username">${luser.userName }</p>
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
					<div class="panel panel-default question-hotrank">
						<div class="panel-heading">相关问题</div>
						<div class="panel-body">
							<s:if test="#userposts==null||#userposts.size()==0">
								还没有人提出相关问题
							</s:if>
							<s:iterator value="#userposts">
								<div class="media">
									<div class="media-body">
										<h4 class="media-heading"><a href="#">${postTitle }</a></h4>
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
							    <a href="#">
									<img src="${userHead == null ? 'frontstage/img/test/user5.jpg' : userHead }" class="img-circle" alt="${userName }"/>
							    </a>
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading"><a href="#">${userName }</a></h4>
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
							<li><a href="#">学院概况</a> </li>
							<li><a href="#">教育教学</a> </li>
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
						<p>0744-8358630 | 0744-8202008
							<br><a href="#">jsdxrjxy@163.com</a>
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
		<script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/public/question-detail.js"></script>
	</body>

</html>