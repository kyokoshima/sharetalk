jQuery(function($){

var $form  = $('#new_timeline');
var $ta    = $('#timeline_content');
var $taval = $('#timeline_content').val();
$(document).on('keypress','#timeline_content',function(e){
	if(e.shiftKey){
		if(e.keyCode === 13){
			if($taval.replace(/\s/g, "").length > 0)
				e.preventDefault();
				$form.submit();
				return false;
		}
	} else {
		$('#timeline_content').on('keydown',function(e){
			if(e.keyCode === 13){
				$(this).css('height',$ta.height()+5);
			}
		});
	}
});

})