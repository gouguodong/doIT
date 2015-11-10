<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>

	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>爱智网 - ${sessionScope.user.userName }的消息中心</title>
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/global.css" />
		<link rel="stylesheet" href="<%=basePath %>frontstage/css/public/message.css" />
		<script type="text/javascript" src="<%=basePath %>frontstage/js/jquery-1.10.2.min.js"></script>
		<script src="<%=basePath %>frontstage/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>frontstage/js/global.js"></script>
		<script type="text/javascript" src="<%=basePath %>frontstage/js/public/message.js"></script>
	</head>

	<body>
		<jsp:include page="../nav.jsp"></jsp:include>
		<div id="main">
			<div class="container clearfix">
				<div id="left_panel">
					<!-- 最左侧列表(消息, 好友) -->
					<ul id="left_panel_nav">
						<li class="active" id="msg_new"> 
							<a href="javascript:void(0)" title="最近"><!-- <span class="unread_num" style="display: block;">1</span> --></a> 
						</li>
						<li id="msg_friends">
							<a href="javascript:void(0)" title="好友"></a>
						</li>
						<li id="msg_apply">
							<a href="javascript:void(0)" title="好友申请"></a>
						</li>
					</ul>					
					<div class="left_panel_content">						
						<div id="list_waper">
							<!-- 显示消息 -->
							<ul id="lastChat" class="user_list">
