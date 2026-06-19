(function () {
	function createPlaceholder(alt) {
		var div = document.createElement('div');
		div.className = 'no-image';
		div.textContent = 'no image';
		if (alt) {
			div.setAttribute('aria-label', alt);
		}
		return div;
	}

	function replaceWithPlaceholder(img) {
		if (!img.parentNode) {
			return null;
		}
		var placeholder = createPlaceholder(img.alt);
		img.parentNode.replaceChild(placeholder, img);
		return placeholder;
	}

	function initImageFallbacks() {
		document.querySelectorAll('.Image img').forEach(function (img) {
			function handleError() {
				replaceWithPlaceholder(img);
			}

			img.addEventListener('error', handleError);

			if (img.complete && img.naturalWidth === 0) {
				handleError();
			}
		});
	}

	if (document.readyState === 'loading') {
		document.addEventListener('DOMContentLoaded', initImageFallbacks);
	} else {
		initImageFallbacks();
	}
})();