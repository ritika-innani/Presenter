$(document).ready(function(){
	
	/*function for dynamic title */
	$('.docs-title-input').keyup(function() {
	    var value = $( this ).val();
	    $(document).prop('title', value);
	  });
	
	/* Function for adding slides as thumbnails on left side of page */
		
		$var = $('.right-container').find('#slide1').parent().clone().css('zoom','0.2');
		$('.thumbnails').append($var);
		$('.thumbnails input').prop('disabled',true);
	
		var i = 0;
		for(i=1; i<$('#slide-number').val; i++){
			$var = $('.right-container').find('#slide'+$i).parent().clone().css('zoom','0.2');
			$('.thumbnails').append($var);
			$('.thumbnails input').prop('disabled',true);
		}
		
		$('.thumbnails .slide .slide-cover').click(function(){
			 $s = '#slide';
			 $id = $(this).attr('id').substring(5,6);
    		 $('.right-container').find('.slide .selected').removeClass('selected');
    		 $('.right-container ' + $s + $id).addClass('selected');
    		 $('.thumbnails').find('.slide .selected').removeClass('selected');
    		 $('.thumbnails ' + $s + $id).addClass('selected');
		});
		
		$('.thumbnails .slide .slide-content').click(function(){
			 $s = '#slide';
			 $id = $(this).attr('id').substring(5,6);
			 $('.right-container').find('.slide .selected').removeClass('selected');
			 $('.right-container ' + $s + $id).addClass('selected');
			 $('.thumbnails').find('.slide .selected').removeClass('selected');
			 $('.thumbnails ' + $s + $id).addClass('selected');
		});
			
	/* Function for changing font-family of any text */
		$('#select-font').change(function() {
			$('.slide input').css("font-family", $(this).val());
		});
		
	/* Function for changing font-size of any text */	
		$('#select-size').change(function() {
			$('.title').css("font-size", $(this).val() + "px");
		});
		
	/* Function for changing text-alignment of any text */
		$('#left-align').click(function() {
			$('#text-align').val('left');
			$('.slide .title').css('text-align','left');
		});
		
		$('#right-align').click(function() {
			$('#text-align').val('right');
			$('.slide .title').css('text-align','right'); 
		});
		
		$('#center-align').click(function() {
			$('#text-align').val('center');
			$('.slide .title').css('text-align','center');
		});
		
		$('#justify-align').click(function() {
			$('#text-align').val('justify');
			$('.slide .title').css('text-align','justify');
		});
			
	/* Function for changing line-spacing of any text */
		$('#select-spacing').change(function(){
			$('.slide input').css('line-height',$(this).val());
		});
		
		/* function for deleting a slide */
		$('.fa.fa-close').click(function(){
			
			$(this).parent().slideUp();
			setTimeout(function(){
				$(this).parent().remove();
			},1000);
		});
		
	/* function for starring presentation */
		$('#favourite').click(function(){
			if(!$('.starred').hasClass('fa-star-o'))
			{
				$('.starred').addClass('fa-star-o');
				$('.starred').removeClass('fa-star');
				$('#is-favourite').val('no');
			}
			else
			{
				$('.starred').addClass('fa-star');
				$('.starred').removeClass('fa-star-o');
				$('#is-favourite').val('yes');
			}
		});
		
		/*function for displaying signout popup */
		$('.profile-button').click(function(){
			if(!$('.logout-popup').hasClass('display'))
			{
				$('.logout-popup').addClass('display');
			}
			
			else
			{
				if($('.logout-popup').hasClass('display')){
					$('.logout-popup').removeClass('display');
				}
			}
		});
	
		$(document.body).click(function(){
			$('.popup').removeClass('display');
		});
		
		$('.profile-button,.delete-button,.more-button').click( function(e) {
			e.stopPropagation(); 
		});
	
		
		
 });