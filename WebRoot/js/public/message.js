$(function() {	
	//初使化#main高度
	$("#main").height($(window).height()-$(".header").innerHeight()-42);
	$(window).resize(function() {		
		$("#main").height($(window).height()-$(".header").innerHeight()-42);
		$("#chat_content").height($("#main .container").height()-$("#chat_editor").height()-31);
	});
	//初使化chat_edit高度	
	$("#chat_content").height($("#main .container").height()-$("#chat_editor").height()-31);
	var lastheight = $("#main .container").height()-$("#chat_editor").height() + 42;
	$("#lastChat").attr("style", "height: " + lastheight + "px; overflow: auto;");
	
	$("#left_panel_nav > li").click(function() {
		if ( !$(this).hasClass("active") ) {
			$(this).siblings().removeClass("active");
			$(this).addClass("active");
		}
	});
	
	var dataid = $("._dataid").attr("data-id");
	if (!(dataid == null || dataid == undefined || dataid == 'undefined')) {
		dwr.engine.setActiveReverseAjax(true); // 激活反转 重要     
		SendPushService.addScriptSession(dataid,function(msg){});
	}
	
	$(function() {
		var id = $("._dataid").attr("data-id");
		if (!(id == null || id == undefined || id == 'undefined')) {
			dwr.engine.setActiveReverseAjax(true); // 激活反转 重要     
    		SendPushService.addScriptSession(id,function(msg){});  
		}
	});
	function returnMessage(recId, context) {
		SendPushService.send(recId, context, function(msg) {
		});
	}
	/** 由dwr在后台调用这个方法* */
	function doMessage(msg) {
		var number = 0;
		if (data == 'ok') {
			if (number != 0) {
				$("._messageNumber").html(number);
			}
		}
	}
	
	getRecent();
	getMessageNumber();
	getApplyNumber();
	
	$("#msg_new").click(function(){
		getRecent();		
	});
	$("#msg_friends").click(function(){
		getFriend();		
	});
	$("#msg_apply").click(function(){
		getApply();
	});
	
	//初使化聊天界面
	function init() {
		$("#lastChat > li").removeClass("active");
		$("#chat_content ul").css("display", "none");
		$("#chat_editor").css("display", "none");
		$("#textInput").val('');
	}	
	
	//笑脸
	$("#sendEmojiIcon").click(function(e) {
		if ( $(this).hasClass("sendEmojiIcon_ac") ) {
			$(document).trigger("click");
			return ;
		}
		var $this = $(this);
		$(document).one("click", function() {
			$this.removeClass("sendEmojiIcon_ac");
			$("#face_panel").css("display", "none");
		});		
		$("#face_panel").css("display", "block");
		$(this).addClass("sendEmojiIcon_ac");
		e.stopPropagation();	//防止事件冒泡
	});
	//相机
	$("#msgUploadImg").change(function() {		
		$(this).parent().addClass("chat_upImg_ac");
		$(this).css("display", "none");
		$("#msg_upImg_box").css("display", "block");
		$("#imgDel").css("display", "block");
		$("#textInput").css("display", "none").val('<img class="chatPhoto" src="'+$("#tempViewImg").attr("src")+'">');
		//把input:file内上传，并清空file
		$(this).val('');
	});
	$("#imgDel").click(function() {
		$("#msgUploadImg").parent().removeClass("chat_upImg_ac");
		$("#msgUploadImg").css("display", "block");
		$("#msg_upImg_box").css("display", "none");
		$("#imgDel").css("display", "none");
		$("#textInput").css("display", "block").val('');
	});
	//选择表情
	$("#face_panel a").click(function() {
		$("#textInput").val($("#textInput").val() + $(this).attr("title"));
	});
	//发送消息
	$("#chat-send").click(function() {
		//这里应该是提交表单
		var conText = $("#textInput").val();
		var regex = /\[.{1,2}\]/g;
		var emotions = conText.match(regex);
		if ( emotions != null ) {
			emotions.forEach(function(emotion) {
				var $e = $("#choose_face a").each(function(index) {
					if ( $(this).attr("title") == emotion ) {					
						conText = conText.replace(emotion, '<img class="ph_face" src="'+$(this).find("img").attr("src")+'">');
					}
				});	
			});				
		}
		var uid = $("#userchatUl").attr("uid");
		if (uid == '1') {	// 用户标识为1时、表示智能应用'小智'
			$.ajax({
				url : "message/messagerobot.action",
				data : "&messageContext=" + conText, // 用消息编号暂时标识接收用户
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == '0') {
						myAlert("您已退出登录、请重新登录之后再发送消息");
						$("#userLogin").modal("show");
					} else if (data == '1') {
						myAlert("消息内容不能为空");
					} else {
						var o = $('<li class="me"><div class="chat_avata"><a><img width="40" height="40" class="img_border_one" src='
								+data[0].send.userHead+'></a></div><div class="a_msg_info" id="0"><pre>'
								+data[0].messageContext+'</pre><i class="arrow_left_b"></i></div><small class="time">'
								+data[0].times+'</small></li>');
						$("#userchatUl").append(o);
						$("#textInput").val('');
						//滚动底部
						$("#chat_content").scrollTop($("#userchatUl").height()+40);
						
						var result = $('<li class="you"><div class="chat_avata"><a><img width="40" height="40" class="img_border_one" src='
								+data[1].send.userHead+'></a></div><div class="a_msg_info" id="0"><pre>'
								+data[1].messageContext+'</pre><i class="arrow_left_b"></i></div><small class="time">'
								+data[1].times+'</small></li>');
						$("#userchatUl").append(result);
						$("#textInput").val('');
						//滚动底部
						$("#chat_content").scrollTop($("#userchatUl").height()+40);
					}
				}
			});
		}
		else {
			$.ajax({
				url : "message/messagesend.action",
				data : "messageId=" + uid + "&messageContext=" + conText, // 用消息编号暂时标识接收用户
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == '0') {
						myAlert("您已退出登录、请重新登录之后再发送消息");
						$("#userLogin").modal("show");
					} else if (data == '1') {
						myAlert("消息内容不能为空");
					} else {
						var o = $('<li class="me"><div class="chat_avata"><a><img width="40" height="40" class="img_border_one" src='
								+data.send.userHead+'></a></div><div class="a_msg_info" id="0"><pre>'
								+conText+'</pre><i class="arrow_left_b"></i></div><small class="time">'
								+data.times+'</small></li>');
						$("#userchatUl").append(o);
						$("#textInput").val('');
						//滚动底部
						$("#chat_content").scrollTop($("#userchatUl").height()+40);
						
						// 即时通话、换成AJAX刷新算了
//						SendPushService.sendMessage(uid, data.messageId, function(msg) {});
					}
				}
			});
		}
	});	
});
function showUserInfo(obj, headImg, id, name, job, location, message) {
	$("#chat_content").height($("#main .container").height()-31);
	var uid = $(obj).attr("uid");
	var p = $('<div class="userinfo_layer"><p class="headpic"><img src="'+headImg+'" width="130" height="130"></p><p class="name">'
			+name+'</p><p class="job">'+job+'</p><p>'+location+'</p><p>'+message+'</p><div class="btn_area"><a href="javascript:;" class="btn btn-primary" target="_blank">访问主页</a> <a id="gotoSend" uid="'
			+id+'" class="btn btn-success" href="javascript:getMessage(1, '+id+')">发消息</a> <a id="rmfriend" class="btn btn-danger" href="javascript:deletefriend('+id+');">删除好友</a></div></div>');
	p.css("display", "block");
	$("#chat_content").find(".userinfo_layer").remove();
	$("#chat_content").append(p);
}	

