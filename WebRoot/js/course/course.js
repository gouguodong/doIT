$(function() {
	getCourses(0);
})

/**
 * 滚动条监听
 */
function changeScroll() {
	var scrollTop = $(this).scrollTop();
　　var scrollHeight = $(document).height();
　　var windowHeight = $(this).height();
　　if(scrollTop + windowHeight >= scrollHeight){ // 如果滚动条到达底部、则加载新数据
		$.ajax({
			url : "course/courseselectLevel.action",
			data : "typeId=" + $("#findCourse").attr("title") + "&currentPage="
					+ $("#findCourse").attr("lang") + "&level=" + $("#findCourse").attr("dir"),
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#findCourse").attr("lang", data.currentPage + 1);
				if (data.recordList.length < 1) { // 如果记录数为0
					myAlert("没有您检索的数据");
					return;
				}
				for ( var i = 0; i < data.recordList.length; i++) {
					var p = $("<div class='col-lg-4 col-md-4 col-xs-12'><a href='course/courseinfoUI.action?courseId="+data.recordList[i].courseId
							+"'>"
							+ "<div class='course-item'>" + "<div class='list-img'>"
							+ "<img width='280' height='160' alt='"
							+ data.recordList[i].courseName + "' src='"
							+ data.recordList[i].courseIndex + "'>" + "</div><h5><span>"
							+ data.recordList[i].courseName + "</span></h5>"
							+ "<div class='intro'><p>" + data.recordList[i].courseAd
							+ "</p>"
							+ "<span class='l'>更新至"+data.recordList[i].updateTo+"</span><span class='r'>课程时长: "
							+ data.recordList[i].courseTime + "</span>"
							+ "</div><div class='tips'><span class='l'>更新时间: "
							+ data.recordList[i].updateTime + "</span>"
							+ "<span class='r'>" + data.recordList[i].studyNumber
							+ "人学习</span></div></div></a></div>");
					$("#courseList").append(p);
				}
			}
		});
　　}
}

function addCourse(data) {
	if (data.recordList.length < 1) { // 如果记录数为0
		myAlert("没有您检索的数据");
		return;
	}
	$("#findCourse").attr("lang", data.currentPage + 1);
	$("#courseList").html("");
	for ( var i = 0; i < data.recordList.length; i++) {
		var p = $("<div class='col-lg-4 col-md-4 col-xs-12'><a href='course/courseinfoUI.action?courseId="+data.recordList[i].courseId
				+"'>"
				+ "<div class='course-item'>" + "<div class='list-img'>"
				+ "<img width='280' height='160' alt='"
				+ data.recordList[i].courseName + "' src='"
				+ data.recordList[i].courseIndex + "'>" + "</div><h5><span>"
				+ data.recordList[i].courseName + "</span></h5>"
				+ "<div class='intro'><p>" + data.recordList[i].courseAd
				+ "</p>"
				+ "<span class='l'>更新至"+data.recordList[i].updateTo+"</span><span class='r'>课程时长: "
				+ data.recordList[i].courseTime + "</span>"
				+ "</div><div class='tips'><span class='l'>更新时间: "
				+ data.recordList[i].updateTime + "</span>"
				+ "<span class='r'>" + data.recordList[i].studyNumber
				+ "人学习</span></div></div></a></div>");
		$("#courseList").append(p);
	}
}

function getCourses(typeId) {
	$.ajax({
		url : "course/courselist.action",
		data : "typeId=" + typeId,
		type : "post",
		dataType : "json",
		success : function(data) {
			$("#findCourse").attr("title", typeId);
			$("#findCourse").attr("currentPage", data.currentPage + 1);
			addCourse(data);
		}
	});
}

function getHots() {
	$.ajax({
		url : "course/coursehot.action",
		data : "typeId=-1", // -1 表示最热课程
		type : "post",
		dataType : "json",
		success : function(data) {
			$("#findCourse").attr("title", -1);
			$("#findCourse").attr("currentPage", data.currentPage + 1);
			addCourse(data);
		}
	});
}

function getforme() {
	$.ajax({
		url : "course/courseforme.action",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data == "1") {
				myAlert("您还没有登录");
			}
			else {
				$("#findCourse").attr("title", -2);
				$("#findCourse").attr("currentPage", data.currentPage + 1);
				addCourse(data);				
			}
		}
	});
}

function selectLevel(level) {
	$.ajax({
		url : "course/courseselectLevel.action",
		data : "typeId=" + $("#findCourse").attr("title") + "&currentPage="
				+ $("#findCourse").attr("lang") + "&level=" + level,
		type : "post",
		dataType : "json",
		success : function(data) {
			$("#findCourse").attr("lang", data.currentPage + 1);
			addCourse(data);
		}
	});
}