$(function() {
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
		$(".attention-del").click(function (){
		    var relationId=$(this).parent().children(".rId").val();
		    $.ajax({
				url:"usercourse/delAttention.action",
				data:"relationId="+relationId,
				type:"post",
				dataType : "json",
				success:function(data){
					if(data.success){
						window.location.href =data.msg;
					}
				}
			})
		})
		
	});
	
	$("#userleft .trash-complete").click(function() {
		$(this).css("display", 'none');
		$(this).prev().css("display", 'block');
		$(".attention-item .attention-del").css("display", "none");
	});
	
	//pencil
	/*$(".my-signature .fa-pencil").click(function(e) {
		$(".signing").css("display", 'block');
		e.stopPropagation();
		$(document).one("click", function() {
			$(".signing").css("display", 'none');
			$(".signing").css("height", '50px');
			//并更新到数据库
			$.ajax({
				url:"userinfo/userSign.action",
				data:"signature="+escape($('#signing').value()),
				type:"post",
				success:function(data){
					if(data!=null){
						window.location=data;
					}
				}
			})
		});
	});*/
})