<!-- 								<li id="lastChat10000" uid="10000"> -->
<!-- 									<img src="frontstage/img/test/nvshen.jpg" alt="小智" width="40" height="40"> -->
<!-- 									<div class="info"> -->
<!-- 										<h5>小智</h5> -->
<!-- 										<p class="theLastMsg">text</p> -->
<!-- 									</div> -->
<!-- 								</li> -->
							</ul>
							<!-- 显示好友 -->
								<!-- 
								<ul id="friends" style="display: none;" class="user_list">
								<li id="friends10000" onclick="showUserInfo(this,'nvshen-big.jpg','10000','名字','备注','女','');" uid="" data-group="">
									<img src="<nvshen.jpg" alt="慕女神" width="40" height="40">
									<div class="info">
										<h5>名字</h5>
										<p>备注</p>
									</div>
								</li>
								<p class="groupChar">Z</p>
								</ul>
								 -->
						</div>
					</div>
				</div>
				<!-- 聊天部分 -->
				<div id="chat_container">
					<div id="chat_content">
						<ul id="userchatUl10000" uid="10000" class="userchatUl" style="display: none;">
							<!-- 
							<li>
								<div class="timeLine"> <strong>2014-09-07</strong>
								</div>
							</li>
							 -->
							<li class="me">
								<div class="chat_avata">
									<a>
										<img width="40" height="40" class="img_border_one" src="frontstage/img/test/my.jpg">
									</a>
								</div>
								<div class="a_msg_info">
									<pre>zx</pre>
									<i class="arrow_left_b"></i>
								</div>
								<small class="time">2014-09-07 10:03</small>
							</li>
						</ul>
						<ul id="userchatUl108721" uid="108721" class="userchatUl" style="display: none;">
							<li>
								<div class="timeLine"> <strong style="width:130px;">2015-06-02</strong>
								</div>
							</li>
							<li class="me system">
								<div class="chat_avata">
									<a>
										<img width="40" height="40" class="img_border_one" src="http://img.mukewang.com/user/5333a0c40001088802000200-80-80.jpg">
									</a>
								</div>
								<div class="a_msg_info" id="2257020"><pre><a target="_blank" href="/space/u/uid/108721">追梦的少年</a>同意了你的好友请求，你们现在可以对话啦！</pre><i class="arrow_left_b"></i>
								</div> <small class="time">2015-06-02 09:51</small> 
							</li>
						</ul>
						<!-- 这里本没有数据, ajax生成的 
						<div class="userinfo_layer">
							<p class="headpic">
								<img src="frontstage/img/test/user-big.jpg" width="130" height="130">
							</p>
							<p class="name">追梦的少年</p>
							<p class="job">PHP开发工程师</p>
							<p>男,上海市</p>
							<p>这位同学很懒，什么也没有留下 - - !</p>
							<div class="btn_area"> 
								<a href="/space/u/uid/108721" class="btn btn-primary" target="_blank">访问主页</a> 
								<a id="gotoSend" uid="108721" class="btn btn-success" href="javascript:;">发消息</a>
								<a id="rmfriend" class="btn btn-danger" href="javascript:;">删除好友</a>
							</div>
						</div>
						数据生成结束 -->
					</div>
					<!-- 聊天编辑器 -->
					<div id="chat_editor" style="display: none;">
						<form method="post" action="/message/upload?1433378300354" enctype="multipart/form-data" id="upLoadForm" target="imageFrame">
							<table cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<th>
											<div class="attach">
												<a id="sendEmojiIcon" href="javascript:void(0)" title="表情" style="margin-top:0">表情</a>
												<div id="face_panel">
													<div id="choose_face">
														<a title="[微笑]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/1.png">
															<p>微笑</p>
														</a>
														<a title="[不]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/2.png">
															<p>不</p>
														</a>
														<a title="[亲亲]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/3.png">
															<p>亲亲</p>
														</a>
														<a title="[无聊]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/4.png">
															<p>无聊</p>
														</a>
														<a title="[鼓掌]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/5.png">
															<p>鼓掌</p>
														</a>
														<a title="[伤心]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/6.png">
															<p>伤心</p>
														</a>
														<a title="[害羞]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/7.png">
															<p>害羞</p>
														</a>
														<a title="[闭嘴]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/8.png">
															<p>闭嘴</p>
														</a>
														<a title="[耍酷]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/9.png">
															<p>耍酷</p>
														</a>
														<a title="[无语]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/10.png">
															<p>无语</p>
														</a>
														<a title="[发怒]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/11.png">
															<p>发怒</p>
														</a>
														<a title="[惊讶]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/12.png">
															<p>惊讶</p>
														</a>
														<a title="[委屈]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/13.png">
															<p>委屈</p>
														</a>
														<a title="[酷]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/14.png">
															<p>酷</p>
														</a>
														<a title="[汗]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/15.png">
															<p>汗</p>
														</a>
														<a title="[闪]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/16.png">
															<p>闪</p>
														</a>
														<a title="[放屁]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/17.png">
															<p>放屁</p>
														</a>
														<a title="[洗澡]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/18.png">
															<p>洗澡</p>
														</a>
														<a title="[偶耶]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/19.png">
															<p>偶耶</p>
														</a>
														<a title="[困]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/20.png">
															<p>困</p>
														</a>
														<a title="[咒骂]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/21.png">
															<p>咒骂</p>
														</a>
														<a title="[疑问]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/22.png">
															<p>疑问</p>
														</a>
														<a title="[晕]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/23.png">
															<p>晕</p>
														</a>
														<a title="[衰]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/24.png">
															<p>衰</p>
														</a>
														<a title="[装鬼]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/25.png">
															<p>装鬼</p>
														</a>
														<a title="[受伤]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/26.png">
															<p>受伤</p>
														</a>
														<a title="[再见]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/27.png">
															<p>再见</p>
														</a>
														<a title="[抠鼻]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/28.png">
															<p>抠鼻</p>
														</a>
														<a title="[心寒]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/29.png">
															<p>心寒</p>
														</a>
														<a title="[怒]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/30.png">
															<p>怒</p>
														</a>
														<a title="[凄凉]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/31.png">
															<p>凄凉</p>
														</a>
														<a title="[悄悄]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/32.png">
															<p>悄悄</p>
														</a>
														<a title="[奋斗]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/33.png">
															<p>奋斗</p>
														</a>
														<a title="[哭]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/34.png">
															<p>哭</p>
														</a>
														<a title="[赞]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/35.png">
															<p>赞</p>
														</a>
														<a title="[开心]" href="javascript:;">
															<img class="ph_face_s" src="frontstage/img/smiley/36.png">
															<p>开心</p>
														</a>
													</div>
												</div>
											</div>
										</th>
										<th>
											<div class="chat_upImg" style="text-align:center">
												<input type="file" name="imgFile" id="msgUploadImg" accept="image/jpeg,image/gif,image/x-png" title="图片">
											</div>
										</th>
										<th>
											<div style="position:relative;width:490px; padding-top: 8px;">
												<textarea class="chatInput" id="textInput" type="text"></textarea>
												<div id="msg_upImg_box" style="display:none;">
													<img id="tempViewImg" src="<%=basePath %>frontstage/img/test/course1.jpg">
												</div>
												<span id="imgDel" style="display:none;width:10px;height:10px;background:url(img/close-1.png) no-repeat 0 0;"></span>
											</div>
										</th>
										<th> <a id="chat-send" class="btn btn-success" href="javascript:;">发送</a> </th>
									</tr>
								</tbody>
							</table>
						</form>
						<iframe width="0" height="0" id="imageFrame" name="imageFrame" frameborder="0" scrolling="no"></iframe>
					</div>
				</div>
				<div id="editor_msg"></div>
			</div>
		</div>
	</body>

</html>