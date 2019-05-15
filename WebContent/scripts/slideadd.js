
    function slideAdd(){
    	  
	  	$slideno = $('#slide-number').val();
	  	
		$contentPageHTML = '<div class="slide"><div class="slide-content" id="slide' + 
		$slideno +'"><input class="title" type="text" placeholder="Add Title" name="sinput' + 
		$slideno + '1" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text" name="sinput' + 
		$slideno + '2" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text" name="sinput' + 
		$slideno + '3" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text" name="sinput' + 
		$slideno + '4" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text" name="sinput' + 
		$slideno + '5" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text"name="sinput' + 
		$slideno + '6" /><br /><span class="fa fa-circle"></span><input class="text" type="text" placeholder="Add Text" name="sinput' + 
		$slideno + '7" /><footer class="footer"><input class="footer-text" type="text" placeholder="Project Title" name="sinput' + 
		$slideno + '8" /></footer><span id="delSlide' + $slideno + '" class="fa fa-close"></span></div></div>';
		$('.right-container').append($contentPageHTML);
		
		$s = '#slide';
		$('.right-container').find('.slide .selected').removeClass('selected');
		$('.right-container ' + $s + $slideno).addClass('selected');
			
		$var = $('.right-container').find($s + $slideno).parent().clone().css('zoom','0.2');
		$('.thumbnails').append($var);
		$('.thumbnails').find('.slide .selected').removeClass('selected');
		$('.thumbnails ' + $s + $slideno).addClass('selected');
		$('.thumbnails input').prop('disabled',true); 
		
		$slideno++;
		$('#slide-number').val($slideno);
    }
      
      
     