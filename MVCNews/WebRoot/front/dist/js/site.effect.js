$(document).ready(function(){
	(function(){
		/*--back-to-top--*/
		$("#backToTop").hide();
		$(document).scroll(function(){
			if($(this).scrollTop()>600){
				$("#backToTop").fadeIn();
			}else{$("#backToTop").fadeOut();}
		});
		$("#backToTop").click(function(){
			$('body,html').animate({scrollTop:0},500);
	        return false;
	    });
	})();	
});