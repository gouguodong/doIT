$(function() {
	$("[data-state]").click(function() {
		var $f = $($(this).attr('href'));
		$f.find('[name=questionState]').val($(this).data('state'));
		$f.submit();
		return false;
	});
	
	$("[data-label]").click(function() {
		var $f = $($(this).attr('href'));
		$f.find('[name=labelId]').val($(this).data('label'));
		$f.submit();
		return false;
	});
	
	$("[data-page]").click(function() {
		if ( $(this).parent().hasClass('disabled') ) return false;
		var $f = $($(this).attr('href'));		
		$f.find('[name=pageNum]').val($(this).data('page'));
		$f.submit();
		return false;
	});
});
