$(document).ready(function() {
	$.adaptiveBackground.run();

	$("#gallery").stalactite({
		duration: 5000,                        // Duration of animation.
		easing: 'swing',                      // Easing method.
		cssPrefix: '.stalactite',             // The css naming convention.
		cssPrep: true,                        // Should stalactite structurally modify css of children?
		fluid: true,                          // Should stalactite recalculate on window resize?
		loader: '<img />',                    // The contents of the loader. Defaults to a dataURL animated gif.
		styles: {}                            // A style object to place on the child elements
		complete: function(v) { return v; }  // Callback function
});

  	/*if ($(window).width() > 991) {
  		$('.intro-side').hover(
  			function(e) {
  				$('.intro-desc').fadeIn('fast');
  			},
  			function(e) {
  				$('.intro-desc').fadeOut('fast');
  			}
  		);
}*/
});

//scroll effects
//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
	if ($(".navbar").offset().top > $(window).height()) {
		$(".navbar-fixed-top").addClass("top-nav-collapse");
	} else {
		$(".navbar-fixed-top").removeClass("top-nav-collapse");
	}

	if ($(".navbar").offset().top > $(window).height()-20) {
		$(".navbar-fixed-top").removeClass("hidden");
	} else {
		$(".navbar-fixed-top").addClass("hidden");
	}

    // fade in point of new nav at second page

  /*if ($(window).scrollTop() > $(window).height()/1.2 ){
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
};   */ 
});


