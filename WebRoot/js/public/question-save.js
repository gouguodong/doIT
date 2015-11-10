$(function() {
	$("#save-left .category a").click(function() {
		if ( $(this).hasClass("active") ) return ;
		$(this).siblings().removeClass("active");
		$(this).addClass("active");
	});
	
	//tags
	$(".ques-title .list-tag").click(function() {
		var $target = $("#tagcontent");		
		var $thisName = $(this).attr("name");
		var b = $target.find(".list-tag").length > 0;
		$target.find(".list-tag").each(function(index) {
			if ( $(this).attr("name") == $thisName ) {				
				return b=false;
			}
		});
		if ( b ) {			
			return ;
		}
		if ( $(this).hasClass("active") ) {
			$(this).removeClass("active");
			var name = $(this).attr("name");			
			$target.find(".list-tag").filter(function(index) {
				return $(this).attr("name") == name;
			}).remove();
			if ( $target.children(".list-tag").length == 0 ) {
				$target.children("span").css("display", "inline");
			}
			return ;
		}
		$(this).addClass("active");		
		$target.children("span").css("display", "none");
		var $source = $(this).clone();
		$source.append("<span class='fa fa-close pull-right'></span>");
		$target.append($source);
	});	
	
	//事件委托
	$("#tagcontent").on("click", ".list-tag", function() {		
		var $target = $("#tagcontent");
		$(this).remove();		
		if ( $target.children(".list-tag").length == 0 ) {
			$target.children("span").css("display", "inline");
		}
	})	
	
	//accomplate
	var matchCount = 6;//返回结果集最大数量
	$("#title").autocomplete({
		source: function(query, process) {
			 $.post(
				 "question/searchTitle.action"
				 ,{"matchInfo":query,"matchCount":matchCount}
				 ,function(respData){
					 var resp = $.parseJSON(respData);
					 return process(resp.obj);
				 }
			);
		},
		formatItem:function(item){			
			return item['postTitle'];
		},		
		setValue:function(item){
			return {'data-value':item["postTitle"],'real-value':item["postId"]};
		}
	});	
	//表单提交
	$("#qForm").submit(function() {
		var fdata = $(this).serializeArray();			
		//posttype data
		fdata.push({
			name: 'posttypeId',
			value: $("#save-left .category a.active").data('type')
		});
		//tags data 
		fdata.push({
			name: 'postlabelId',
			value: $("#tagcontent .list-tag").data('id')
		});			
		$.ajax({
			type: 'post',
			data: fdata,
			url: 'question/add.action',
			dataType: 'json',
			success: function(resp) {
				if ( resp.success ) {
					window.location.href = 'question/addSuccess.action?questionId=' + resp.msg;
				}
			}		
		});
		return false;
	});
});
