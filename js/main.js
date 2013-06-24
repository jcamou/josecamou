$(document).ready(function() {
  	var $menu = $('.site-nav'),
    		$menulink = $('.pullout-nav'),
    			$content = $('.content');

	$menulink.click(function() {
	  	$menulink.toggleClass('expanded');
	  	$menu.toggleClass('expanded');
	  	$content.toggleClass('expanded');
	  	return false;
	});

	wt.fix({
		elements: '.content h1, .content p',
		chars: 5,
		method: 'nbsp',
		event:'resize'
	});
});
