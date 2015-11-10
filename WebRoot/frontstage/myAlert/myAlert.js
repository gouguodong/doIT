;(function($) {	
	$.myalerts = {
		lock: 'myAlert_lock',		
		srollBarWidth: 75,
		popupId: 'myAlert_popup_container',
		alert: function(message, title, callback) {
			if( title == null ) title = '提醒'
			$.myalerts._show(title, message, 'alert', callback);
		},
		_show: function(title, message, type, callback) {
			$.myalerts._showLock();
			$.myalerts._setProperty(title,message);
			$.myalerts._confirmEvent();
		},
		_init: function() {			
			$lock = $("<div id="+$.myalerts.lock+"></div>");
			$lock.css({
				background: '#000000',
				opacity: 0.5,
				position: 'absolute',
				top: '0',
				left: '0',
				zIndex: 99990,
				width: $(document).width(),
				height: $(document).height(),
				display: 'none'
			});					
			$('body').css({
				margin: 0,
				padding: 0,			
			}).append($lock).append('<div id="myAlert_popup_container"><dl><dt class="title">提&nbsp;醒</dt><dd class="message"</dd><dd class="pos-right"><input type="button" value="确定" /></dd></dl></div>');
			var $popup = $("#"+$.myalerts.popupId);
			$popup.css({
				left: $(window).width()/2-$("#"+$.myalerts.popupId).outerWidth()/2,
				top: $(window).height()/2-$("#"+$.myalerts.popupId).outerHeight()/2
			});
			$(window).on({
				resize: function() {
					$lock.css({
						width: $(window).width(),
						height: $(document).height()	
					});
				}
			});
		},
		_showLock: function() {
			var $lock = $("#"+$.myalerts.lock);
			var $popup = $("#"+$.myalerts.popupId);
			$lock.css({
				display: 'block',
				opacity: 0.5
			});		
			$popup.css({
				display: 'block'
			});		
		}, 
		_setProperty: function(title, message) {
			var $popup = $("#"+$.myalerts.popupId);
			$popup.find('.title').html(title).end().find('.message').html(message);	
		},
		_confirmEvent:function() {
			var $popup = $("#"+$.myalerts.popupId);
			var $lock = $("#"+$.myalerts.lock);
			$popup.find(":button").click(function() {
				$popup.fadeOut(200, function() {
					$popup.css({
						display: 'none'
					});
				});
				$lock.fadeOut(200, function() {
					$lock.css({
						display: 'none',			
					});	
				});
			});			
		}
	};
	$.myalerts._init();
	myAlert = function(message, title, callback) {
		$.myalerts.alert(message, title, callback);
	}	
})(jQuery)