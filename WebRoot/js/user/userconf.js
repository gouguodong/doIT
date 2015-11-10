$(function() {
	// myAlert("123");
	// getCity();
	// getCounty();
})

function updateBase() {
	$.ajax({
		url : "userInfo/userInfoupdate.action",
		data : "officeId=" + $("#officeId").val() + "&countyId="
				+ $("#countyId").val() + "&userSex="
				+ $("input[name='userSex']:checked").val() + "&signature="
				+ $("#signature").val(),
		type : "post",
		success : function(data) {
			if (data == "1") { // 表示失败

			} else {
				myAlert("修改成功!");
				window.location = data;
			}
		}
	});
}

function getCity() {
	$.ajax({
		url : "userInfo/userInfogetCity.action",
		data : "provinceId=" + $("#provinceId").val(),
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data != null) {
				$("#cityId").html("");
				for ( var i = 0; i < data.length; i++) {
					$("#cityId").append(
							"<option value='" + data[i].cityId + "'>"
									+ data[i].cityName + "</option>");
				}
				getCounty();
			}
		}
	});
}

function getCounty() {
	$.ajax({
		url : "userInfo/userInfogetCounty.action",
		data : "cityId=" + $("#cityId").val(),
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data != null) {
				$("#countyId").html("");
				for ( var i = 0; i < data.length; i++) {
					$("#countyId").append(
							"<option value='" + data[i].countyId + "'>"
									+ data[i].countyName + "</option>");
				}
			}
		}
	});
}

function changeHead() {
	$.ajax({
		url : "userInfo/headchangeSystemHead.action",
		type : "post",
		success : function(data) {
			if (data != null) {
				window.location = data;
				myAlert("修改成功！");
			}
		}
	});
}

function changed() {
	$("#uploadHead").submit();
	$.ajax({
		url : "userInfo/headfind.action",
		type : "post",
		success : function(data) {
			if (data != null) {
				$("._save").attr("style", "");
				$("#userHead").attr("src", data);
				$("#avator-btn-save").on("click", function(){
					$.ajax({
						url : "userInfo/headsave.action",
						data : "userHead=" + $("#userHead").attr("src"),
						type : "post",
						success : function(data) {
							if (data != null) {
								window.location = data;
								myAlert("修改成功！");
							}
						}
					});
				});
			}
		}
	});
}

function save() {
	
}

function changeVerifyEmail() {
	var value = $('#emialP').text();
	$("#emialP").html(
			"<input type='text' value='" + value
					+ "' class='form-control col-xs-4' id='verifyEmail' >");
	$("#changeEmail")
			.before(
					"<button id='verify-btn-sent' onclick='sendEmail()' class='rlf-btn-green'>发送验证邮件</button> ");
	$("#changeEmail").attr("onclick", "");
}
function changeEmail() {
	var value = $('#emialP').text();
	$("#emialP").html(
			"<input type='text' value='" + value
					+ "' class='form-control col-xs-4' id='verifyEmail' >");
	$("#changeEmail").attr("onclick", "");
}

function sendEmail() {
	$.ajax({
		url : "userInfo/emailsend.action",
		data : "userEmail=" + $("#verifyEmail").val(),
		type : "post",
		success : function(data) {
			if (data == "0") { // 表示发送成功
				myAlert("请登录您的邮箱进行验证");
			}
			else {
				myAlert(data);
			}
		}
	});
}

function updatePwd() {
	$.ajax({
		url : "userInfo/pwdupdate.action",
		data : "userPwd=" + $("#newPwd").val() + "&oldPwd=" + $("#oldPwd").val(),
		type : "post",
		success : function(data) {
			if (data == "0") { // 表示发送成功
				myAlert("密码修改成功、下次请用新密码登录");
				$("#newPwd").val("");
				$("#oldPwd").val("");
				$("#confirm").val("");
			}
			else {
				myAlert(data);
			}
		}
	});
}