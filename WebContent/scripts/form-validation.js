$(document).ready(function () {
	 
	    $('#myform').validate({ // initialize the plugin
        rules: {
            fname: {
                required: true,
                lettersonly: true
            },
            
            lname: {
                required: true,
                lettersonly: true
            },
            
            email:{
            	required: true,
            	email: true
            },
            
            uname:{
            	required : true
            },
            
            pass:{
            	required: true,
            	minlength: 8
            }
        },
        messages: {
        	fname: {
        		required: "Please enter your Firstname",
        		lettersonly: "please enter a valid Firstname"
        	},
        	lname: {
        		required:"Please enter your Lastname",
        		lettersonly: "please enter a valid Lastname"
        	},
        	uname: {
        		required:"Please enter your Username"
        	},
        	pass: {
        		required: "Please provide a Password",
        		minlength: "Your password must be at least 8 characters long"
        	},
        	email: {
        		required:"please provide your Email address",
        		email:"Please provide a valid Email address"
        	}
        },
        submitHandler: function(form) {
            form.submit();
          }
    	});

	
/* $('.submit').click(function(){   
    function validateForm(){
    	 $('.error').hide();

	    if( !validateEmail(email)){
	    	$('#email').after('<span class="error"> Please enter a valid email address</span>');
	    	}
	    if( !isEmail(email)){
	    	$('#email').after('<span class="error"> Please enter a valid email address</span>');
	    	}
	    function validateEmail(email) {
	  	  	var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	  	  	return emailReg.test(email );
	    }
	    function isEmail(email) {
	    	  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	    	  return regex.test(email);
	    }
    }
}); */	
});