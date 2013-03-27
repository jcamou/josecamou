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
});
