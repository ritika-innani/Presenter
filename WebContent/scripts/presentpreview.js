
$(document).ready(function(){
/* Function for playing the presentation & escaping from preview mode */
		$('#play').click(function(){
			$('#presenter-view').html($('.right-container').html());
			$('#editor-view').slideUp();
			$('#presenter-view').slideDown();
			$('#presenter-view').css('height','768px');
			$('#presenter-view').css('width','1366px');
			$('.slide').css('height','100%');
			$('.slide-content').css('height','100%');
			$('.slide-cover').css('height','100%');
			//1366-667
			var elem = document.getElementById("presenter-view");
			  elem.webkitRequestFullscreen();
			
		});
		
		$('body').keyup(function(e){
		    //alert(e.keyCode);
			$s = '#slide';
            switch( e.keyCode ) {
            	case 27:
            		$('#editor-view').slideDown();
					$('#presenter-view').slideUp();
					$('.slide-content').css('height','500px');
					$('.slide-cover').css('height','500px');
					$('.slide').css('height','initial');
					break;
            	case 39:
            	case 40:
	            	 $id = $('.right-container').find('.slide .selected').attr('id').substring(5,6);
	            	 $id = Number($id)+1;
	            	 if($($s + $id).length != 0){
	            		 $('.right-container').find('.slide .selected').removeClass('selected');
	            		 $('.right-container ' + $s + $id).addClass('selected');
	            		 $('.thumbnails').find('.slide .selected').removeClass('selected');
	            		 $('.thumbnails ' + $s + $id).addClass('selected');
	            	 }
	            	 else{
	            		 $id = Number($id)-1;
	            	 }
	                 break;
              
            	case 37:
            	case 38:
            		 $id = $('.right-container').find('.slide .selected').attr('id').substring(5,6);
              	 	 $id = Number($id)-1;
              	 	if($($s + $id).length != 0){
	            		 $('.right-container').find('.slide .selected').removeClass('selected');
		          		 $('.right-container ' + $s + $id).addClass('selected');
		          		 $('.thumbnails').find('.slide .selected').removeClass('selected');
	            		 $('.thumbnails ' + $s + $id).addClass('selected');
	            	 }
	            	 else{
	            		$id =  Number($id)+1;
	            	 }
            		 break;
               
            }
         });
});