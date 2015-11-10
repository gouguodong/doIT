function loginModal() {
	$("#userLogin").modal('show');
}

function login() {
	var userName = $("#userName").val();
	var userPwd = $("#userPwd").val();
	$.ajax({
		url : "login/login.action",
		data : "userName=" + userName + "&userPwd=" + userPwd,
		type : "post",
		success : function(data) {
			if (data == "1") { // 登录失败
				$("#msg").html("用户名不存在、或密码错误！");
			} else {
				window.location = data;
			}
		}
	});
}

function regist() {
	var userName = $("#inputuserName").val();
	var userPwd = $("#inputuserPwd").val();
	var userEmail = $("#inputuserEmail").val();
	$.ajax({
		url : "regist/regist.action",
		data : "userName=" + userName + "&userPwd=" + userPwd + "&userEmail="
				+ userEmail,
		type : "post",
		success : function(data) {
			if (data == '1') {
				myAlert("用户名、邮箱或密码不能为空");
			}
			else if (data == '2') {
				myAlert("用户名已存在");
			}
			else if (data == '3') {
				myAlert("邮箱已存在");
			}
			else { // 注册成功、则刷新本页面
				window.location = data;
			}
		}
	});
}