function deletefriend(id) {
	$.ajax({
		url : "friend/frienddelete.action",
		data : "friendId=" + id,
		type : "post",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			} else {
				myAlert("删除成功");
				getFriend();
			}
		}
	});
}

function getRecent() {
	$.ajax({
		url : "message/messagegetData.action",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			}
			else {
				$("#lastChat").html('');
				for (var i = 0; i < data.length; i++) {
					var ali = $("<li id='lastChat" + data[i].userId + "' uid='" + data[i].userId + "'></li>");
					var aimg = $("<img width='40' height='40' />");
					aimg.attr("alt", data[i].userName);
					aimg.attr("src", data[i].userHead);
					ali.append(aimg);
					var adiv = $("<div class='info'></div>")
					var ah5 = $("<h5></h5>");
					ah5.append(data[i].userName);
					var ap = $("<p class='theLastMsg'></p>");
					ap.append(data[i].frost);
					adiv.append(ah5);
					adiv.append(ap);
					ali.append(adiv);
					$("#lastChat").append(ali);
				}
				$("#lastChat > li").click(function() {
					var uid = $(this).attr("uid");
					getMessage(1, uid);
					setInterval(function() {
						doMessage(uid);
					},3000);		
				});
			}
		}
	});
}

function getFriend() {
	$.ajax({
		url : "friend/friendgetData.action",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			}
			else {
				$("#lastChat").html('');
				$("#chat_content").html('');
				$("#chat_editor").css("display", "none");
				for (var i = 0; i < data.length; i++) {
					var ali = $("<li id='lastChat" + data[i].relationId + "' uid='" + data[i].relationId + "'></li>");
					ali.attr("onclick", "showUserInfo(this,'"+data[i].userB.userHead
							+"','"+data[i].userB.userId+"','"+data[i].userB.userName+"','"+data[i].userB.userName+"','"+data[i].userB.userinfoVO.userSex
							+"','"+data[i].userB.userinfoVO.signature+"');");
					var aimg = $("<img width='40' height='40' />");
					aimg.attr("alt", data[i].userB.userId);
					aimg.attr("src", data[i].userB.userHead);
					ali.append(aimg);
					var adiv = $("<div class='info'></div>")
					var ah5 = $("<h5></h5>");
					ah5.append(data[i].userB.userName);
					var ap = $("<p class='theLastMsg'></p>");
					ap.append(data[i].userB.userName);
					adiv.append(ah5);
					adiv.append(ap);
					ali.append(adiv);
					$("#lastChat").append(ali);
				}
				$("#lastChat > li").click(function() {
					$("#chat_editor").css("display", "none");
				});
			}
		}
	});
}

