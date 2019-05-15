$(document).ready(function(){
	
	/* Function for signup page*/
	
	$('#subscribe-monthly').click(function(){
		if(!$('.monthly').hasClass('selected'))
		{
			$('.monthly').addClass('selected');
			$('.annualy').removeClass('selected');
		}
	});
	$('#subscribe-annualy').click(function(){
		if(!$('.annualy').hasClass('selected'))
		{
			$('.annualy').addClass('selected');
			$('.monthly').removeClass('selected');
		}
	});
	

});