jQuery(document).ready(function($) {
	$('#member-all').on('click', function() {
		if($(this).prop('checked')) {
			$('.member-checkbox').prop('checked',true);
		} else {
			$('.member-checkbox').prop('checked',false);
		}
	});
});