function getApply() {
	$.ajax({
		url : "apply/applygetData.action",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			}
			else {
				$("#lastChat").html('');
				$("#chat_content").html('');
				$("#chat_editor").css("display", "none");
				for (var i = 0; i < data.length; i++) {
					var ali = $("<li id='lastChat" + data[i].applyId + "' uid='" + data[i].applyId + "'></li>");
					ali.attr("onclick", "showApply(this,'"+data[i].userB.userHead
							+"','"+data[i].applyId+"','"+data[i].userB.userName+"','"+data[i].context+"');");
					var aimg = $("<img width='40' height='40' />");
					aimg.attr("alt", data[i].userB.userId);
					aimg.attr("src", data[i].userB.userHead);
					ali.append(aimg);
					var adiv = $("<div class='info'></div>")
					var ah5 = $("<h5></h5>");
					ah5.append(data[i].userB.userName);
					var ap = $("<p class='theLastMsg'></p>");
					ap.append(data[i].userB.userName);
					adiv.append(ah5);
					adiv.append(ap);
					ali.append(adiv);
					$("#lastChat").append(ali);
				}
				$("#lastChat > li").click(function() {
					$("#chat_editor").css("display", "none");
				});
			}
		}
	});
}
function showApply(obj, headImg, id, name, message) {
	$("#chat_content").height($("#main .container").height()-31);
	var uid = $(obj).attr("uid");
	var p = $('<div class="userinfo_layer"><p class="headpic"><img src="'+headImg+'" width="130" height="130"></p><p class="name">'
			+name+'</p><p>'+message+'</p><div class="btn_area"><a href="javascript:;" class="btn btn-primary" target="_blank">访问主页</a> <a id="gotoSend" uid="'
			+id+'" class="btn btn-success" href="javascript:addFriend('+id+')">添加</a> <a id="rmfriend" class="btn btn-danger" href="javascript:refuse('+id+');">拒绝</a></div></div>');
	p.css("display", "block");
	$("#chat_content").find(".userinfo_layer").remove();
	$("#chat_content").append(p);
}	
function addFriend(id) {
	$.ajax({
		url : "apply/applyadd.action",
		data : "applyId=" + id,
		type : "post",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			} else {
				myAlert("添加成功");
				getApply();
				getApplyNumber();
				getRecent();
				getMessageNumber();
			}
		}
	})
}
function refuse(id) {
	$.ajax({
		url : "apply/applyrefuse.action",
		data : "applyId=" + id,
		type : "post",
		success : function(data) {
			if (data == '0') {
				$("#userLogin").modal("show");
			} else {
				getApply();
				getApplyNumber();
			}
		}
	})
}

