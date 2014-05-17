jQuery(function($) {
	// panelSnap plugin initiation
    $('body').panelSnap({
    	$menu: $('.menu'),
    	slideSpeed: 500,
    	keyboardNavigation: {
    		enable:true
    	}
    });

    //vertical center
    $('.index-name').css({
        'top': '50%',
        'margin-top': -$('.index-name').height()/2
    });

});


//scroll effects
$(window).scroll(function() {
// fade in point of new nav at second page

	if ($(window).scrollTop() > $(window).height()/1.2 ){
		//vertical nav
 		$('.menu').stop().animate({
   			opacity : 0.8
   		}, 50 );

   		//horizontal nav
   		$('.menu-h').stop().animate({
   			opacity : 0
   		}, 50 );

  	} else {
  		//vertical nav
		$('.menu').stop().animate({
   			opacity : 0
   		}, 30 );

   		//horizontal nav
   		$('.menu-h').stop().animate({
   			opacity : 1
   		}, 50 );	
 	};   	
});
