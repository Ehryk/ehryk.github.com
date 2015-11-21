$(document).ready(function(){
	//$('a.gallery').colorbox({rel:'gal',maxwidth:"90%",maxHeight:"90%"});
	$("a.gallery").colorbox({rel: 'gal', maxwidth:"90%",maxHeight:"90%",
		title: function(){
			var t = $(this).attr('title');
			var url = $(this).attr('href');
			return t+' &nbsp;&nbsp;&nbsp;<a href="' + url + '" target="_blank">Show Full Size Image</a>';
		}
	});
});