function getMessage(currentPage, uid) {
	$.ajax({
		url : "message/messagegetMessage.action",
		data : "messageId=" + uid + "&currentPage=" + currentPage,
		type : "post",
		dataType : "json",
		success : function(data) {
			$(this).siblings().removeClass("active");
			$(this).addClass("active");
			$("#chat_content").html("");
			var aul = $("<ul id='userchatUl' class='userchatUl' data-currentPage='"+(currentPage+1)+"' uid='"+uid+"'></ul>");
			var firstli = $("<li></li>");
			aul.append(firstli);
			for (var i = 0; i < data.length; i++) {
				var ali = $("<li></li>");
				if (data[i].status == 0) { // 表示接收
					ali.attr("class", "you");
				}
				else if (data[i].status == 1) { // 表示发送
					ali.attr("class", "me");
				}
				ali.append("<div class='chat_avata'><a target='_blank' href='javascript:void(0)'>" +
						"<img width='40' height='40' class='img_border_one' src='" + data[i].send.userHead + "'></a></div>" +
						"<div class='a_msg_info'><pre>" + data[i].messageContext + "</pre><i class='arrow_left_b'></i></div>" +
						"<small class='time'>" + data[i].times + "</small>");
				aul.find("li:first").before(ali);
			}
			var moreTo = $("<div class='_moreMessage' style='width: 120px; margin: auto;'><a href='javascript: ;'>查看更多</a></div>");
			moreTo.on("click", function() {
				more(currentPage + 1, uid);
			})
			aul.find("li:first").before(moreTo);
			$("#chat_content").append(aul);
			getMessageNumber();
		}
	});
	/*
		$("#chat_content ul").css("display", "none");
		$("#chat_content ul[uid="+uid+"]").css("display", "block");
	*/
	$("#chat_editor").css("display", "block");
	$("#chat_content").find(".userinfo_layer").css("display", "none");
}

function more(currentPage, uid) {
	$.ajax({
		url : "message/messagegetMessage.action",
		data : "messageId=" + uid + "&currentPage=" + currentPage,
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data != '0') {
				var aul = $("#userchatUl");
				aul.attr("data-currentPage", (currentPage + 1));
				for (var i = 0; i < data.length; i++) {
					var ali = $("<li></li>");
					if (data[i].status == 0) { // 表示接收
						ali.attr("class", "you");
					}
					else if (data[i].status == 1) { // 表示发送
						ali.attr("class", "me");
					}
					ali.append("<div class='chat_avata'><a target='_blank' href='javascript:void(0)'>" +
							"<img width='40' height='40' class='img_border_one' src='" + data[i].send.userHead + "'></a></div>" +
							"<div class='a_msg_info'><pre>" + data[i].messageContext + "</pre><i class='arrow_left_b'></i></div>" +
							"<small class='time'>" + data[i].times + "</small>");
					aul.find("li:first").before(ali);
				}
				
				var moreTo = $("._moreMessage");
				moreTo.on("click", function() {
					more(currentPage + 1, uid);
				});
			}
			else {
				var moreTo = $("._moreMessage");
				moreTo.html('没有更多的数据了');
				moreTo.on("click", function() {
					more(currentPage + 1, uid);
				});
			}
		}
	});
}

function getMessageNumber() {
	$.ajax({
		url : "message/messagenumber.action",
		type : "post",
		success : function(data) {
			if (data != '0') {
				$("#msg_new").find("a").html('<span class="unread_num" style="display: block;">'+data+'</span>');
			}
		}
	});
}
function getApplyNumber() {
	$.ajax({
		url : "apply/applynumber.action",
		type : "post",
		success : function(data) {
			if (data != '0') {
				$("#msg_apply").find("a").html('<span class="unread_num" style="display: block;">'+data+'</span>');
			}
		}
	});
}

function updateMessageNumber() {
	$.ajax({
		url : "message/messagenumber.action",
		type : "post",
		success : function(data) {
			if (data != '0') {
				$("#msg_new").find("a").html('<span class="unread_num" style="display: block;">'+data+'</span>');
			}
		}
	});
}

function doMessage(messageId) {
	$.ajax({
		url : "message/messageget.action",
		data : "messageId=" + messageId,
		type : "post",
		dataType : "json",
		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				var o = $('<li class="you"><div class="chat_avata"><a><img width="40" height="40" class="img_border_one" src='
						+data[i].send.userHead+'></a></div><div class="a_msg_info" id="0"><pre>'
						+data[i].messageContext+'</pre><i class="arrow_left_b"></i></div><small class="time">'
						+data[i].times+'</small></li>');
				$("#userchatUl").append(o);
				$("#textInput").val('');
				//滚动底部
				$("#chat_content").scrollTop($("#userchatUl").height()+40);				
			}
		}
	});
}
