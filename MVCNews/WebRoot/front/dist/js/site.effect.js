$(document).ready(function(){
	(function(){
		/*--back-to-top--*/
		$("#backToTop").hide();
		$(document).scroll(function(){
			if($(this).scrollTop()>300){
				$("#backToTop").fadeIn();
			}else{$("#backToTop").fadeOut();}
		});
		$("#backToTop").click(function(){
			$('body,html').animate({scrollTop:0},500);
	        return false;
	    });
	})();
	(function(){
		if(document.body.scrollHeight < window.screen.availHeight){
			$("footer").css("position","fixed");
			$("footer").css("bottom","0");
		}
	})();
	(function(){
		/*=====nav=====
		 *==========*/
		var $dropdpwn=$('.dropdown'),
			$dropdown_toggle=$(".dropdown > a"),
			$dropdown_menu=$(".dropdown > ul");
		$dropdpwn.on({
			mouseenter:function(){
				console.log('enter');		
				var $menu=$(this).find(".dropdown-menu[data-toggle='toggle_ul']");
				//$menu.toggle( "blind" );
				$menu.show();
			},
			mouseleave:function(){
				var $menu=$(this).find(".dropdown-menu[data-toggle='toggle_ul']");
				//$menu.toggle( "blind" );
				$menu.hide();
			}
		});
	})();
});

/**
 * This file stores some frequently used methods which are relevant to
 * the ui effect.
 */

function fullscreenHeight(selector) {
	var sH = $(window).height();
	$("" + selector).css('height', sH + 'px');
}

function fullscreenWidth(selector) {
	var sH = $(window).width();
	$("" + selector).css('width', sH + 'px');
}

/**
 * 
 * @param selector
 */
function focusTo(selector) {
	$("" + selector)[0].focus();
}