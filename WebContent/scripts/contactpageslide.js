
$(document).ready(function(){
/* function for contact page slideup */
		
		$(".arrow").click(function (){
            $('html, body').animate({
                scrollTop: $(".second").offset().top
            } , 500);
        });
});