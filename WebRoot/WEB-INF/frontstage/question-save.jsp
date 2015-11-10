<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>爱智网</title>
	</head>
	<body>
	<s:include value="/WEB-INF/frontstage/nav.jsp"></s:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/frontstage/css/public/question.css" />
	<div class="container" id="main">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="panel panel-default" id="save-left">
					<div class="panel-heading">发问题</div>
					<div class="panel-body">						
						<form class="form-horizontal" id="qForm">
							<div class="form-group category">
								<label for="inputEmail3" class="col-sm-1 control-label">分类：</label>
						    	<div class="col-sm-11">
						    		<s:iterator value="#posttypes" status="st">
							      		<a href="javascript:void(0)" class="border-blue button border-2x ${st.first ? 'active' : '' }" data-type="${typeId }">${typeName }</a>
						    		</s:iterator>
						    	</div>
							</div>
	               			<div class="form-group ques-title">
						    	<label for="inputEmail3" class="col-sm-1 control-label">标题：</label>
						    	<div class="col-sm-11">
						      		<input type="text" class="form-control" name="postTitle" id="title" placeholder="请输入问题标题" />
						    	</div>
						  	</div>
						  	<div class="form-group ques-content">
						    	<label for="inputEmail3" class="col-sm-1 control-label">内容：</label>
						    	<div class="col-sm-11">
						      		<!-- 加载编辑器的容器 -->								 
								    <script id="container" name="postContext" type="text/plain">
								    	<span style="color: #bbb; font-size: 14px;">输入问题内容</span>
								    </script>
								    <!-- 配置文件 -->
								    <script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/ueditor/ueditor.config.js"></script>
								    <!-- 编辑器源码文件 -->
								    <script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/ueditor/ueditor.all.min.js"></script>
								    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/frontstage/js/ueditor/lang/zh-cn/zh-cn.js"></script>								    
								    <!-- 实例化编辑器 -->
								    <script type="text/javascript">
								        var ue = UE.getEditor('container', {
										    toolbars: [
										    	['insertcode', 'source', 'undo', 'redo', 'bold', 'italic', 'underline', 'superscript',
										    	, 'blockquote', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'insertimage'
										    	, 'preview', 'drafts']
										    ],
										    initialFrameWidth: '100%',
										    initialFrameHeight: 300,	
										    elementPathEnabled: false,
										    wordCount: false,
										    //initialContent: '随便写',			    
										    autoClearinitialContent: true
										});									        								        
								    </script>								    								   
								    <!-- 提交comment -->								    
						    	</div>
						  	</div>
						  	<div class="form-group ques-title">
						    	<label for="inputEmail3" class="col-sm-1 control-label">标签：</label>
						    	<div class="col-sm-11">
						      		<div id="tagcontent" class="tags-content">
				                        <span id="label-default">您最多可以选择1个标签哟！</span>
				                    </div>
						    	</div>						    	
						  	</div> 
						  	<div class="form-group ques-title">
						    	<label for="inputEmail3" class="col-sm-1 control-label"></label>
						    	<div class="col-sm-11">
						    		<s:iterator value="#postlabels">
										<a href="javascript:;" class="list-tag" data-id="${labelId }" name="${labelName }">${labelName }</a>
						    		</s:iterator>
                              </div>
						  	</div>						  	
						  	<div class="col-sm-12 text-center">
					  			<button class="btn btn-success ques-sub">发布问题</button>
					  		</div>
               			</form>
					</div>					
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="panel panel-default" id="ques-help">
					<div class="panel-heading">帮助</div>
					<div class="panel-body">
			          <h1>
			        	    您想发问题 还是发问题还是想发问题？
			          </h1>
			          <dl>
			            <dt>上面没有写错，是您看错啦。</dt>
			            <dd>1、您是想来吐槽的吧，没事，随便发吧。有人会跟你一起吐槽的。</dd>
			            <dd>2、您是来解决问题？请先搜索是否已经有同类问题吧。这样您就省心少打字。</dd>
			            <dd>3、没找到是么？就在发问题时精确描述你的问题，不要写与问题无关的内容哟；</dd>
			            <dd>4、慕课讨论更热衷于解达您想要的答案。能引起思考和讨论的知识性问题；</dd>
			            <dt>问答禁止这些提问</dt>
			            <dd>1、禁止发布求职、交易、推广、广告类与问答无关信息将一律清理。</dd>
			            <dd>2、尽可能详细描述您的问题，如标题与内容不符，或与问答无关的信息将被关闭。</dd>
			            <dd>3、问答刷屏用户一律冻结帐号</dd>
			          </dl>
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
						<img class="img-responsive" src="${pageContext.request.contextPath }/frontstage/img/logoBottom.png">
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
	<script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/bootstrap.autocomplete.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/frontstage/js/public/question-save.js" ></script>
	</body>
</html>
