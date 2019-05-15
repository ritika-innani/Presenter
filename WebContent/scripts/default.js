
$(document).ready(function(){
	/* Function for window scrolling */
		
		$(window).scroll(function() {
			if ($(this).scrollTop() > $('.first').outerHeight(true)) {
			  $('.scroll-controller').addClass('layer1-scrolled');
			} else {
			  $('.scroll-controller').removeClass('layer1-scrolled');
			}
		});
		
		(function(){
			var previousScroll = 0;
			$(window).scroll(function(){
			   var currentScroll = $(this).scrollTop();
			   if (currentScroll > previousScroll){
				   $('.scroll-controller').addClass('scroll-down');
				   $('.scroll-controller').removeClass('scroll-up');
			   }else {
				   $('.scroll-controller').addClass('scroll-up');
				   $('.scroll-controller').removeClass('scroll-down');
			   }
			   previousScroll = currentScroll;
			   if (currentScroll==0){
				    $('.scroll-controller').removeClass('scroll-up');
			   }
			});
		}());
		
	/* Function for signup/login toggle */
		
		$('#signup-click').click(function(){
			if(!$('.new-signup-form').hasClass('selected'))
			{
				$('.new-signup-form').addClass('selected');
				$('#signup-click').css('text-decoration' , 'underline');
				$('#login-click').css('text-decoration' , 'none');
				$('.new-login-form').removeClass('selected');
			}
		});
		$('#login-click').click(function(){
			if(!$('.new-login-form').hasClass('selected'))
			{
				$('.new-login-form').addClass('selected');
				$('#signup-click').css('text-decoration' , 'none');
				$('#login-click').css('text-decoration' , 'underline');
				$('.new-signup-form').removeClass('selected');
			}
		});

	/*function for login panel display */
		$('#loginPanel').click(function(){
		if($('#sliding-form').css('display') != 'block')
		{
			$('#sliding-form').slideDown(500);
		}
		else
		{
			$('#sliding-form').slideUp(500);
		}
		});		
		$('#closeButton').click(function(){
			$('#sliding-form').slideUp(500);
		});
		
});

