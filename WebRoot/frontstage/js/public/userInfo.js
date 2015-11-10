$(function() {
	alert("123");
	getUserInfo();
	$(".space-tabs-menu li a").click(function() {
		var _this = this;
		$(this).parent().siblings().removeClass("active");
		$(this).parent().addClass("active");
		$(".dot-curr").animate({
			left: $(_this).parent().position().left
		}, 300);
	});
	
	//delete
	$("#userleft .fa-trash-o").click(function() {
		$(this).css("display", 'none');
		$(this).next().css("display", 'block');
		$(".attention-item .attention-del").css("display", "block");
	});
	$("#userleft .trash-complete").click(function() {
		$(this).css("display", 'none');
		$(this).prev().css("display", 'block');
		$(".attention-item .attention-del").css("display", "none");
	});
	
	//pencil
	$(".my-signature .fa-pencil").click(function(e) {
		$(".signing").css("display", 'block');
		e.stopPropagation();
		$(document).one("click", function() {
			$(".signing").css("display", 'none');
			$(".signing").css("height", '50px');
			//并更新到数据库
			/*$.ajax({
				url:"userinfo/userSign.action",
				data:"signature="+escape($('#signing').value()),
				type:"post",
				success:function(data){
					if(data!=null){
						window.location=data;
					}
				}
			})*/
		});
	});
	
	
});
function gopage(url) {
	window.location.href = url;
}
function getUserInfo(){
	$.ajax({
		url:"userinfo/showUser.action",
		type:"post",
		success:function(data){
			
			var test=$("<div>testtesttest</div>")
			$("#userinfo").append(test);
			var uinfo=$("<div class='col-lg-3 col-md-3 hidden-sm hidden-xs'>"
					+"<div class='panel panel-default' id='userright'>"
					+"<div class='panel-heading'>"
					+"<img src='"+<%=basePath %>${sessionScope.user.userHead }+"' />"
					+"</div><div class='panel-body'><h4 class='myname'>"
				    +${sessionScope.user.userName}+"</h4>"
					+"<p class='job-title'> 学生 </p>"
				    +"<div class='my-signature'>"
			        +"<div class='sign-wrap'>"
			        +"<p id='signed' class='signed'>"+${data.signature }+"</p></div>"
			        +"</div></div><div class='panel-footer'>"
				    +"<div class='mp-item'>"
				    +"<span class='mp-title'>经验</span>"
	                +"<span class='mp-num'>+"${data.userExp }+"</span></div></div></div>"
					+"<div class='panel panel-default space-data'>"
					+"<ul class='list-group'>"
				    +"<li class='list-group-item'>"
				    +"<span class='fa fa-clock-o'>"
				    +"</span>学习："+${data.studyTime}+"小时"
				    +"</li>"
			        +"<li class='list-group-item'>"
			        +"<span class='fa fa-book'>"
			        +"</span>已学："
					+"<a href='#' class='countCourse'>"
					+"<em>"+${data.studyCourse }+"</em>门课程</a>"
				    +"</li>"
				     +"<li class='list-group-item'>"
				     +"<span class='fa fa-question-circle'>"
				     +"</span>提问：<a href='#'>"
				     +${data.postNumber }+"条</a>"
					+"</li>"
				    +"<li class='list-group-item'>"
				    +"<span class='fa fa-comment-o'>"+"</span>"
					+"回答：<a href='#'>"+${data.replyNumber }+"条</a>"
				    +"</li>"
				    +"<li class='list-group-item'>"
				    +"<span class='fa fa-code'>"+"</span>"
					+"代码：<a href='#'>"+${data.codeNumber }+"条</a>"
				    +"</li>"
					+"</ul>"
					+"</div>"
					+"<div class='panel panel-default visitors'>"
					+"<div class='panel-heading'>最近访客</div>"
				    +"<div class='panel-body'>"
					+"<!--  这个是有用户情况
					+"<div class='media'>"
					+"<div class='media-left'>"
					+"<a href='#'>"
				    +"<img class='media-object img-circle' src='img/test/user1.jpg'>"
					+"</a>"
					+"</div>"
					+"<div class='media-body'>"
				    +"<h4 class='media-heading'>"
				    +"<a href='javascript:;'>Quany</a></h4>Web前端工程师"
				    +"</div>"
					+"</div>-->"
					+"<!-- 没有用户 -->"
					+"<div class='nouser'>"
					+"<span class='fa fa-3x fa-user img-circle'></span>"
				    +"<div class='nouser-info'>暂无同学拜访此页面</div>"
					+"</div>"
					+"</div>"
					+"</div>"
				    +"</div>"
			);
			$("#userinfo").append(uinfo);
		}
	})
}
