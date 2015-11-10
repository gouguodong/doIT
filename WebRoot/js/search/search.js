function addCourse(data) {
	if (data.recordList.length < 1) { // 如果记录数为0
		myAlert("没有您检索的数据");
		return;
	}
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