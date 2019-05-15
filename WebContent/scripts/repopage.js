$(document).ready(function(){
	
	/*function for title */
		    var value = $('.user-name').text();
		    $(document).prop('title', value);
		 
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
	
	/* function for sidebar toggle */	
		$('.nav-item').click(function(){
			$('.nav-buttons').find('.nav-item.active').removeClass('active');
			$(this).addClass('active');
			var selection = $(this).attr('id');
			
				switch(selection) {
					case 'user-created' : 
						if( ($('.presentations-container').find('.user-presentations')).length != 0){
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.user-presentations').addClass('display');
						}
						break;
						
					case 'shared' : 
						if( ($('.presentations-container').find('.shared-presentations')).length != 0 ){
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.shared-presentations').addClass('display');
						}else{
							var maindiv = document.createElement('div');
							maindiv.className = 'shared-presentations presentations-wrapper';
							$('.presentations-container').append(maindiv);
							
							var div1 = document.createElement('div');
							div1.className = 'no-item-display-wrapper';
							maindiv.appendChild(div1);
							
							var div2 = document.createElement('div');
							div2.className = 'no-item-display';
							div1.appendChild(div2);
							$('.shared-presentations .no-item-display').append('<span class="material-icons">people</span>');
							$('.shared-presentations .no-item-display').append('<h3>Nothing in Shared</h3>');
							$('.shared-presentations .no-item-display').append('<p>Shared presentations will show up here</p>');
							
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.shared-presentations').addClass('display');
						}
						break;
					
					case 'starred' :
						if( ($('.presentations-container').find('.starred-presentations')).length != 0 ){
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.starred-presentations').addClass('display');
						}else{
							var maindiv = document.createElement('div');
							maindiv.className = 'starred-presentations presentations-wrapper';
							$('.presentations-container').append(maindiv);
							
							var div1 = document.createElement('div');
							div1.className = 'no-item-display-wrapper';
							maindiv.appendChild(div1);
							
							var div2 = document.createElement('div');
							div2.className = 'no-item-display';
							div1.appendChild(div2);
							$('.starred-presentations .no-item-display').append('<span class="material-icons">star</span>');
							$('.starred-presentations .no-item-display').append('<h3>Nothing in Favourites</h3>');
							$('.starred-presentations .no-item-display').append('<p>Favourited presentations will show up here</p>');
							
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.starred-presentations').addClass('display');
						}
						break;
					
					case 'draft' :
						if( ($('.presentations-container').find('.draft-presentations')).length != 0 ){
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.draft-presentations').addClass('display');
						}else{
							var maindiv = document.createElement('div');
							maindiv.className = 'draft-presentations presentations-wrapper';
							$('.presentations-container').append(maindiv);
							
							var div1 = document.createElement('div');
							div1.className = 'no-item-display-wrapper';
							maindiv.appendChild(div1);
							
							var div2 = document.createElement('div');
							div2.className = 'no-item-display';
							div1.appendChild(div2);
							$('.draft-presentations .no-item-display').append('<span class="material-icons">drafts</span>');
							$('.draft-presentations .no-item-display').append('<h3>Nothing in Drafts</h3>');
							$('.draft-presentations .no-item-display').append('<p>Drafts will show up here</p>');
							
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.draft-presentations').addClass('display');
						}
						break;
					
					case 'deleted' :
						if( ($('.presentations-container').find('.deleted-presentations')).length != 0 ){
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.deleted-presentations').addClass('display');
						}else{
							var maindiv = document.createElement('div');
							maindiv.className = 'deleted-presentations presentations-wrapper';
							$('.presentations-container').append(maindiv);
							
							var div1 = document.createElement('div');
							div1.className = 'no-item-display-wrapper';
							maindiv.appendChild(div1);
							
							var div2 = document.createElement('div');
							div2.className = 'no-item-display';
							div1.appendChild(div2);
							$('.deleted-presentations .no-item-display').append('<span class="material-icons">delete</span>');
							$('.deleted-presentations .no-item-display').append('<h3>Nothing in Trash</h3>');
							$('.deleted-presentations .no-item-display').append('<p>Deleted presentations will show up here</p>');
							
							$('.presentations-container').find('.presentations-wrapper.display').removeClass('display');
							$('.deleted-presentations').addClass('display');
						}
						break;
					default:
						break;
				}
		});
	
		/* function for displaying delete popup */
		$('.delete-button').click(function(){
			if(!$(this).find('.delete-popup').hasClass('display'))
			{
				$(this).find('.delete-popup').addClass('display');
			}
			
			else
			{
				if($(this).find('.delete-popup').hasClass('display')){
					$(this).find('.delete-popup').removeClass('display');
				}
			}
		});
	
	/* function for displaying more popup */
		$('.more-button').click(function(){
			if(!$(this).find('.more-popup').hasClass('display'))
			{
				$(this).find('.more-popup').addClass('display');
			}
			
			else
			{
				if($(this).find('.more-popup').hasClass('display')){
					$(this).find('.more-popup').removeClass('display');
				}
			}
		});
});