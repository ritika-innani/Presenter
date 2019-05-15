$('document').ready(function(){
	
	/* Function for features page toggle */
	
	$('#who-use').click(function(){
		if(!$('#who-use').hasClass('primary'))
		{
			$('#who-use').addClass('primary');
			$('#how-works').removeClass('primary');
		}
	});
	$('#how-works').click(function(){
		if(!$('#how-works').hasClass('primary'))
		{
			$('#how-works').addClass('primary');
			$('#who-use').removeClass('primary');
		}
	});
	
	$('#who-use').click(function(){
		if(!$('#who-uses-container').hasClass('selected'))
		{
			$('#who-uses-container').addClass('selected');
			$('#how-works-container').removeClass('selected');
		}
	});
	$('#how-works').click(function(){
		if(!$('#how-works-container').hasClass('selected'))
		{
			$('#how-works-container').addClass('selected');
			$('#who-uses-container').removeClass('selected');
		}
	});
	
});