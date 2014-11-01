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