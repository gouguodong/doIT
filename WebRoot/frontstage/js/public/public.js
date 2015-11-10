/*让样式根据页面的大小变动而变动*/
function setHeight() {
	var max_height = document.documentElement.clientHeight - 105;
	$(".message").height(max_height);
	$(".header").height(max_height);
	$(".chat").height(max_height);
	$(".chat .show").height(max_height * 0.85);
	$(".chat .appendMessage").height(max_height * 0.15);
}

$(function() {
	var lis = $("#ulList").children("li");
	for (var i = 0; i < lis.length; i++) {
		lis[i].onclick = function() {
			for (var j = 0; j < lis.length; j++) {
				$(lis[j]).removeClass("active");
			}
			$(this).addClass("active");
			//移除.info下的所有div、然后再添加结果集合
		}
	}
	document.onkeydown = function(ev) {
		var oEvent = ev || event;
		if (oEvent.keyCode == 13) {
			messageSubmit();
		}
	}
})

function aOnClick(userId) {
	//根据传进来的ID来展示info中的聊天对象以及聊天内容
	//加载聊天框应该是一个静态的、不是一个模态框

}


function messageSubmit() {
	var tmp = $("#messageInput").val();
	if (tmp != '') {
		//不为空则发送
		$("#messageList").append("<li class='row myself pull-right'>ddd</li>");
	} else {
		//为空则给出提示信息
	}
	$("#messageInput").val("");
	//	if ($(".show").scrollTop() > 0) {
	//		var scrollTop = $("#messageInput")[0].scrollHeight;
	//		$("#messageInput").scrollTop(scrollTop + 20);
	//		alert(scrollTop);
	//	}
	$("#messageModal").scrollTop($("#messageModal")[0].scrollHeight);
}