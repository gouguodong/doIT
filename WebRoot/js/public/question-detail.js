$(function() {
	var b = false;
	$(".js-qa-comment-support").click(function() {
		//判断改用户是否赞过
		if ( !b ) {
			b = true;
			$(this).find(".js-qa-support-num").text(function() {
				$(this).text($(this).text()-(-1));
			});
		}else {
			alert('你已赞过');
		}
	});	
	$('.js-reply-item-reply').click(function() {
		var $txtContent = $(this).parents('.js-qa-comment').find('.js-qa-reply-ibox').removeClass('hide').find('textarea');
		var rname = $(this).parents('.qa-reply-item-inner').find('.qa-reply-nick:first').text();
		$(this).parents('.js-qa-comment').find('.js-qa-reply-ibox').find('.qa-tips').addClass('hide');
		if ( rname.length > 0 ) {
			$txtContent.val('回复  ' + rname + ': ');
		}else {
			$txtContent.val('');
		}
		$txtContent.focus();
	});
	$(".js-qa-reply-ibox").find(".js-ipt-cancel").click(function() {
		$(this).parents('.js-qa-reply-ibox').addClass('hide');
	});
	$(".js-qa-reply-ibox").find(".js-ipt-submit").click(function() {	//回复别人
		var $content = $(this).parent().prev();		
		if ( $.trim($content.val()) == "" ) {
			$(this).siblings('.qa-tips').removeClass('hide');			
			return ;
		}
		var $this = $(this);
		$.ajax({
			type: 'post',
			url: 'question/answer.action',
			data: {
				'replyContext': $content.val(),
				'replyFatherId': $(this).parents('.js-qa-comment').data('rid'),
			},
			dataType: 'json',			
			success: function(resp) {
				var robj = resp.obj;
				var ruser = robj.userVO;				
				var $tar = $this.parents('.qa-replies').find('.qa-reply-c');					
				var $p = $('<div class="qa-reply-item" data-rid="">' +
					'<a class="qa-reply-item-author" href="#" title="'+ruser.userName+'">' +
						'<img class="img-circle" src="'+ruser.userHead+'">' +
					'</a>' +
					'<div class="qa-reply-item-inner">' +
						'<p><a href="#" class="qa-reply-nick">'+ruser.userName+'</a>:' +
						' 回复 ' +
						'<a href="#" class="qa-reply-nick">'+robj.userName+'</a>' +
						'</p>' +
						'<p class="q-reply-item-c">'+robj.replyContext+'</p>' +
						'<div class="qa-reply-item-foot">' +
							'<span class="reply-item-index pull-right">#'+($tar.find('.qa-reply-item').length+1)+'</span>' +
							'<span>'+robj.replyTime+'</span>' +
							'<span class="qa-reply-item-reply js-reply-item-reply" data-rid="'+robj.replyId+'">' +
            				'回复' +
            			'</span>' +
						'</div>' +
					'</div>' +
				'</div>');
				$tar.append($p);
				$tar.parents('.qa-replies').find('.replyComment').val('');
			}
		});
	});
	$(".js-qa-reply-ibox").find('textarea').change(function() {		
		if ( $(this).next().find('.qa-tips').hasClass('hide') ) {
			return ;
		}
		$(this).next().find('.qa-tips').addClass('hide');
	});
	
	//提交回复问题
	$("#userAnswer").click(function() {
		$.ajax({
			type: 'post',
			url: 'question/answer.action',
			data: $("#userForm").serializeArray(),
			dataType: 'json',
			success: function(resp) {
				var robj = resp.obj;
				var ruser = robj.userVO;
				$.post('frontstage/html/reply.html', {}, function(data) {
					var $e = $(data);
					$e.find('.js-qa-comment').data('rid', robj.replyId);
					$e.find('.js-qa-comment').data('uid', ruser.userId);					
					var $u = $e.find('.qa-comment-author');
					$u.find('a:first').attr('title', ruser.userName);
					$u.find('img').attr('src', ruser.userHead);
					$u.find('.uName').html(ruser.userName);
					$e.find('.rich-text').html(robj.replyContext);
					$e.find('.qa-comment-time').html(robj.replyTime);
					$e.find('.js-qa-support-num').html(0);
					var $u1 = $e.find('.qa-reply-iavator');
					$u1.find('a').attr('title', ruser.userName);
					$u1.find('img').attr('src', ruser.userHead);
					$(".qa-comments").append($e);
					UE.getEditor('replyQuestion').setContent('');
				}, 'html');
			}
		});		
	});
	
});
