function loginModal() {
	$("#userLogin").modal('show');
}

function login() {
	var userName = $("#inputuserName").val();
	var userPwd = $("#inputuserPwd").val();
	$.ajax({
		url : contextPath +"/login/login.action",
		data : "userName=" + userName + "&userPwd=" + userPwd,
		type : "post",
		success : function(data) {
			if (data == "1") { // 登录失败
				$("#msg").html("用户名不存在、或密码错误！");
			} else {
				window.location.reload(true);
			}
		}
	});
}

function regist() {
	var userName = $("#inputuserName").val();
	var userPwd = $("#inputuserPwd").val();
	var userEmail = $("#userEmail").val();
	$.ajax({
		url : contextPath +"/regist/regist.action",
		data : "userName=" + userName + "&userPwd=" + userPwd + "&userEmail="
				+ userEmail,
		type : "post",
		success : function(data) {
			if (data != null) { // 注册成功、则刷新本页面
				window.location.reload(true);
			}
		}
	});
}